# Pi-Kiosk

 <img src="https://user-images.githubusercontent.com/60224159/160303112-5e5850fc-52ba-4224-b845-575940b83a6b.png" width="90" height="90">  <img src="https://user-images.githubusercontent.com/60224159/160303372-8e0cc14f-5de0-4993-9f66-a018581e70ff.png" width="90" height="90"> 

Kiosk Script Enabler for Pi applications

## To enable : 

1) Download this package.
2) Edit the `Pi-Kiosk/autostart/autostart.sh` script to do what you want on starting up.
3) Copy the package to `/home/pi/`.
4) Start an lxterminal on the pi.
5) Execute the install script and reboot : 
```bash
sudo bash /home/pi/Pi-Kiosk/install/install.sh
reboot
```

## To disable : 
- Execute the uninstall script and reboot : 
```bash
sudo bash /home/pi/Pi-Kiosk/uninstall/uninstall.sh
reboot
```

## Example for a javaFx fullscreen (immersion mode) application :
```java
package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 * Fullscreen Jfx application with disabled window exit listener.
 * 
 * @author pavl_g.
 */
public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        primaryStage.setTitle("Hello World");
        primaryStage.setScene(new Scene(root));
        primaryStage.setFullScreen(true);
        primaryStage.setFullScreenExitHint("Welcome to the world !");
        primaryStage.setOnCloseRequest(event -> {
        });
        primaryStage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }
}
```

