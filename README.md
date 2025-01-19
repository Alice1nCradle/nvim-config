# nvim-config

## Windows下对Neovide的额外调整

首先，Neovide首选的是OpenGL，但是Windows中OpenGL没有DirectX好，因此应该在终端中输入:

~~~ powershell
setx NEOVIDE_BACKEND directx
~~~

然后，启用Neovide的硬件加速功能(如果此主机支持)

~~~ powershell
setx NEOVIDE_GPU_ACCELERATION true
~~~

