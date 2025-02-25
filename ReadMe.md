*Ref:* <https://lumi-supercomputer.github.io/LUMI-EasyBuild-docs/p/PyTorch/>  
Please go to the **Singularity containers with modules for binding and extras** section.

1. Because LUMI places size and file count limits on your HOME directory (see `lumi-workspaces`), it is recommended to install everything under `/scratch/project_xxxx`.  
   1.1.  
   ```
   cd /scratch/project_xxxx
   mkdir your_name
   cd your_name
   mkdir support
   ```  
   1.2. Put your containers in the folder you just created and add the following to `~/.bashrc`:
   ```
   export EBU_USER_PREFIX=/scratch/project_xxxx/your_name/support/EasyBuild
   ```  
2. Within the **Singularity containers with modules for binding and extras** section, pick a suitable container, for example:  
   ```
   module load LUMI partition/container EasyBuild-user
   eb PyTorch-2.5.1-rocm-6.2.3-python-3.12-singularity-20241125.eb
   ```  
3. To activate your environment, run:  
   ```
   module load LUMI PyTorch/2.5.1-rocm-6.2.3-python-3.12-singularity-20241125
   ```  
4. To install additional pip packages, open the Singularity shell and run pip commands:  
   ```
   singularity shell $SIFPYTORCH
   pip install XXXX
   ```
5. To submit your job to LUMI
    ```
   bash run.sh
   ```