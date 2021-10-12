###################################################################################
# Copyright 2021 National Technology & Engineering Solutions of Sandia,           #
# LLC (NTESS). Under the terms of Contract DE-NA0003525 with NTESS, the           #
# U.S. Government retains certain rights in this software.                        #
# If you want to use this code, please refer to the README.rst and LICENSE files. #
###################################################################################


from PyNucleus_packageTools import package as packageBase
import os


class package(packageBase):
    def setInclude(self):
        super(package, self).setInclude()
        self.config['includeDirs'].append(os.path.dirname(os.path.realpath(__file__)))
