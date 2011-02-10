// Copyright: Hiroshi Ichikawa <http://gimite.net/en/>
// License: New BSD License
// Reference: http://dev.w3.org/html5/websockets/
// Reference: http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-76

package {

import flash.system.*;

public class WebSocketMainInsecureNoTLS extends WebSocketMainNoTLS {

  public function WebSocketMainInsecureNoTLS() {
    Security.allowDomain("*");
    super();
  }
  
}

}
