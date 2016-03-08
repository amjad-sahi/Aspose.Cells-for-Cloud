var path = require("path"),
    fs = require("fs"),
    StorageApi = require("asposestoragecloud"),
    CellsApi = require("asposecellscloud")

var APP_SID = "875775BC-8A52-49BA-8C65-7F4BDFA6802E",
    APP_KEY = "69f869e481bfde19e81735d12ddc3db4"

exports.storageApi = new StorageApi({
    "appSid": APP_SID,
    "apiKey": APP_KEY,
});

exports.cellsApi = new CellsApi({
    "appSid": APP_SID,
    "apiKey": APP_KEY,
});

exports.getPath = function(example, filename) {
    var name = path.basename(example, '.js');
    var pkg = path.basename(path.dirname(example));
    var r = path.dirname(path.dirname(path.dirname(path.dirname(example))))
    var datadir = path.join(r, 'data', pkg, name)
    if (fs.existsSync(datadir)) {
        console.info("Using data directory " + datadir);
    } else {
        fs.mkdirSync(datadir);
        console.info("Create data directory " + datadir);
    }

    if (filename) {
        return path.join(datadir, filename);
    } else {
        return datadir
    }
};
