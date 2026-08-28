B U N   I N S T A L L               
============================================================

1. INSTALL COMMAND (UNIX)
------------------------------------------------------------
$ curl -fsSL https://bun.sh/install | bash

2. INSTALL COMMAND (WINDOWS POWERSHELL)
------------------------------------------------------------
PS> powershell -c "irm bun.sh/install.ps1 | iex"

3. VERIFY INSTALL
------------------------------------------------------------
$ bun --version
# returns something like: 1.1.12

============================================================
||                 RUNTIME FUNDAMENTALS                    ||
============================================================

Bun is a SINGLE-BINARY operator system composed of:

    RUNTIME + PACKAGE_MANAGER + TEST_RUNNER + BUNDLER

All four are exposed through the same executable: `bun`.

------------------------------------------------------------
RUNTIME CORE TYPES
------------------------------------------------------------
TYPE Engine        = JavaScriptCore
TYPE Runtime       = BunRuntime(Engine)
TYPE ModuleGraph   = Graph<ModuleNode>
TYPE ModuleNode    = { path: String, kind: JS|TS|JSX|TSX }
TYPE FS            = BunFS(HostOS)
TYPE EventLoop     = JSCEventLoop
TYPE APISet        = { fetch, WebSocket, ReadableStream, ... }

------------------------------------------------------------
RUNTIME CORE VARIABLES
------------------------------------------------------------
VAR bun.exec_path        : String
VAR bun.env              : Map<String,String>
VAR bun.argv             : Array<String>
VAR bun.version          : SemVer
VAR bun.platform         : "linux" | "darwin" | "windows"
VAR bun.arch             : "x64" | "arm64"

------------------------------------------------------------
RUNTIME OPERATOR FUNDAMENTALS
------------------------------------------------------------
OP load(module_path)     -> ModuleNode
OP resolve(specifier)    -> AbsolutePath
OP execute(ModuleNode)   -> Any
OP import(specifier)     -> Promise<ModuleExports>
OP spawn(cmd,args)       -> ProcessHandle
OP serve(handler)        -> HTTPServer

============================================================
||               PACKAGE MANAGER FUNDAMENTALS              ||
============================================================

COMMANDS:
    bun install
    bun add <pkg>
    bun remove <pkg>
    bun update

------------------------------------------------------------
PACKAGE MANAGER TYPES
------------------------------------------------------------
TYPE PackageManifest = {
    name: String,
    version: SemVer,
    dependencies: Map<String,SemVer>,
    devDependencies: Map<String,SemVer>
}

TYPE Lockfile = {
    entries: Map<String,ResolvedPackage>
}

TYPE ResolvedPackage = {
    name: String,
    version: SemVer,
    integrity: Hash,
    files: Array<FileEntry>
}

------------------------------------------------------------
PACKAGE MANAGER VARIABLES
------------------------------------------------------------
VAR bun.pm.cache_dir     : Path
VAR bun.pm.lockfile      : Lockfile
VAR bun.pm.registry      : URL

------------------------------------------------------------
PACKAGE MANAGER OPERATORS
------------------------------------------------------------
OP resolve(pkg,range)    -> ResolvedPackage
OP fetch(pkg)            -> Tarball
OP extract(tarball)      -> FileTree
OP link(tree)            -> NodeModulesGraph

============================================================
||                 TEST RUNNER FUNDAMENTALS                ||
============================================================

COMMAND:
    bun test

------------------------------------------------------------
TEST TYPES
------------------------------------------------------------
TYPE TestCase = {
    name: String,
    fn: () -> Void | Promise<Void>
}

TYPE TestSuite = {
    name: String,
    cases: Array<TestCase>
}

TYPE Snapshot = {
    id: String,
    data: String
}

------------------------------------------------------------
TEST VARIABLES
------------------------------------------------------------
VAR test.suites          : Array<TestSuite>
VAR test.snapshots       : Map<String,Snapshot>

------------------------------------------------------------
TEST OPERATORS
------------------------------------------------------------
OP describe(name,fn)     -> TestSuite
OP test(name,fn)         -> TestCase
OP expect(value)         -> Expectation
OP matchSnapshot(value)  -> SnapshotResult

============================================================
||                     BUNDLER FUNDAMENTALS                ||
============================================================

COMMAND:
    bun build index.ts --outdir dist

------------------------------------------------------------
BUNDLER TYPES
------------------------------------------------------------
TYPE BundleGraph = Graph<BundleNode>
TYPE BundleNode  = {
    id: String,
    kind: JS|TS|CSS|HTML|ASSET,
    deps: Array<BundleNode>
}

TYPE OutputChunk = {
    filename: String,
    code: String
}

------------------------------------------------------------
BUNDLER VARIABLES
------------------------------------------------------------
VAR bundler.entry        : Path
VAR bundler.graph        : BundleGraph
VAR bundler.chunks       : Array<OutputChunk>

------------------------------------------------------------
BUNDLER OPERATORS
------------------------------------------------------------
OP parse(file)           -> AST
OP transform(AST)        -> AST
OP bundle(graph)         -> Array<OutputChunk>
OP write(chunk)          -> File

============================================================
||                 MINIMAL PROJECT SCAFFOLD                ||
============================================================

$ mkdir myapp
$ cd myapp
$ bun init

Creates:
    package.json
    bun.lockb
    index.ts

============================================================
||                 RUNNING FIRST SCRIPT                   ||
============================================================

index.ts:
------------------------------------------------------------
console.log("Hello from Bun!");

Run:
------------------------------------------------------------
$ bun run index.ts

