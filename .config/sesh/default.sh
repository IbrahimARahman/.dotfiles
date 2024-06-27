#!/usr/bin/env bash
tmux send-keys 'vim .' C-m
tmux new-window
tmux select-window -t 1
