<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>WIS Platform</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=DM+Sans:wght@300;400;500&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'DM Sans', sans-serif;
            background: hsl(307, 65%, 22%);
            color: #ffffff;
        }

        h1, h2, h3, .font-display {
            font-family: 'Syne', sans-serif;
        }

        .grid-bg {
            background-image: linear-gradient(rgba(99, 102, 241, 0.05) 1px, transparent 1px),
                linear-gradient(90deg, rgba(99, 241, 239, 0.05) 1px, transparent 1px);
            background-size: 48px 48px;
        }

        .glow {
            box-shadow: 0 0 40px rgba(99, 102, 241, 0.25);
        }

        .card-hover {
            transition: transform 0.2s, box-shadow 0.2s, background-color 0.2s;
        }

        .card-hover:hover {
            transform: translateY(-2px);
            background-color: rgba(255, 255, 255, 0.08);
            box-shadow: 0 12px 24px rgba(99, 102, 241, 0.15);
        }

        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(16px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-up { animation: fadeUp 0.5s ease forwards; }
        .fade-up-2 { animation: fadeUp 0.5s 0.1s ease forwards; opacity: 0; }
        .fade-up-3 { animation: fadeUp 0.5s 0.2s ease forwards; opacity: 0; }

        /* Hide default scrollbars for elegant card layout tracking */
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.02);
            border-radius: 8px;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: rgba(99, 102, 241, 0.3);
            border-radius: 8px;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb:hover {
            background: rgba(99, 102, 241, 0.5);
        }
    </style>
</head>

<body class="flex flex-col min-h-screen md:h-screen md:overflow-hidden grid-bg">

    <nav class="z-50 border-b border-white/10 backdrop-blur-sm bg-black/30 shrink-0">
        <div class="max-w-7xl mx-auto px-6 py-3.5 flex items-center justify-between">
            <div class="flex items-center gap-3">
                <div class="flex items-center justify-center w-8 h-8 bg-indigo-500 rounded-lg glow">
                    <svg class="w-4 h-4 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M13 10V3L4 14h7v7l9-11h-7z" />
                    </svg>
                </div>
                <span class="text-lg font-bold tracking-tight font-display">WIS<span class="text-indigo-400">Platform</span></span>
            </div>
            <div class="items-center hidden gap-8 text-sm md:flex text-white/85">
                <a href="#stack" class="transition-colors hover:text-white">Platform Stack</a>
                <a href="/swagger-ui/index.html" target="_blank" class="transition-colors hover:text-white">API Swagger Docs</a>
            </div>
            <div class="flex items-center gap-3">
                <a href="/login" class="px-4 py-2 text-sm transition-colors text-white/85 hover:text-white">Sign in</a>
                <a href="/login" class="px-4 py-2 text-sm font-medium text-white transition-colors bg-indigo-600 rounded-lg hover:bg-indigo-500">Get started</a>
            </div>
        </div>
    </nav>

    <main class="flex flex-col flex-1 w-full min-h-0 gap-8 px-6 py-6 mx-auto overflow-y-auto md:flex-row max-w-7xl md:overflow-hidden">
        
        <section class="flex flex-col justify-center flex-1 min-w-0 py-4 md:py-0 fade-up">
            <div class="inline-flex items-center gap-2 bg-indigo-500/10 border border-indigo-500/30 rounded-full px-3.5 py-1 text-base font-medium text-indigo-300 w-fit mb-6">
                <span class="w-1.5 h-1.5 rounded-full bg-indigo-400 animate-pulse"></span>
                Full-Stack Monolith Ecosystem
            </div>
            <h1 class="mb-4 text-4xl font-extrabold leading-tight tracking-tight font-display md:text-6xl">
                Build fast.<br /><span class="text-indigo-400">Ship flawlessly.</span>
            </h1>
            <p class="max-w-lg mb-8 text-base leading-relaxed text-white/85">
                A robust Java web platform built with Spring MVC, Servlets, and JSP. Fully monitored using integrated Loki log pipelines and a high-performance PostgreSQL backend.
            </p>
            <div class="flex items-center gap-4 mb-10">
                <a href="/login" class="bg-indigo-600 hover:bg-indigo-500 text-white px-5 py-2.5 rounded-xl font-medium transition-all text-sm glow">
                    Open App Dashboard →
                </a>
                <a href="/swagger-ui/index.html" target="_blank" class="border border-white/20 hover:border-white/50 text-white/70 hover:text-white px-5 py-2.5 rounded-xl font-medium text-sm transition-all">
                    API Blueprint
                </a>
            </div>

            <div class="grid max-w-lg grid-cols-2 gap-3 fade-up-2">
                <div class="p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="text-2xl font-bold text-indigo-400 font-display">&lt;50ms</div>
                    <div class="text-base text-white/85 mt-0.5">Database Query Latency</div>
                </div>
                <div class="p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="text-2xl font-bold text-indigo-400 font-display">PLG</div>
                    <div class="text-base text-white/85 mt-0.5">Loki Log Aggregation</div>
                </div>
                <div class="p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="text-2xl font-bold text-indigo-400 font-display">100%</div>
                    <div class="text-base text-white/85 mt-0.5">Containerized Topology</div>
                </div>
                <div class="p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="text-2xl font-bold text-indigo-400 font-display">JSP</div>
                    <div class="text-base text-white/85 mt-0.5">Server-Side Views</div>
                </div>
            </div>
        </section>

        <section id="stack" class="flex-1 flex flex-col min-h-0 min-w-0 bg-white/[0.02] border border-white/10 rounded-2xl p-5 fade-up-3">
            <div class="mb-4 shrink-0">
                <h2 class="mb-1 text-xl font-bold font-display">Architecture Components</h2>
                <p class="text-base text-white/85">Every service module integrated into a unified network domain.</p>
            </div>
            
            <div class="flex-1 pr-1 space-y-3 md:overflow-y-auto custom-scrollbar">

                <div class="flex items-start gap-4 p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="flex items-center justify-center w-10 h-10 border rounded-xl bg-blue-500/10 border-blue-500/20 shrink-0">
                        <svg class="w-5 h-5 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2 1 3 3 3h10c2 0 3-1 3-3V7c0-2-1-3-3-3H7C5 4 4 5 4 7z" />
                        </svg>
                    </div>
                    <div>
                        <div class="text-[20px] font-bold text-blue-400 uppercase tracking-wider mb-0.5">Database Manager</div>
                        <div class="mb-1 text-base font-semibold font-display">AdminerDB Engine</div>
                        <p class="text-base leading-relaxed text-white/85">Direct runtime visibility into the local PostgreSQL cluster exposed securely at port 8081.</p>
                    </div>
                </div>

                <div class="flex items-start gap-4 p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="flex items-center justify-center w-10 h-10 border rounded-xl bg-green-500/10 border-green-500/20 shrink-0">
                        <svg class="w-5 h-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                        </svg>
                    </div>
                    <div>
                        <div class="text-[20px] font-bold text-green-400 uppercase tracking-wider mb-0.5">API Specification</div>
                        <div class="mb-1 text-base font-semibold font-display">Springdoc OpenAPI Blueprint</div>
                        <p class="text-base leading-relaxed text-white/85">Automated live endpoint scanning documentation mapped directly to standard app controllers.</p>
                    </div>
                </div>

                <div class="flex items-start gap-4 p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="flex items-center justify-center w-10 h-10 border rounded-xl bg-yellow-500/10 border-yellow-500/20 shrink-0">
                        <svg class="w-5 h-5 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                        </svg>
                    </div>
                    <div>
                        <div class="text-[20px] font-bold text-yellow-400 uppercase tracking-wider mb-0.5">Quality Assurance</div>
                        <div class="mb-1 text-base font-semibold font-display">JUnit 5 & Integration Tests</div>
                        <p class="text-base leading-relaxed text-white/85">Comprehensive testing layer parsing validation constraints, services logic, and repository endpoints.</p>
                    </div>
                </div>

                <div class="flex items-start gap-4 p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="flex items-center justify-center w-10 h-10 border rounded-xl bg-purple-500/10 border-purple-500/20 shrink-0">
                        <svg class="w-5 h-5 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.85 17L9 20l-1 1h8l-1-1-.85-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                        </svg>
                    </div>
                    <div>
                        <div class="text-[20px] font-bold text-purple-400 uppercase tracking-wider mb-0.5">Log Telemetry</div>
                        <div class="mb-1 text-base font-semibold font-display">Grafana Loki & Promtail Stack</div>
                        <p class="text-base leading-relaxed text-white/85">Automatic container logging runtime capturing container console stdout traces via standard Docker sockets.</p>
                    </div>
                </div>

                <div class="flex items-start gap-4 p-4 border bg-white/5 border-white/10 rounded-xl card-hover">
                    <div class="flex items-center justify-center w-10 h-10 border rounded-xl bg-red-500/10 border-red-500/20 shrink-0">
                        <svg class="w-5 h-5 text-red-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                        </svg>
                    </div>
                    <div>
                        <div class="text-[20px] font-bold text-red-400 uppercase tracking-wider mb-0.5">Server Architecture</div>
                        <div class="mb-1 text-base font-semibold font-display">Spring MVC & Embedded Tomcat</div>
                        <p class="text-base leading-relaxed text-white/85">Server-side template parsing engine combining model context objects directly into compiled views.</p>
                    </div>
                </div>

            </div>
        </section>
    </main>

    <footer class="border-t border-white/10 bg-black/20 shrink-0">
        <div class="flex items-center justify-between px-6 py-4 mx-auto text-base max-w-7xl text-white/85">
            <span class="font-display">WIS<span class="text-indigo-400">Platform</span></span>
            <span>Spring MVC · JSP · PostgreSQL · Grafana Loki · Docker</span>
        </div>
    </footer>

</body>
</html>