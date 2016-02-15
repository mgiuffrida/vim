pushd vim\src
if /i [%1] == [clean] (
  call %VS_DIR%\VC\bin\nmake -f Make_mvc.mak clean
) else (
  call %VS_DIR%\VC\bin\nmake -f Make_mvc.mak
)
popd
