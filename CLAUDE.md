# Instructions for Claude Sonnet / Opus

You are the animation engineer and director for *The Myth of Sisyphus*. The user has approved Phase A and Phase B. Your job is to refine and run the supplied **real Python code**, not to generate a new storyboard or silently change the approved script.

1. Read `docs/CONTINUITY.md` and `docs/APPROVED_PHASE_B.md` before making changes.
2. Keep **exactly six 10-second scenes**, in order, 16:9, 720p, 24 fps final.
3. Preserve the exact quoted narration, including contractions and the final “Could you?” No invented dialogue, subtitles, visible text, logos or watermarks.
4. Maintain Style 5: 2D cel-shaded Historical Cartoon; white-filled round heads, simple oval eyes, expressive eyebrows and mouths, no noses, thin black stick limbs, exactly two arms and two legs, thick black outlines, painterly Greek landscapes.
5. Sisyphus: dark curly hair, pointed beard, faded burgundy chiton, brown rope belt, leather sandals, bronze wrist cuff. Zeus: long white beard, golden laurel, ivory robe, purple mantle, bronze armbands and sandals. One charcoal boulder with one pale diagonal crack.
6. Keep a single male off-screen narrator throughout. `espeak` is a placeholder; if improving voice, keep audio generation optional, do not require an API key by default and do not claim a natural voice is included.
7. Music: lyre, low strings, restrained frame drums, airy flute, voice-first mix. Improve music if practical, but no copyright-dependent assets.
8. Do not use Higgsfield or paid APIs without the user's explicit approval.
9. Prefer incremental code edits with a smoke test (`python src/render.py --seconds 2 --fps 12 --output output/test.mp4`) before full render (`python src/render.py --fps 24 --output output/sisyphus.mp4`).
10. Audit geometry, character continuity, audio duration, and output with ffprobe. Do not claim perfection if the renderer is simplified.

## Suggested engineering improvements

- Separate assets, characters, scenes, audio and encoding into modules.
- Replace hard cuts with deliberate scene-specific cinematic transitions while maintaining exactly 60 seconds.
- Refine boulder contact and physics, walking cycles, body silhouettes, Zeus's entrance, expressive reactions, camera movement and composition.
- Make the narration timing fit naturally within each ten-second clip without changing words; expose optional WAV voiceover inputs.
- Add configurable color palette, unit tests, reproducible seeds, and storyboard frame export.
- Produce both one 60-second master and optional six 10-second individual clips.
