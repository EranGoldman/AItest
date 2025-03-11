git clone https://github.com/s0md3v/roop.git
cd roop
pip install -r requirements.txt

wget https://huggingface.co/ezioruan/inswapper_128.onnx/resolve/main/inswapper_128.onnx -O inswapper_128.onnx
mkdir models
mv inswapper_128.onnx ./models

python run.py --target /content/video.mp4 --output-video-quality 80 --source /content/image.jpeg -o /content/swapped.mp4 --execution-provider cuda --frame-processor face_swapper face_enhancer
