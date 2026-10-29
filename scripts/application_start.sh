#!/bin/bash
set -e

systemctl reload nginx
systemctl is-active --quiet nginx
