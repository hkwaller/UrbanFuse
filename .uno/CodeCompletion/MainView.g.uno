public partial class MainView: Fuse.App
{
    internal Fuse.iOS.StatusBarConfig statusBarConfig;
    static MainView()
    {
    }
    public MainView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.DockPanel();
        statusBarConfig = new Fuse.iOS.StatusBarConfig();
        var temp1 = new Fuse.Controls.BottomBarBackground();
        this.Background = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
        temp.Children.Add(temp1);
        temp.Behaviors.Add(statusBarConfig);
        statusBarConfig.IsVisible = true;
        statusBarConfig.Style = Uno.Platform.iOS.StatusBarStyle.Light;
        global::Fuse.Controls.DockPanel.SetDock(temp1, Fuse.Layouts.Dock.Bottom);
        this.RootNode = temp;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
