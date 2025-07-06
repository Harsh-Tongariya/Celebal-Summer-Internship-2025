#!/bin/bash
echo "Public LB Test:"
curl http://<public-ip>
echo "Internal LB Test:"
curl http://<internal-ip>
