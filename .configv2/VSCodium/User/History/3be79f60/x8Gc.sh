#!/usr/bin/env bash
set -e

WORKSPACE="/tmp/waywallen_matugen"
mkdir -p "$WORKSPACE"
rm -f "$WORKSPACE/raw.mp4" "$WORKSPACE/render_output.gif"

echo "🔍 Визначаємо активний монітор у Niri..."

# Отримуємо ім'я та роздільну здатність поточного активного монітора через niri
# Це дозволить уникнути помилок із геометрією 0x0 або 1x1
MONITOR=$(niri msg -j outputs | jq -r 'to_entries[] | select(.value.is_focused == true) | .key' | head -n 1)

if [ -z "$MONITOR" ] || [ "$MONITOR" = "null" ]; then
    echo "⚠️ Не вдалося знайти фокусований монітор через niri msg, беремо перший доступний..."
    MONITOR=$(niri msg -j outputs | jq -r 'keys[0]')
fi

echo "🖥️ Обрано монітор для захоплення: $MONITOR"

echo "🎨 Записуємо рендер-цикл Waywallen на моніторі $MONITOR..."

# Записуємо відео саме з цього виходу монітора
wf-recorder -y -o "$MONITOR" -f "$WORKSPACE/raw.mp4" &
REC_PID=$!

# Залишаємо запис на 1.2 секунди
sleep 1.2

# Безпечно завершуємо процес wf-recorder за допомогою SIGINT (щоб зберегти mp4 контейнер)
if kill -0 $REC_PID 2>/dev/null; then
    kill -SIGINT $REC_PID
    wait $REC_PID 2>/dev/null
fi

echo "🎬 Конвертуємо захоплений фрагмент в оптимізований GIF..."
ffmpeg -y -i "$WORKSPACE/raw.mp4" \
  -vf "fps=12,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
  "$WORKSPACE/render_output.gif"

echo "⚙️ Передаємо згенерований GIF у Matugen..."

# Додаємо автоматичний вибір схеми (наприклад, dark), щоб Matugen не зупиняв скрипт термінальним меню
# Якщо у вашій версії matugen інший синтаксис автоматизації, використовуйте його замість `--no-menu`
if matugen image "$WORKSPACE/render_output.gif" --no-menu 2>/dev/null; then
    echo "✨ Палітру успішно оновлено!"
else
    # Альтернативний синтаксис для нових версій Matugen
    matugen image "$WORKSPACE/render_output.gif"
fi

# Очищення робочої директорії
rm -rf "$WORKSPACE"
