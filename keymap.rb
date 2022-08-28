require "via"

kbd = Keyboard.new

kbd.via = true
kbd.via_layer_count = 2

# Physical matrix
#  ------------
# |       pico |
# | 2, 1, 4, 3 |
#  ------------
#
# is correspond to
#  -----
# | 1 3 |
# | 2 4 |
#  -----
# in scheme
kbd.init_pins(
    [18, 19], # rows
    [16, 17]  # cols
)

# --------------
# RAISE, A, B, C
# --------------
kbd.add_layer :default, %i(
    KC_A KC_C
    KC_LCTL KC_B 
)

kbd.define_mode_key :RAISE, [ nil, :raise, nil, nil ]

kbd.start!
