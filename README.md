# docker-gldemo
Expose GUI applications from a Docker container, specifically Unity3D


## Dependencies 

Install Docker, Docker Compose and FUSE.

## Usage

**Build the image:** `./build.sh`.

**Run a shell in the container:** `./shell.sh`

You can use this to run `glxgears` for example.

**Run the Unity3D installer:** `./shell.sh /home/contuser/unity/UnitySetup -u -l unity-editor/install -d unity-editor/download`

This will prompt you to accept the license. Optional: use the `UNITY_URL` build arg in compose if you want to overwrite the unity installer download URL.

## License Activation

**Generate ALF:** `./shell.sh unity-editor/install/Editor/Unity -batchmode -nographics -createManualActivationFile -username USERNAME -password PASSWORD`

Replace `USERNAME` and `PASSWORD` with your Unity3D credentials. The command should create an `.alf` file. 

**Request ULF:** Upload this file to https://license.unity3d.com/manual . This should give you an `.ulf` file. Place it next to the ALF file.

## Run Unity3D

`./shell.sh bash -c "unity-editor/install/Editor/Unity -batchmode -manualLicenseFile ULFFILENAME ; unity-editor/install/Editor/Unity"`

Replace `ULFFILENAME` with the name of the ULF file.