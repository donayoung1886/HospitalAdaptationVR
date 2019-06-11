import operator
from PIL import Image
from PIL import ImageDraw
import sys

weight = sys.argv[1]
i = sys.argv[2]

weight = float(weight)
newi = int(i) + 1
# img1_name = "img" + str(i+1) + ".jpg"
# img2_name = "img" + str(i+2) + ".jpg"
img1_name = "img" + str(newi) + ".jpg"
img2_name = "img" + str(newi+1) + ".jpg"

img1 = Image.open(img1_name)
img2 = Image.open(img2_name)

# img1 = Image.open("img1.jpg")
# img2 = Image.open("img2.jpg")

result = Image.blend( img1, img2, alpha= weight )

result.save("test.jpg")