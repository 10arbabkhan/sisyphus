# The Myth of Sisyphus — Claude Sonnet / Opus animation project

A complete **runnable Python-based 60-second 2D historical-cartoon animation**, built from the approved six-scene storyboard. It uses procedural vector-like drawing (Pillow), NumPy/SciPy synthesized soundtrack, eSpeak narration, and FFmpeg for H.264/AAC output. No Higgsfield subscription, API keys, or Claude API billing are required to render locally.

## What is included

- `src/render.py` — six 10-second scenes, Sisyphus/Zeus/boulder art, motion, transitions, soundtrack, narrator, MP4 encoder.
- `docs/APPROVED_PHASE_B.md` — full original six Gemini Omni Flash prompts for artistic and narrative reference.
- `docs/CONTINUITY.md` — locked script, visual/audio specifications, known limitations, acceptance checks.
- `CLAUDE.md` — project-specific instructions for Claude Code / Claude Sonnet / Claude Opus.
- `requirements.txt` — Python dependencies.
- `run_windows.bat` and `run_mac_linux.sh` — convenience launchers.

## Setup (Windows)

Install Python 3.10+, [FFmpeg](https://ffmpeg.org/download.html), and [eSpeak NG](https://github.com/espeak-ng/espeak-ng/releases) (or `espeak`). Make sure `python`, `ffmpeg`, and `espeak` are available in a fresh terminal. On Windows, `espeak-ng` may need to be added to PATH or aliased as `espeak`.

```powershell
cd sisyphus_claude_project
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
python src/render.py --seconds 2 --fps 12 --output output/test.mp4
python src/render.py --fps 24 --output output/sisyphus.mp4
```

If only `espeak-ng` is installed, edit `src/render.py` and replace the subprocess command's `'espeak'` executable with `'espeak-ng'`.

## Setup (macOS / Linux)

Install Python 3.10+, FFmpeg and eSpeak/eSpeak NG using your package manager. Then:

```bash
cd sisyphus_claude_project
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python src/render.py --seconds 2 --fps 12 --output output/test.mp4
python src/render.py --fps 24 --output output/sisyphus.mp4
```

## Output

`output/sisyphus.mp4` — **60 seconds, 1280×720, 16:9, 24 fps**, H.264 video and AAC audio. Source drawings are made at 960×540 then upscaled with FFmpeg. Use `--fps 12` for faster draft rendering.

## Work with Claude Sonnet or Opus

Open this folder in Claude Code (or upload the ZIP to Claude), and ask:

> Read CLAUDE.md, README.md, docs/CONTINUITY.md, and docs/APPROVED_PHASE_B.md. Improve the existing Python animation into a polished Style 5 Historical Cartoon while preserving every word of the approved narration and six 10-second scenes. First audit and propose changes; then implement and run a 2-second smoke test, followed by a full 60-second render. Keep the render offline and avoid paid services unless I explicitly approve.

For best results, ask Claude to work one scene at a time, review a preview, then render all six.

## Limitations

This is **procedural 2D animation**, not native AI-generated cinematic footage. Character anatomy, poses, painted backgrounds and effects are intentionally simple; Claude can substantially refine the Python artwork. eSpeak is a **placeholder** narrator and will not match the desired warm studio baritone without replacing the TTS audio. The score is algorithmically synthesized, not a recorded orchestral performance. The renderer aims for the approved narration and shot order, but individual voice lines may be sped up to fit 10 seconds. Do not imply these are Gemini or Higgsfield-generated clips.
