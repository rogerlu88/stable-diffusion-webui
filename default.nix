{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "stable-diffusion-webui-env";

  buildInputs = [
    pkgs.wget
    pkgs.git
    pkgs.python310
    pkgs.libglvnd
    pkgs.gperftools
  ];

  shellHook = ''
    # If using Python 3.11, override the python command variable
    export python_cmd="python3.11"

    # Notify user of the environment setup and next steps
    echo "Environment for stable-diffusion-webui initialized."
    echo "To start, run './webui.sh' or check 'webui-user.sh' for options."
  '';
}
