PROGRAM hello_world_mpi
!include "mpif.h"


integer process_Rank, size_Of_Cluster, ierror

call MPI_INIT(ierror)
call MPI_COMM_SIZE(MPI_COMM_WORLD, size_Of_Cluster, ierror)
call MPI_COMM_RANK(MPI_COMM_WORLD, process_Rank, ierror)

DO i = 0, 3, 1
    IF(i == process_Rank) THEN
        print *, 'Hello World from process: ', process_Rank, 'of ', size_Of_Cluster
    END IF
    call MPI_BARRIER( MPI_COMM_WORLD, i_error)
END DO

call MPI_FINALIZE(ierror)
END PROGRAM

