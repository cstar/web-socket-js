#!/bin/sh

# You need Flex 4 SDK:
# http://opensource.adobe.com/wiki/display/flexsdk/Download+Flex+4
BIN=/Users/cstar/Downloads/flex_sdk_4.1.0.16076_mpl/bin
$BIN/mxmlc -static-link-runtime-shared-libraries -output=../WebSocketMain.swf WebSocketMain.as &&
$BIN/mxmlc -static-link-runtime-shared-libraries -output=../WebSocketMainInsecure.swf WebSocketMainInsecure.as &&
$BIN/mxmlc -static-link-runtime-shared-libraries -output=../WebSocketMainInsecureNoTLS.swf WebSocketMainInsecureNoTLS.as &&
$BIN/mxmlc -static-link-runtime-shared-libraries -output=../WebSocketMainNoTLS.swf WebSocketMainNoTLS.as &&
cd .. &&
zip WebSocketMainInsecure.zip WebSocketMainInsecure.swf &&
rm WebSocketMainInsecure.swf
