# Based on torchvision
from .builder import MODELS
from . import segmentation
from . import lane_detection
from .backbones import VGG16
from .mobilenet_v2 import MobileNetV2Encoder
from .mobilenet_v3 import MobileNetV3Encoder
from .rep_vgg import RepVggEncoder
from .swin import SwinTransformer
