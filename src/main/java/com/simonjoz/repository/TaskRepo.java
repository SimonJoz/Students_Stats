package com.simonjoz.repository;

import com.simonjoz.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaskRepo  extends JpaRepository<Task, Long> {

}
