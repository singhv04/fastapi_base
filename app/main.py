from typing import Union

from fastapi import FastAPI


import os
import ast
import time
import copy
import math
import json

import cv2
import numpy as np
import histomicstk as htk


app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "Nference"}


@app.get("/slides/{slide_id}")
def read_item(slide_id: int, q: Union[str, None] = None):
    return {"slide_id": slide_id, "q": q}
