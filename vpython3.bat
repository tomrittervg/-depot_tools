@echo on
:: Copyright 2019 The Chromium Authors. All rights reserved.
:: Use of this source code is governed by a BSD-style license that can be
:: found in the LICENSE file.

:: TODO(crbug.com/1003139): Remove.
:: Add Python 3 to PATH to work around crbug.com/1003139.
for /f %%i in (%~dp0python3_bin_reldir.txt) do set PYTHON3_BIN_RELDIR=%%i
set PATH=%~dp0%PYTHON3_BIN_RELDIR%;%~dp0%PYTHON3_BIN_RELDIR%\Scripts;%~dp0%PYTHON3_BIN_RELDIR%\DLLs;%PATH%

call "%~dp0\cipd_bin_setup.bat"
"%~dp0\.cipd_bin\vpython3.exe" -vpython-log-level debug -vpython-interpreter "%~dp0\%PYTHON3_BIN_RELDIR%\python3.exe" %*
