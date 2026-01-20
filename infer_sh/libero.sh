#!/bin/bash

# 设置PYTHONPATH
export PYTHONPATH="$PYTHONPATH:$PWD/third_party/libero"

# 运行libero_object任务
MUJOCO_GL=glx xvfb-run -a -s "-screen 0 1920x1080x24" python examples/libero/main.py --args.task-suite-name libero_object --args.port 10011

# 运行libero_goal任务（建议更换端口）
MUJOCO_GL=glx xvfb-run -a -s "-screen 0 1920x1080x24" python examples/libero/main.py --args.task-suite-name libero_goal --args.port 10011