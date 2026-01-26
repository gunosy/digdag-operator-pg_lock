0.1.1 (2026-01-26)
==================

* [Enhancement] Upgrade Flyway to 8.5.13 for PostgreSQL 17 compatibility while maintaining Java 8 support.
* [Enhancement] Optimize HikariCP connection pool settings to prevent connection slot exhaustion in test environments.
* [Fix] Update database cleanup in tests to use PostgreSQL 13+ `DROP DATABASE ... WITH (FORCE)` syntax.
* [Fix] Fix hardcoded database name in test SQL queries to support environment variable overrides.
* [Fix] Relax log pattern matching in tests for better compatibility with Digdag 0.10.x log format.
* [Fix] Remove `clean` task from Docker build to avoid permission issues with volume mounts.
* [Enhancement] Add debugging helper for test failures.

0.1.0 (2026-01-19)
==================

* [Breaking Change] Change Group ID to `com.github.Gunosy` and package to `com.github.gunosy.digdag.plugin.pg_lock`.
* [Enhancement] Upgrade Digdag to 0.10.5.
* [Enhancement] Upgrade Scala to 2.13.12.
* [Enhancement] Support PostgreSQL 17.
* [Enhancement] Migrate tests to ScalaTest 3.2.17.
* [Enhancement] Support GitHub Actions CI.

0.0.3 (2019-11-29)
==================

* [Fix] Fix the way to get `pg_lock.digdag.headers.*` values.

0.0.2 (2019-11-27)
==================

* [Enhancement] Add `unlock_finished_attempt_locks` option.

0.0.1 (2019-11-25)
==================

* [Enhancement] Release locks if owner_attempt is finished.
* [Enhancement] Use Github Actions instead of Circle CI.

0.0.1.pre3 (2019-10-14)
=======================

* [Fix] Fix the connection flood.

0.0.1.pre2 (2019-10-07)
=======================

* [Fix] Fix `org.flywaydb.core.api.FlywayException: Found non-empty schema(s) "public" without schema history table! Use baseline() or set baselineOnMigrate to true to initialize the schema history table.` when using this operator in digdag server mode. [#2](https://github.com/civitaspo/digdag-operator-pg_lock/pull/2)
* [Fix] Fix a namespace bug: `Unsupported namespace: session (config)` [#3](https://github.com/civitaspo/digdag-operator-pg_lock/pull/3)

0.0.1.pre1 (2019-10-05)
=======================

* First Release
