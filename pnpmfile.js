"use-strict";

/**
 * When using the PNPM package manager, you can use pnpmfile.js to workaround
 * dependencies that have mistakes in their package.json file.  (This feature is
 * functionally similar to Yarn's "resolutions".)
 *
 * For details, see the PNPM documentation:
 * https://pnpm.js.org/docs/en/hooks.html
 *
 * IMPORTANT: SINCE THIS FILE CONTAINS EXECUTABLE CODE, MODIFYING IT IS LIKELY
 * TO INVALIDATE ANY CACHED DEPENDENCY ANALYSIS.
 *
 */
module.exports = {
  hooks: {
    readPackage
  }
};

/**
 * This hook is invoked during installation before a package's dependencies
 * are selected.
 * The `packageJson` parameter is the deserialized package.json
 * contents for the package that is about to be installed.
 * The `context` parameter provides a log() function.
 * The return value is the updated object.
 */
function readPackage(packageJson, context) {
  // The @angular/cli package has a missing dependency on the safe-buffer package.
  if (packageJson.name === "@angular/cli") {
    packageJson.dependencies["safe-buffer"] = "^5.0.0";
    context.log("Fixed up dependencies for @angular/cli");
  }

  // The webpack package has a missing dependency on the events package.
  if (packageJson.name === "webpack") {
    packageJson.dependencies["events"] = "^3.0.0";
    context.log("Fixed up dependencies for webpack");
  }

  // The webpack-dev-server package has a missing dependency on the querystring package.
  if (packageJson.name === "webpack-dev-server") {
    packageJson.dependencies["querystring"] = "~0.2.0";
    context.log("Fixed up dependencies for webpack-dev-server");
  }

  return packageJson;
}
