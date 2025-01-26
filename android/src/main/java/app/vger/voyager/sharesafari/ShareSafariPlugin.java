package app.vger.voyager.sharesafari;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ShareSafari")
public class ShareSafariPlugin extends Plugin {
    @PluginMethod
    public void share(PluginCall call) {
        call.unimplemented("Not implemented on Android");
    }
}
