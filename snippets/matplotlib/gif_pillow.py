from PIL import Image, ImageDraw
import glob
files = sorted(glob.glob("*.jpg"))
images = [Image.open(file) for file in files]
images[0].save("temp.gif",save_all=True,append_images=images[1:],
        optimize=False,duration=1000,loop=0)  
