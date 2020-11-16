package com.simonjoz.repository;

import com.simonjoz.model.Task;
import com.simonjoz.model.TaskLevel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.logging.Level;

@Repository
public interface TaskRepo extends JpaRepository<Task, Long> {
        List<Task> findAllByLevel(TaskLevel level);
}
