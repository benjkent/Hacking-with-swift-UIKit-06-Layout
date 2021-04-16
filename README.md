#  Layout
* IOS 14 app for Iphone and Ipad
* Xcode 12.4
* UIKit with storyboards, but shows code first layouts
## Purpose
This project was built to show two methods of building a UI. One easy and one not so easy.
Additionally, this project uses a different viewContoller for each list item. Allowing for the layouts to be unique rather than recycled. 
## Prompt
Show two methods for building a quick layout 
## Code overview
* UITableViewController, two unique layouts for viewControllers
* Explore and expand VFL (visual format language)
* Explore AutoLayoutAnchors to simplify the same layout 
*
## Credit
[Hackingwthswift project 6](https://hackingwithswift.com/100/30)

## Swift topics
* VFL visual format language
* Auto Layout Constraints
* Creating and assigning metrics dictionaries to VFL
* Priority values 
* Layout rules: Anchors - width, height, top, left, right, leading, trailing, centerX, and centerY.
## Challenges
* Replace the widthAnchor with **leadingAnchor** and **trailingAnchor** constraints.
* **Note:** these constraints explicitly pin the label to the edges of its parent.
* Use **safeAreaLayoutGuide** for the constraints instead. These will stop the labels from going under the safe area in landscape.
* Adjust the height of labels equal to 1/5th of the main view, minus 10 for the spacing.
## Solution preview:
| viewController | detailViewController | detail2ViewController | 
| :--------------:  | :---------------------:  | :---------------------:  |
| table of layouts | visual format language | vfl landscape view |
| <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/layoutsTableView.png" > | <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/vflportrait.png" > | <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/vfllandscape.png" > | 
| AutoLayoutTableVC | widthAnchorVC | widthAnchorVC (landscape) |
| List of techniques | WidthAnchors are fine in portait | WidthAnchors go under safe area in landscape |
| <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/constraintsTable.png" > | <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/widthAnchor.png" > | <img src="https://github.com/benjkent/Hacking-with-swift-UIKit-06-Layout/blob/main/Screenshots/widthAnchorLandscape.png" > |
| AutoLayoutTableVC | LeadTrailAnchorVC | LeadTrailAnchorVC (landscape) |
| List of techniques | Leading & trailing anchors | Leading & trailing (landscape) |
| <img src="" > | <img src="" > | <img src=" " > | 
| AutoLayoutVC | SALGuideVC | SALGuideVC (landscape) |
| List of techniques | safeAreaLayoutGuides | safeAreaLayoutGuides (landscape) |
| <img src=" "> | <img src=" " > | <img src=" " > | 


