# Sobel Edge Detection

Sobel edge detection written in Swift

## Usage

The edges of the image will be output as white pixel.

```Swift
override func viewDidLoad() {
    super.viewDidLoad()

    let image = UIImage(contentsOfFile: Bundle.main.path(forResource: "jobs", ofType: "png")!)

    let imageView = UIImageView(frame: view.bounds)

    let edgedImage = Sobel.sobelEdgeDetection(image: image!)

    let points = Sobel.pointArray(highlightedEdgesImage: edgedImage!)

    imageView.image = edgedImage

    imageView.contentMode = .scaleAspectFit

    view.addSubview(imageView)
}

```
