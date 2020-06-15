# responsive_size_util

**A flutter plugin for adapting screen and font size.**

### Property

| Property         | Type | Default Value | Description                                                                              |
| :--------------- | :--- | :------------ | :--------------------------------------------------------------------------------------- |
| width            | int  | 1080px        | The width of the device in the design draft, in px                                       |
| height           | int  | 1920px        | The height of the device in the design draft, in px                                      |
| allowFontScaling | bool | false         | Sets whether the font size is scaled according to the system's "font size" assist option |

### Initialize and set the fit size and font size to scale according to the system's "font size" accessibility option

Please set the width and height of the design draft before use, the width and height of the design draft (unit px).
Be sure to set the page in the MaterialApp's home(ie the entry file, just set it once) to ensure that the fit size is set before each use:

```

//fill in the screen size of the device in the design

//default value : width : 1080px , height:1920px , allowFontScaling:false
ResponsiveSizeUtil.instance = ResponsiveSizeUtil()..init(context);

//If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
ResponsiveSizeUtil.instance = ResponsiveSizeUtil(width: 750, height: 1334)..init(context);

//If you wang to set the font size is scaled according to the system's "font size" assist option
ResponsiveSizeUtil.instance = ResponsiveSizeUtil(width: 750, height: 1334, allowFontScaling: true)..init(context);

```

### Use：

#### Adapt screen size：

Pass the px size of the design draft：

Adapted to screen width: ResponsiveSizeUtil().setWidth(540),

Adapted to screen height: ResponsiveSizeUtil().setHeight(200),

**Note**

Height is also adapted according to setWidth to ensure no deformation (when you want a square)

setHeight method is mainly adapted in height, you want to control the height and actuality of a screen on the UIUsed when the same is displayed.

```
//for example:
//rectangle
Container(
           width: ResponsiveSizeUtil().setWidth(375),
           height: ResponsiveSizeUtil().setHeight(200),
           ...
            ),

////If you want to display a square:
Container(
           width: ResponsiveSizeUtil().setWidth(300),
           height: ResponsiveSizeUtil().setWidth(300),
            ),

```

#### Adapter font:

```
      ResponsiveSizeUtil().setSp(28)         //Incoming font size，the unit is pixel, fonts will not scale to respect Text Size accessibility settings
      ResponsiveSizeUtil().setSp(28，true)  //Incoming font size，the unit is pixel，fonts will scale to respect Text Size accessibility settings

for example:
        Text(
             'My font size is 28px and will not change with the system.',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: ResponsiveSizeUtil().setSp(28, false)
                 )
             ),

```

#### Other related apis：

```
    ResponsiveSizeUtil.pixelRatio       //Device pixel density
    ResponsiveSizeUtil.screenWidth      //Device width
    ResponsiveSizeUtil.screenHeight     //Device height
    ResponsiveSizeUtil.bottomBarHeight  //Bottom safe zone distance, suitable for buttons with full screen
    ResponsiveSizeUtil.statusBarHeight  //Status bar height , Notch will be higher Unit px
    ResponsiveSizeUtil.textScaleFactory //System font scaling factor

    ResponsiveSizeUtil().scaleWidth //Ratio of actual width dp to design draft px
    ResponsiveSizeUtil().scaleHeight //Ratio of actual height dp to design draft px

```
