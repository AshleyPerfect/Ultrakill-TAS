---@meta

--#region concurrent

---Contains functions used to register / unregister a concurrent function
---@class (exact) concurrent
---@field register function
---@field register_once function
---@field unregister function
concurrent = {}

---@alias register_uid register_uid

---Registers a function to run along with the main script <br/>
---This will also run the function for the current frame if `post_update` is `false`
---@param func function The function to run
---@param post_update? boolean default: false. true would make the function run after frame advancing, false to make it run before frame advancing
---@param ...? any Default arguments to pass to the function.<ul><li>You don't have to put anything if your function needs nothing.</li><li>If you don't match the number of arguments as same as the function signature, it will throw an exception usually</li></ul>
---@return register_uid register_uid identifier for that registered concurrent function
function concurrent.register(func, post_update, ...) end

---Registers a function to run along with the main script, but will only run once
---This will also run the function for the current frame if `post_update` is `false`
---@param func function The function to run
---@param post_update? boolean default: false. true would make the function run after frame advancing, false to make it run before frame advancing
---@param ...? any Default arguments to pass to the function.<ul><li>You don't have to put anything if your function needs nothing.</li><li>If you don't match the number of arguments as same as the function signature, it will throw an exception usually</li></ul>
---@return register_uid register_uid identifier for that registered concurrent function
function concurrent.register_once(func, post_update, ...) end

---Unregisters a concurrently running function
---@param register_uid register_uid
function concurrent.unregister(register_uid) end

--#endregion

--#region key

---Used for manipulating the keyboard
---@class (exact) key
---@field hold function
---@field release function
---@field clear function
key = {}

---Holds a key down
---@param key string The key to hold down.<ul><li>The names are values from [here](https://docs.unity3d.com/ScriptReference/KeyCode.html) or [here](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.8/api/UnityEngine.InputSystem.Key.html?q=Key) or [here](https://docs.unity3d.com/6000.0/Documentation/Manual/class-InputManager.html)</li><li>Guessing what the key is called usually works</li></ul>
function key.hold(key) end

---Releases a key
---@param key string The key to release.<ul><li>The names are values from [here](https://docs.unity3d.com/ScriptReference/KeyCode.html) or [here](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.8/api/UnityEngine.InputSystem.Key.html?q=Key) or [here](https://docs.unity3d.com/6000.0/Documentation/Manual/class-InputManager.html)</li><li>Guessing what the key is called usually works</li></ul>
function key.release(key) end

---Clears all keys that are currently held down
function key.clear() end

--#endregion

--#region mouse

---Used for manipulating the mouse
---@class (exact) mouse
---@field left function
---@field right function
---@field move function
---@field move_rel function
---@field set_scroll function
mouse = {}

---Holds the left mouse button
---@param hold boolean default: `true` <br> `true` to hold left click, `false` to release
function mouse.left(hold) end

---Holds the right mouse button
---@param hold boolean default: `true` <br> `true` to hold right click, `false` to release
function mouse.right(hold) end


---Moves the mouse to a position
---@param x number The x position to move to
---@param y number The y position to move to
function mouse.move(x, y) end

---Moves the mouse to a position relative to the current position
---@param x number The x offset to move to
---@param y number The y offset to move to
function move_rel(x, y) end

---Sets the scroll speed
---@param x number The x scroll speed
---@param y number The y scroll speed
function mouse.set_scroll(x, y) end

--#endregion

--#region controller
--#endregion

--#region env

---@class (exact) env 
---@field fps number
---@field frametime number
env = {}

--#endregion

--#region movie

---@class (exact) movie
movie = {}
function movie.playback_speed() end

--#endregion

--#region unity
--#endregion
