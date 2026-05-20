<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>WIS Platform</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link
            href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=DM+Sans:wght@300;400;500&display=swap"
            rel="stylesheet" />
        <style>
            body {
                font-family: 'DM Sans', sans-serif;
                background: #0a0a0f;
                color: #e8e8f0;
            }

            h1,
            h2,
            h3,
            .font-display {
                font-family: 'Syne', sans-serif;
            }

            .grid-bg {
                background-image: linear-gradient(rgba(99, 102, 241, 0.07) 1px, transparent 1px),
                    linear-gradient(90deg, rgba(99, 241, 239, 0.07) 1px, transparent 1px);
                background-size: 48px 48px;
            }

            .glow {
                box-shadow: 0 0 40px rgba(99, 102, 241, 0.25);
            }

            .card-hover {
                transition: transform 0.2s, box-shadow 0.2s;
            }

            .card-hover:hover {
                transform: translateY(-4px);
                box-shadow: 0 20px 40px rgba(99, 102, 241, 0.2);
            }

            @keyframes fadeUp {
                from {
                    opacity: 0;
                    transform: translateY(24px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .fade-up {
                animation: fadeUp 0.6s ease forwards;
            }

            .fade-up-2 {
                animation: fadeUp 0.6s 0.15s ease forwards;
                opacity: 0;
            }

            .fade-up-3 {
                animation: fadeUp 0.6s 0.3s ease forwards;
                opacity: 0;
            }
        </style>
    </head>

    <body class="min-h-screen grid-bg">

        <!-- Nav -->
        <nav class="border-b border-white/10 backdrop-blur-sm bg-black/30 sticky top-0 z-50">
            <div class="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
                <div class="flex items-center gap-3">
                    <div class="w-8 h-8 rounded-lg bg-indigo-500 flex items-center justify-center glow">
                        <svg class="w-4 h-4 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5"
                                d="M13 10V3L4 14h7v7l9-11h-7z" />
                        </svg>
                    </div>
                    <span class="font-display font-700 text-lg tracking-tight">WIS<span
                            class="text-indigo-400">Platform</span></span>
                </div>
                <div class="hidden md:flex items-center gap-8 text-sm text-white/60">
                    <a href="#features" class="hover:text-white transition-colors">Features</a>
                    <a href="#stack" class="hover:text-white transition-colors">Stack</a>
                    <a href="/swagger-ui/index.html" class="hover:text-white transition-colors">API Docs</a>
                </div>
                <div class="flex items-center gap-3">
                    <a href="/login" class="text-sm text-white/70 hover:text-white transition-colors px-4 py-2">Sign
                        in</a>
                    <a href="/login"
                        class="text-sm bg-indigo-600 hover:bg-indigo-500 text-white px-4 py-2 rounded-lg transition-colors font-medium">Get
                        started</a>
                </div>
            </div>
        </nav>

        <!-- Hero -->
        <section class="max-w-7xl mx-auto px-6 pt-24 pb-20">
            <div class="max-w-3xl fade-up">
                <div
                    class="inline-flex items-center gap-2 bg-indigo-500/10 border border-indigo-500/30 rounded-full px-4 py-1.5 text-sm text-indigo-300 mb-8">
                    <span class="w-1.5 h-1.5 rounded-full bg-indigo-400 animate-pulse"></span>
                    Spring MVC · PostgreSQL · Docker
                </div>
                <h1 class="font-display text-5xl md:text-7xl font-800 leading-none tracking-tight mb-6">
                    Build fast.<br /><span class="text-indigo-400">Ship faster.</span>
                </h1>
                <p class="text-lg text-white/50 leading-relaxed max-w-xl mb-10">
                    A production-ready monolith with full observability, automated testing, and zero-config deployment.
                </p>
                <div class="flex items-center gap-4">
                    <a href="/login"
                        class="bg-indigo-600 hover:bg-indigo-500 text-white px-6 py-3 rounded-xl font-medium transition-all glow">
                        Open Dashboard →
                    </a>
                    <a href="/swagger-ui/index.html"
                        class="border border-white/20 hover:border-white/40 text-white/70 hover:text-white px-6 py-3 rounded-xl font-medium transition-all">
                        API Blueprint
                    </a>
                </div>
            </div>

            <!-- Stats row -->
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mt-20 fade-up-2">
                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="text-3xl font-display font-700 text-indigo-400">99.9%</div>
                    <div class="text-sm text-white/40 mt-1">Uptime SLA</div>
                </div>
                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="text-3xl font-display font-700 text-indigo-400">&lt;50ms</div>
                    <div class="text-sm text-white/40 mt-1">API Response</div>
                </div>
                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="text-3xl font-display font-700 text-indigo-400">100%</div>
                    <div class="text-sm text-white/40 mt-1">Test Coverage</div>
                </div>
                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="text-3xl font-display font-700 text-indigo-400">6</div>
                    <div class="text-sm text-white/40 mt-1">Core Modules</div>
                </div>
            </div>
        </section>

        <!-- Stack Section -->
        <section id="stack" class="max-w-7xl mx-auto px-6 py-20 fade-up-3">
            <h2 class="font-display text-3xl font-700 mb-2">Platform Stack</h2>
            <p class="text-white/40 mb-10">Every layer purpose-built for production.</p>
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-4">

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-blue-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M4 7v10c0 2 1 3 3 3h10c2 0 3-1 3-3V7c0-2-1-3-3-3H7C5 4 4 5 4 7z" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-blue-400 uppercase tracking-wider mb-1">Database UI</div>
                    <div class="font-display font-600 text-lg mb-2">AdminerDB</div>
                    <p class="text-sm text-white/40">Direct access to local PostgreSQL instances via port 8081.</p>
                </div>

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-green-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-green-400 uppercase tracking-wider mb-1">API Blueprint</div>
                    <div class="font-display font-600 text-lg mb-2">Springdoc OpenAPI</div>
                    <p class="text-sm text-white/40">Endpoint architectures exposed at <code
                            class="text-green-300">/swagger-ui/index.html</code>.</p>
                </div>

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-yellow-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-yellow-400 uppercase tracking-wider mb-1">Backend Testing</div>
                    <div class="font-display font-600 text-lg mb-2">JUnit 5 + MockMvc</div>
                    <p class="text-sm text-white/40">Automated functional checks on internal classes and API paths.</p>
                </div>

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-purple-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-purple-400 uppercase tracking-wider mb-1">Frontend Testing
                    </div>
                    <div class="font-display font-600 text-lg mb-2">Jasmine + Cypressssss</div>
                    <p class="text-sm text-white/40">Browser interaction verification blocks across all UI flows.</p>
                </div>

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-red-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-red-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-red-400 uppercase tracking-wider mb-1">Monolith Monitoring
                    </div>
                    <div class="font-display font-600 text-lg mb-2">Logback / Sentry</div>
                    <p class="text-sm text-white/40">Captures server faults and transaction failures in real time.</p>
                </div>

                <div class="bg-white/5 border border-white/10 rounded-2xl p-6 card-hover">
                    <div class="w-10 h-10 rounded-xl bg-orange-500/20 flex items-center justify-center mb-4">
                        <svg class="w-5 h-5 text-orange-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" />
                        </svg>
                    </div>
                    <div class="text-xs font-medium text-orange-400 uppercase tracking-wider mb-1">UI Monitoring</div>
                    <div class="font-display font-600 text-lg mb-2">Angular ErrorHandler</div>
                    <p class="text-sm text-white/40">Client runtime crash capture and secure session log handling.</p>
                </div>

            </div>
        </section>

        <!-- Footer -->
        <footer class="border-t border-white/10 mt-10">
            <div class="max-w-7xl mx-auto px-6 py-8 flex items-center justify-between text-sm text-white/30">
                <span class="font-display">WIS<span class="text-indigo-400">Platform</span></span>
                <span>Spring MVC · PostgreSQL · Docker · Tailwind</span>
            </div>
        </footer>

    </body>

    </html>