# Unity Production Checklist

- Scene loading/unloading ownership is clear.
- Prefabs do not depend on fragile scene searches.
- Runtime data is separated from configuration where appropriate.
- ScriptableObjects used intentionally, not as global mutable state by default.
- Update/LateUpdate/FixedUpdate work is budgeted.
- Avoid per-frame allocations in hot paths.
- Pool frequently spawned objects when profiling justifies it.
- Addressables/asset strategy understood if used.
- Save format versioned.
- Mobile pause/background/resume tested.
- Resolution/safe-area/orientation tested.
- Input system behavior tested on target platforms.
- GC spikes/profile data reviewed.
- Builds tested outside Editor.
- Editor-only APIs isolated.
- Serialized field renames/migrations handled safely.
