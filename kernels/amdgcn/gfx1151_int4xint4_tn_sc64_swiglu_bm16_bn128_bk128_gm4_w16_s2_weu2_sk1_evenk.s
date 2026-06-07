	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v95, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 4, v95
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v98, 15, v95
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[2:3], null, s26, v5, v[98:99]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s19
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s11, 0, s7
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s17
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s6, s10
	s_xor_b32 s10, s2, s19
	s_mul_i32 s18, s5, s7
	s_ashr_i32 s17, s10, 31
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s6, s7
	s_cmp_ge_u32 s6, s7
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s7, s3, 5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s6, s20, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s23, s18, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v0, s7, v5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s5, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s6, 26
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s6, s23, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s20, s4
.Ltmp19:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s5, v0
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 32, v0
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s35, s27, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s23, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s44, s19, 6
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s35, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s6, s4, vcc_lo
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s21, s26, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v98
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	s_mov_b32 s6, -1
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[3:4], null, s35, v5, v[1:2]
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v2, s21, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 160 26 is_stmt 0              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 166 34 is_stmt 1              ; generate_amdgcn.py:166:34
	v_add3_u32 v0, s33, s22, v3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v18, 0, v95
	v_or_b32_e32 v9, 0x3f0, v95
	v_or_b32_e32 v10, 0x7f0, v95
	v_or_b32_e32 v16, 0xbf0, v95
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v3, s27, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_or_b32_e32 v17, 0xff0, v95
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v8, v2, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[2:3], v0, s[28:31], 0 offen
	buffer_load_b64 v[6:7], v4, s[28:31], 0 offen
	v_lshlrev_b32_e32 v0, 3, v95
                                        ; implicit-def: $vgpr4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v19, 0, v0
                                        ; implicit-def: $vgpr0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v18, v8 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v19, v[2:3], v[6:7] offset1:8
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v0, 0x3f0, v95
	v_or_b32_e32 v2, 0x7f0, v95
	v_or_b32_e32 v3, 0xbf0, v95
	v_or_b32_e32 v4, 0xff0, v95
	s_mov_b32 s6, 0
.LBB0_2:                                ; %Flow1456
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v99, v95, 4, 1
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v212, 0, v98
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v250, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v34, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s44, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v19, off offset:620
	scratch_store_b32 off, v18, off offset:560
	scratch_load_b32 v85, off, off offset:620 ; 4-byte Folded Reload
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v0, 1, v5
	s_lshl_b32 s6, s18, 8
	s_lshl_b32 s18, s18, 7
	s_add_i32 s7, s7, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, s3, 6, v0
	v_sub_nc_u32_e32 v0, s5, v5
	scratch_store_b32 off, v95, off offset:624 ; 4-byte Folded Spill
	v_mov_b32_e32 v251, 0
	s_lshl_b32 s19, s17, 8
	v_add_nc_u32_e32 v3, 0x41, v2
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v98
	v_add_nc_u32_e32 v2, 64, v2
	s_lshl_b32 s17, s17, 7
	v_mul_lo_u32 v3, s27, v3
	s_mov_b32 s16, 0
	scratch_store_b64 off, v[0:1], off offset:628 ; 8-byte Folded Spill
	v_mul_lo_u32 v2, s27, v2
	v_add_nc_u32_e32 v0, s34, v98
	v_dual_mov_b32 v201, 0 :: v_dual_lshlrev_b32 v6, 1, v99
	v_mov_b32_e32 v13, 0
	v_add3_u32 v3, v3, s18, v1
	s_add_i32 s3, s6, s35
	s_mov_b32 s23, s16
	v_add3_u32 v1, v2, s18, v1
	v_add_nc_u32_e32 v2, s7, v5
	v_subrev_nc_u32_e32 v36, s17, v3
	v_mov_b32_e32 v203, 0
	s_sub_i32 s3, s3, s19
	v_subrev_nc_u32_e32 v86, s17, v1
	v_mad_u64_u32 v[2:3], null, s26, v2, v[0:1]
	v_mov_b32_e32 v1, 0
	v_mul_lo_u32 v4, s44, v0
	v_add_nc_u32_e32 v0, 0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:572
	scratch_store_b32 off, v10, off offset:644
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v0, 0, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:576
	scratch_store_b32 off, v16, off offset:648
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:580
	scratch_store_b32 off, v17, off offset:652
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v0, 0, v17
	s_sub_i32 s6, s6, s19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	v_dual_mov_b32 v30, s23 :: v_dual_lshlrev_b32 v35, 1, v4
	v_mov_b32_e32 v34, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:640
	scratch_store_b32 off, v0, off offset:584
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v197, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v99, off offset:636
	scratch_store_b32 off, v6, off offset:568
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v29, s22
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v27, s20
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v25, s18
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v23, s16
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v28, s21
	v_mov_b32_e32 v26, s19
	v_mov_b32_e32 v24, s17
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s5, s27, 2
	s_lshl_b32 s45, s27, 6
	s_lshl_b32 s26, s26, 5
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b128 off, v[23:26], off offset:588
	scratch_store_b128 off, v[27:30], off offset:604
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v22, off
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v20, off offset:4
	scratch_store_b32 off, v15, off offset:64
	scratch_store_b32 off, v14, off offset:60
	scratch_store_b32 off, v13, off offset:56
	scratch_store_b32 off, v251, off offset:52
	scratch_store_b32 off, v250, off offset:48
	scratch_store_b32 off, v249, off offset:44
	scratch_store_b32 off, v248, off offset:40
	scratch_store_b32 off, v247, off offset:36
	scratch_store_b32 off, v246, off offset:32
	scratch_store_b32 off, v245, off offset:28
	scratch_store_b32 off, v244, off offset:24
	scratch_store_b32 off, v12, off offset:20
	scratch_store_b32 off, v11, off offset:16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s7, 32
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v212 offset:8272
	ds_load_u8 v9, v212 offset:8256
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b128 v[54:57], off, off offset:588
	scratch_load_b128 v[58:61], off, off offset:604
	scratch_load_b32 v3, off, off offset:572
	scratch_load_b32 v4, off, off offset:576
	scratch_load_b32 v5, off, off offset:580
	scratch_load_b32 v17, off, off offset:584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:8304
	ds_load_u8 v10, v212 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:8208
	ds_load_u8 v11, v212 offset:8192
	v_lshl_or_b32 v23, v9, 16, v0
	ds_load_u8 v0, v212 offset:640
	ds_load_u8 v9, v212 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:8240
	ds_load_u8 v12, v212 offset:8224
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v11, 16, v10
	ds_load_u8 v9, v212 offset:896
	ds_load_u8 v10, v212 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:128
	ds_load_u8 v11, v212
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:8400
	ds_load_u8 v9, v212 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:384
	ds_load_u8 v12, v212 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:8432
	ds_load_u8 v10, v212 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:8336
	ds_load_u8 v11, v212 offset:8320
	v_lshl_or_b32 v25, v9, 16, v0
	ds_load_u8 v0, v212 offset:1664
	ds_load_u8 v9, v212 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:8368
	ds_load_u8 v12, v212 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v11, 16, v10
	ds_load_u8 v9, v212 offset:1920
	ds_load_u8 v10, v212 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1152
	ds_load_u8 v11, v212 offset:1024
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:8528
	ds_load_u8 v9, v212 offset:8512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1408
	ds_load_u8 v12, v212 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:8560
	ds_load_u8 v10, v212 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:8464
	ds_load_u8 v11, v212 offset:8448
	v_lshl_or_b32 v21, v9, 16, v0
	ds_load_u8 v0, v212 offset:2688
	ds_load_u8 v9, v212 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:8496
	ds_load_u8 v12, v212 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v11, 16, v10
	ds_load_u8 v9, v212 offset:2944
	ds_load_u8 v10, v212 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2176
	ds_load_u8 v11, v212 offset:2048
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:8656
	ds_load_u8 v9, v212 offset:8640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2432
	ds_load_u8 v12, v212 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8688
	ds_load_u8 v10, v212 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:8592
	ds_load_u8 v11, v212 offset:8576
	v_lshl_or_b32 v19, v9, 16, v0
	ds_load_u8 v0, v212 offset:3712
	ds_load_u8 v9, v212 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:8624
	ds_load_u8 v12, v212 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v11, 16, v10
	ds_load_u8 v9, v212 offset:3968
	ds_load_u8 v10, v212 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3200
	ds_load_u8 v11, v212 offset:3072
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3456
	ds_load_u8 v12, v212 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	s_waitcnt vmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4736
	ds_load_u8 v9, v212 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:4992
	ds_load_u8 v10, v212 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4224
	ds_load_u8 v11, v212 offset:4096
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:5760
	ds_load_u8 v9, v212 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4480
	ds_load_u8 v12, v212 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:6016
	ds_load_u8 v10, v212 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5248
	ds_load_u8 v11, v212 offset:5120
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:6784
	ds_load_u8 v9, v212 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5504
	ds_load_u8 v12, v212 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:7040
	ds_load_u8 v10, v212 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6272
	ds_load_u8 v11, v212 offset:6144
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:7808
	ds_load_u8 v9, v212 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6528
	ds_load_u8 v12, v212 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8064
	ds_load_u8 v10, v212 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7296
	ds_load_u8 v11, v212 offset:7168
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7552
	ds_load_u8 v12, v212 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:656
	ds_load_u8 v9, v212 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:912
	ds_load_u8 v10, v212 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:16
	ds_load_u8 v11, v212 offset:144
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:1680
	ds_load_u8 v9, v212 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v212 offset:400
	ds_load_u8 v12, v212 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:1936
	ds_load_u8 v10, v212 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1168
	ds_load_u8 v11, v212 offset:1040
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:2704
	ds_load_u8 v9, v212 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1424
	ds_load_u8 v12, v212 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:2960
	ds_load_u8 v10, v212 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2192
	ds_load_u8 v11, v212 offset:2064
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:3728
	ds_load_u8 v9, v212 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2448
	ds_load_u8 v12, v212 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:3984
	ds_load_u8 v10, v212 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3216
	ds_load_u8 v11, v212 offset:3088
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3472
	ds_load_u8 v12, v212 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4752
	ds_load_u8 v9, v212 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5008
	ds_load_u8 v10, v212 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4240
	ds_load_u8 v11, v212 offset:4112
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:5776
	ds_load_u8 v9, v212 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4496
	ds_load_u8 v12, v212 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:6032
	ds_load_u8 v10, v212 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5264
	ds_load_u8 v11, v212 offset:5136
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:6800
	ds_load_u8 v9, v212 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5520
	ds_load_u8 v12, v212 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:7056
	ds_load_u8 v10, v212 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6288
	ds_load_u8 v11, v212 offset:6160
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:7824
	ds_load_u8 v9, v212 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6544
	ds_load_u8 v12, v212 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8080
	ds_load_u8 v10, v212 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7312
	ds_load_u8 v11, v212 offset:7184
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7568
	ds_load_u8 v12, v212 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:672
	ds_load_u8 v9, v212 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:928
	ds_load_u8 v10, v212 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:32
	ds_load_u8 v11, v212 offset:160
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:1696
	ds_load_u8 v9, v212 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v212 offset:416
	ds_load_u8 v12, v212 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:1952
	ds_load_u8 v10, v212 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1184
	ds_load_u8 v11, v212 offset:1056
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:2720
	ds_load_u8 v9, v212 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1440
	ds_load_u8 v12, v212 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:2976
	ds_load_u8 v10, v212 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2208
	ds_load_u8 v11, v212 offset:2080
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:3744
	ds_load_u8 v9, v212 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2464
	ds_load_u8 v12, v212 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:4000
	ds_load_u8 v10, v212 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3232
	ds_load_u8 v11, v212 offset:3104
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3488
	ds_load_u8 v12, v212 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4768
	ds_load_u8 v9, v212 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5024
	ds_load_u8 v10, v212 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4256
	ds_load_u8 v11, v212 offset:4128
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:5792
	ds_load_u8 v9, v212 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4512
	ds_load_u8 v12, v212 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:6048
	ds_load_u8 v10, v212 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5280
	ds_load_u8 v11, v212 offset:5152
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:6816
	ds_load_u8 v9, v212 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5536
	ds_load_u8 v12, v212 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:7072
	ds_load_u8 v10, v212 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6304
	ds_load_u8 v11, v212 offset:6176
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:7840
	ds_load_u8 v9, v212 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6560
	ds_load_u8 v12, v212 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8096
	ds_load_u8 v10, v212 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7328
	ds_load_u8 v11, v212 offset:7200
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7584
	ds_load_u8 v12, v212 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:688
	ds_load_u8 v9, v212 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:944
	ds_load_u8 v10, v212 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:48
	ds_load_u8 v11, v212 offset:176
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:1712
	ds_load_u8 v9, v212 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v212 offset:432
	ds_load_u8 v12, v212 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:1968
	ds_load_u8 v10, v212 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1200
	ds_load_u8 v11, v212 offset:1072
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:2736
	ds_load_u8 v9, v212 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1456
	ds_load_u8 v12, v212 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:2992
	ds_load_u8 v10, v212 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2224
	ds_load_u8 v11, v212 offset:2096
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:3760
	ds_load_u8 v9, v212 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2480
	ds_load_u8 v12, v212 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:4016
	ds_load_u8 v10, v212 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3248
	ds_load_u8 v11, v212 offset:3120
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3504
	ds_load_u8 v12, v212 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4784
	ds_load_u8 v9, v212 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5040
	ds_load_u8 v10, v212 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4272
	ds_load_u8 v11, v212 offset:4144
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:5808
	ds_load_u8 v9, v212 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4528
	ds_load_u8 v12, v212 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:6064
	ds_load_u8 v10, v212 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5296
	ds_load_u8 v11, v212 offset:5168
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:6832
	ds_load_u8 v9, v212 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5552
	ds_load_u8 v12, v212 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:7088
	ds_load_u8 v10, v212 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6320
	ds_load_u8 v11, v212 offset:6192
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:7856
	ds_load_u8 v9, v212 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6576
	ds_load_u8 v12, v212 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8112
	ds_load_u8 v10, v212 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7344
	ds_load_u8 v11, v212 offset:7216
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7600
	ds_load_u8 v12, v212 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:704
	ds_load_u8 v9, v212 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:960
	ds_load_u8 v10, v212 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:192
	ds_load_u8 v11, v212 offset:64
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:1728
	ds_load_u8 v9, v212 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:448
	ds_load_u8 v12, v212 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:1984
	ds_load_u8 v10, v212 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1216
	ds_load_u8 v11, v212 offset:1088
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:2752
	ds_load_u8 v9, v212 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1472
	ds_load_u8 v12, v212 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:3008
	ds_load_u8 v10, v212 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2240
	ds_load_u8 v11, v212 offset:2112
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:3776
	ds_load_u8 v9, v212 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2496
	ds_load_u8 v12, v212 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:4032
	ds_load_u8 v10, v212 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3264
	ds_load_u8 v11, v212 offset:3136
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3520
	ds_load_u8 v12, v212 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4800
	ds_load_u8 v9, v212 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5056
	ds_load_u8 v10, v212 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4288
	ds_load_u8 v11, v212 offset:4160
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:5824
	ds_load_u8 v9, v212 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4544
	ds_load_u8 v12, v212 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:6080
	ds_load_u8 v10, v212 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5312
	ds_load_u8 v11, v212 offset:5184
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:6848
	ds_load_u8 v9, v212 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5568
	ds_load_u8 v12, v212 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:7104
	ds_load_u8 v10, v212 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6336
	ds_load_u8 v11, v212 offset:6208
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:7872
	ds_load_u8 v9, v212 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6592
	ds_load_u8 v12, v212 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:8128
	ds_load_u8 v10, v212 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7360
	ds_load_u8 v11, v212 offset:7232
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7616
	ds_load_u8 v12, v212 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:720
	ds_load_u8 v9, v212 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:976
	ds_load_u8 v10, v212 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:208
	ds_load_u8 v11, v212 offset:80
	v_lshl_or_b32 v27, v9, 16, v0
	ds_load_u8 v0, v212 offset:1744
	ds_load_u8 v9, v212 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:464
	ds_load_u8 v12, v212 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v212 offset:2000
	ds_load_u8 v10, v212 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1232
	ds_load_u8 v11, v212 offset:1104
	v_lshl_or_b32 v29, v9, 16, v0
	ds_load_u8 v0, v212 offset:2768
	ds_load_u8 v9, v212 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1488
	ds_load_u8 v12, v212 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v11, 16, v10
	ds_load_u8 v9, v212 offset:3024
	ds_load_u8 v10, v212 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2256
	ds_load_u8 v11, v212 offset:2128
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v212 offset:3792
	ds_load_u8 v9, v212 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2512
	ds_load_u8 v12, v212 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v212 offset:4048
	ds_load_u8 v10, v212 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3280
	ds_load_u8 v11, v212 offset:3152
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3536
	ds_load_u8 v12, v212 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4816
	ds_load_u8 v9, v212 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5072
	ds_load_u8 v10, v212 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4304
	ds_load_u8 v11, v212 offset:4176
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v212 offset:5840
	ds_load_u8 v9, v212 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4560
	ds_load_u8 v12, v212 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v212 offset:6096
	ds_load_u8 v10, v212 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5328
	ds_load_u8 v11, v212 offset:5200
	v_lshl_or_b32 v32, v9, 16, v0
	ds_load_u8 v0, v212 offset:6864
	ds_load_u8 v9, v212 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5584
	ds_load_u8 v12, v212 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	ds_load_u8 v9, v212 offset:7120
	ds_load_u8 v10, v212 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6352
	ds_load_u8 v11, v212 offset:6224
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v212 offset:7888
	ds_load_u8 v9, v212 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6608
	ds_load_u8 v12, v212 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v212 offset:8144
	ds_load_u8 v10, v212 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7376
	ds_load_u8 v11, v212 offset:7248
	v_lshl_or_b32 v44, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7632
	ds_load_u8 v12, v212 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:736
	ds_load_u8 v9, v212 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:992
	ds_load_u8 v10, v212 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:224
	ds_load_u8 v11, v212 offset:96
	v_lshl_or_b32 v32, v9, 16, v0
	ds_load_u8 v0, v212 offset:1760
	ds_load_u8 v9, v212 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:480
	ds_load_u8 v12, v212 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	ds_load_u8 v9, v212 offset:2016
	ds_load_u8 v10, v212 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1248
	ds_load_u8 v11, v212 offset:1120
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v212 offset:2784
	ds_load_u8 v9, v212 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:1504
	ds_load_u8 v12, v212 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v212 offset:3040
	ds_load_u8 v10, v212 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2272
	ds_load_u8 v11, v212 offset:2144
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v212 offset:3808
	ds_load_u8 v9, v212 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:2528
	ds_load_u8 v12, v212 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v212 offset:4064
	ds_load_u8 v10, v212 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3296
	ds_load_u8 v11, v212 offset:3168
	v_lshl_or_b32 v46, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:3552
	ds_load_u8 v12, v212 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4832
	ds_load_u8 v9, v212 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:5088
	ds_load_u8 v10, v212 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4320
	ds_load_u8 v11, v212 offset:4192
	v_lshl_or_b32 v32, v9, 16, v0
	ds_load_u8 v0, v212 offset:5856
	ds_load_u8 v9, v212 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:4576
	ds_load_u8 v12, v212 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	ds_load_u8 v9, v212 offset:6112
	ds_load_u8 v10, v212 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5344
	ds_load_u8 v11, v212 offset:5216
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v212 offset:6880
	ds_load_u8 v9, v212 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:5600
	ds_load_u8 v12, v212 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v212 offset:7136
	ds_load_u8 v10, v212 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:6368
	ds_load_u8 v11, v212 offset:6240
	v_lshl_or_b32 v49, v9, 16, v0
	ds_load_u8 v0, v212 offset:7904
	ds_load_u8 v9, v212 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:6624
	ds_load_u8 v12, v212 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	ds_load_u8 v9, v212 offset:8160
	ds_load_u8 v10, v212 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:7392
	ds_load_u8 v11, v212 offset:7264
	v_lshl_or_b32 v51, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v212 offset:7648
	ds_load_u8 v12, v212 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:240
	ds_load_u8 v9, v212 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:496
	ds_load_u8 v10, v212 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:752
	ds_load_u8 v11, v212 offset:624
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v212 offset:1264
	ds_load_u8 v9, v212 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt vmcnt(3)
	ds_load_u8 v11, v3
	ds_load_u8 v12, v212 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	ds_load_u8 v9, v212 offset:1520
	ds_load_u8 v10, v212 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:1776
	ds_load_u8 v11, v212 offset:1648
	v_lshl_or_b32 v48, v9, 16, v0
	ds_load_u8 v0, v212 offset:2288
	ds_load_u8 v9, v212 offset:2160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt vmcnt(2)
	ds_load_u8 v11, v4
	ds_load_u8 v12, v212 offset:1904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v11, 16, v10
	ds_load_u8 v9, v212 offset:2544
	ds_load_u8 v10, v212 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2800
	ds_load_u8 v11, v212 offset:2672
	v_lshl_or_b32 v50, v9, 16, v0
	ds_load_u8 v0, v212 offset:3312
	ds_load_u8 v9, v212 offset:3184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt vmcnt(1)
	ds_load_u8 v11, v5
	ds_load_u8 v12, v212 offset:2928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v11, 16, v10
	ds_load_u8 v9, v212 offset:3568
	ds_load_u8 v10, v212 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:3824
	ds_load_u8 v11, v212 offset:3696
	v_lshl_or_b32 v52, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v11, v17
	ds_load_u8 v12, v212 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[22:23], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	ds_load_u8 v0, v212 offset:4336
	ds_load_u8 v9, v212 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:4592
	ds_load_u8 v10, v212 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:4848
	ds_load_u8 v11, v212 offset:4720
	v_lshl_or_b32 v50, v9, 16, v0
	ds_load_u8 v0, v212 offset:5360
	ds_load_u8 v9, v212 offset:5232
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v3 offset:4096
	ds_load_u8 v12, v212 offset:4976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v11, 16, v10
	ds_load_u8 v9, v212 offset:5616
	ds_load_u8 v10, v212 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:5872
	ds_load_u8 v11, v212 offset:5744
	v_lshl_or_b32 v52, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v4 offset:4096
	ds_load_u8 v12, v212 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[22:23], v[54:61] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6384
	ds_load_u8 v22, v212 offset:6256
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v22, v0, 0xc0c0004
	ds_load_u8 v22, v212 offset:6640
	ds_load_u8 v23, v212 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v212 offset:6896
	ds_load_u8 v24, v212 offset:6768
	v_lshl_or_b32 v22, v22, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v5 offset:4096
	ds_load_u8 v25, v212 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[20:21], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7408
	ds_load_u8 v20, v212 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v0, 0xc0c0004
	ds_load_u8 v0, v212 offset:7664
	ds_load_u8 v21, v212 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v0, 0xc0c0004
	ds_load_u8 v0, v212 offset:7920
	ds_load_u8 v22, v212 offset:7792
	v_lshl_or_b32 v20, v21, 16, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v0, 0xc0c0004
	ds_load_u8 v23, v17 offset:4096
	ds_load_u8 v0, v212 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v0, 16, v22
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v48, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v15
	v_cvt_f32_i32_e32 v83, v11
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v11, 0x80000000, v36, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	v_mov_b32_e32 v14, v2
	v_cvt_f32_i32_e32 v47, v16
	v_cvt_f32_i32_e32 v49, v10
	v_cvt_f32_i32_e32 v84, v12
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v36, s45, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s6, v0
	s_clause 0x1f
	buffer_load_u16 v2, v9, s[40:43], 0 offen
	buffer_load_u16 v251, v9, s[40:43], 0 offen offset:4
	buffer_load_u16 v250, v9, s[40:43], 0 offen offset:8
	buffer_load_u16 v249, v9, s[40:43], 0 offen offset:12
	buffer_load_u16 v248, v9, s[40:43], 0 offen offset:16
	buffer_load_u16 v247, v9, s[40:43], 0 offen offset:20
	buffer_load_u16 v246, v9, s[40:43], 0 offen offset:24
	buffer_load_u16 v245, v9, s[40:43], 0 offen offset:28
	buffer_load_u16 v244, v9, s[40:43], 0 offen offset:32
	buffer_load_u16 v243, v9, s[40:43], 0 offen offset:36
	buffer_load_u16 v242, v9, s[40:43], 0 offen offset:40
	buffer_load_u16 v241, v9, s[40:43], 0 offen offset:44
	buffer_load_u16 v240, v9, s[40:43], 0 offen offset:48
	buffer_load_u16 v239, v9, s[40:43], 0 offen offset:52
	buffer_load_u16 v3, v9, s[40:43], 0 offen offset:56
	buffer_load_u16 v4, v9, s[40:43], 0 offen offset:60
	buffer_load_u16 v5, v9, s[40:43], 0 offen offset:64
	buffer_load_u16 v13, v9, s[40:43], 0 offen offset:68
	buffer_load_u16 v17, v9, s[40:43], 0 offen offset:72
	buffer_load_u16 v15, v9, s[40:43], 0 offen offset:76
	buffer_load_u16 v18, v9, s[40:43], 0 offen offset:80
	buffer_load_u16 v231, v9, s[40:43], 0 offen offset:84
	buffer_load_u16 v230, v9, s[40:43], 0 offen offset:88
	buffer_load_u16 v229, v9, s[40:43], 0 offen offset:92
	buffer_load_u16 v228, v9, s[40:43], 0 offen offset:96
	buffer_load_u16 v227, v9, s[40:43], 0 offen offset:100
	buffer_load_u16 v55, v9, s[40:43], 0 offen offset:104
	buffer_load_u16 v226, v9, s[40:43], 0 offen offset:108
	buffer_load_u16 v225, v9, s[40:43], 0 offen offset:112
	buffer_load_u16 v224, v9, s[40:43], 0 offen offset:116
	buffer_load_u16 v223, v9, s[40:43], 0 offen offset:120
	buffer_load_u16 v222, v9, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v221, v9, s[40:43], 0 offen offset:128
	buffer_load_u16 v220, v9, s[40:43], 0 offen offset:132
	buffer_load_u16 v219, v9, s[40:43], 0 offen offset:136
	buffer_load_u16 v218, v9, s[40:43], 0 offen offset:140
	buffer_load_u16 v217, v9, s[40:43], 0 offen offset:144
	buffer_load_u16 v216, v9, s[40:43], 0 offen offset:148
	buffer_load_u16 v215, v9, s[40:43], 0 offen offset:152
	buffer_load_u16 v214, v9, s[40:43], 0 offen offset:156
	buffer_load_u16 v213, v9, s[40:43], 0 offen offset:160
	buffer_load_u16 v211, v9, s[40:43], 0 offen offset:164
	buffer_load_u16 v210, v9, s[40:43], 0 offen offset:168
	buffer_load_u16 v209, v9, s[40:43], 0 offen offset:172
	buffer_load_u16 v208, v9, s[40:43], 0 offen offset:176
	buffer_load_u16 v207, v9, s[40:43], 0 offen offset:180
	buffer_load_u16 v206, v9, s[40:43], 0 offen offset:184
	buffer_load_u16 v205, v9, s[40:43], 0 offen offset:188
	buffer_load_u16 v204, v9, s[40:43], 0 offen offset:192
	buffer_load_u16 v189, v9, s[40:43], 0 offen offset:196
	buffer_load_u16 v122, v9, s[40:43], 0 offen offset:200
	buffer_load_u16 v73, v9, s[40:43], 0 offen offset:204
	buffer_load_u16 v72, v9, s[40:43], 0 offen offset:208
	buffer_load_u16 v71, v9, s[40:43], 0 offen offset:212
	buffer_load_u16 v69, v9, s[40:43], 0 offen offset:216
	buffer_load_u16 v70, v9, s[40:43], 0 offen offset:220
	buffer_load_u16 v67, v9, s[40:43], 0 offen offset:224
	buffer_load_u16 v68, v9, s[40:43], 0 offen offset:228
	buffer_load_u16 v63, v9, s[40:43], 0 offen offset:232
	buffer_load_u16 v66, v9, s[40:43], 0 offen offset:236
	buffer_load_u16 v61, v9, s[40:43], 0 offen offset:240
	buffer_load_u16 v62, v9, s[40:43], 0 offen offset:244
	buffer_load_u16 v60, v9, s[40:43], 0 offen offset:248
	buffer_load_u16 v59, v9, s[40:43], 0 offen offset:252
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v9, 0x80000000, v86, vcc_lo
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v16, s3, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[9:10], v9, s[28:31], 0 offen
	buffer_load_b64 v[11:12], v11, s[28:31], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v0, v35, s[36:39], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1f
	buffer_load_u16 v19, v16, s[40:43], 0 offen
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v21, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v25, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:28
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v29, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v30, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v31, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v127, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v126, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v125, v16, s[40:43], 0 offen offset:60
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v33, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v37, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v38, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v82, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v81, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v80, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v79, v16, s[40:43], 0 offen offset:92
	buffer_load_u16 v78, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v77, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v76, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v75, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v74, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v252, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v254, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v40, v16, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v39, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v41, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v42, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v58, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v255, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v253, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v101, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v100, v16, s[40:43], 0 offen offset:156
	buffer_load_u16 v99, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v57, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v56, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v98, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v65, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v54, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v53, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v52, v16, s[40:43], 0 offen offset:188
	buffer_load_u16 v51, v16, s[40:43], 0 offen offset:192
	buffer_load_u16 v64, v16, s[40:43], 0 offen offset:196
	buffer_load_u16 v95, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v50, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v94, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v93, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v92, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v91, v16, s[40:43], 0 offen offset:220
	buffer_load_u16 v90, v16, s[40:43], 0 offen offset:224
	buffer_load_u16 v89, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v88, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v87, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v43, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v44, v16, s[40:43], 0 offen offset:244
	buffer_load_u16 v45, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v16, v16, s[40:43], 0 offen offset:252
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v86, s45, v86
	s_add_i32 s3, s3, s5
	s_add_i32 s6, s6, s5
	s_cmp_lg_u32 s0, 0
	v_add_nc_u32_e32 v35, 2, v35
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v85, v[9:10], v[11:12] offset1:8
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v9, 16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:132
	scratch_load_b32 v12, off, off offset:20
	scratch_load_b32 v11, off, off offset:16
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v1, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v251
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	scratch_load_b32 v2, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v250
	scratch_store_b32 off, v2, off offset:12 ; 4-byte Folded Spill
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v202, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v249
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v248
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v201, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v247
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v200, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v246
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v198, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v245
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v199, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v244
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v196, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v243
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v197, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v242
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v194, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v241
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v195, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v240
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	scratch_load_b32 v2, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v192, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v239
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v2
	v_mov_b32_e32 v2, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v193, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v2, s26, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v190, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v191, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v187, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v188, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v13, off, off offset:56
	scratch_load_b32 v251, off, off offset:52
	scratch_load_b32 v250, off, off offset:48
	scratch_load_b32 v249, off, off offset:44
	scratch_load_b32 v248, off, off offset:40
	scratch_load_b32 v247, off, off offset:36
	scratch_load_b32 v246, off, off offset:32
	scratch_load_b32 v245, off, off offset:28
	scratch_load_b32 v244, off, off offset:24
	scratch_load_b32 v3, off, off offset:248
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v185, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:60
	scratch_load_b32 v3, off, off offset:244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v186, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v183, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v231
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v230
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v181, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v182, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v228
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v179, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v227
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v226
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v177, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v225
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v224
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v175, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v223
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v222
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v173, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v221
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v172, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v220
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v171, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v170, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v218
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v169, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v217
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v167, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v166, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v214
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v165, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v213
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v164, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v163, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v210
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v161, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v160, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v159, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v206
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v158, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v205
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v157, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v204
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v156, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v189
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v155, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v122
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v153, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v72
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v71
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v151, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v150, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v70
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v149, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v67
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v148, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v147, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v63
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v146, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v66
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v144, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v61
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v142, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v62
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v140, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v138, v10, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v59
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:64
	scratch_load_b32 v3, off, off offset:100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v136, v10, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:560
	scratch_load_b32 v3, off, off offset:96
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v34, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v15, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:4
	scratch_load_b32 v3, off, off offset:88
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v13, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:8
	scratch_load_b32 v3, off, off offset:84
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v14, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off
	scratch_load_b32 v3, off, off offset:80
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v250, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v251, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v248, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v249, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v246, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v247, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v29
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v244, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v30
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v245, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v11, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v127
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v12, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v126
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v7, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v125
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v8, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v238, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v33
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v6, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v37
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v236, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v38
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v237, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v82
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v234, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v81
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v235, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v80
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v232, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v233, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v143, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v145, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v76
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v139, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v75
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v141, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v74
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v135, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v252
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v137, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v254
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v133, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v40
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v134, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v39
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v131, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v41
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v132, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v42
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v129, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v58
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v130, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v255
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v21, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v253
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v128, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v101
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v22, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v100
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v20, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v99
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v123, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v57
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v124, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v56
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v120, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v98
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v121, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v65
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v118, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v54
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v119, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v53
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v116, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v52
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v117, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v51
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v114, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v64
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v115, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v95
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v112, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v50
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v113, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v94
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v110, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v93
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v111, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v92
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v108, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v91
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v109, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v90
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v106, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v89
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v49
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v107, v10, v0 :: v_dual_mul_f32 v10, v9, v83
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v104, v10, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v87
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v84
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v105, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v43
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v102, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v44
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v103, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v46
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v96, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v0, v9, v47 :: v_dual_lshlrev_b32 v9, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v97, v0, v9
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v18, v0 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x7                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:640
	scratch_load_b32 v2, off, off offset:644
	scratch_load_b32 v3, off, off offset:648
	scratch_load_b32 v4, off, off offset:652
	scratch_load_b32 v95, off, off offset:624
	scratch_load_b64 v[98:99], off, off offset:628
	scratch_load_b32 v99, off, off offset:636
	scratch_load_b32 v101, off, off offset:12
	v_mov_b32_e32 v100, v1
.LBB0_6:                                ; %Flow1457
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v22, off
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v20, off offset:4
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v219, v212 offset:8192
	ds_load_u8_d16 v220, v212 offset:8208
	ds_load_u8_d16 v221, v212 offset:8224
	ds_load_u8_d16 v223, v212 offset:8240
	ds_load_u8_d16 v224, v212 offset:8256
	ds_load_u8_d16 v225, v212 offset:8272
	ds_load_u8_d16 v226, v212 offset:8288
	ds_load_u8_d16 v227, v212 offset:8304
	ds_load_u8_d16 v45, v212 offset:8320
	ds_load_u8_d16 v46, v212 offset:8336
	ds_load_u8_d16 v47, v212 offset:8352
	ds_load_u8_d16 v54, v212 offset:8368
	ds_load_u8_d16 v48, v212 offset:8384
	ds_load_u8_d16 v63, v212 offset:8400
	ds_load_u8_d16 v64, v212 offset:8416
	ds_load_u8_d16 v72, v212 offset:8432
	ds_load_u8_d16 v25, v212 offset:8448
	ds_load_u8_d16 v26, v212 offset:8464
	ds_load_u8_d16 v31, v212 offset:8480
	ds_load_u8_d16 v33, v212 offset:8496
	ds_load_u8_d16 v38, v212 offset:8512
	ds_load_u8_d16 v39, v212 offset:8528
	ds_load_u8_d16 v40, v212 offset:8544
	ds_load_u8_d16 v44, v212 offset:8560
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v255, v34 :: v_dual_and_b32 v88, 16, v95
	ds_load_u8_d16 v21, v212 offset:8576
	ds_load_u8_d16 v22, v212 offset:8592
	ds_load_u8_d16 v23, v212 offset:8608
	ds_load_u8_d16 v24, v212 offset:8624
	ds_load_u8_d16 v34, v212 offset:8640
	ds_load_u8_d16 v35, v212 offset:8656
	ds_load_u8_d16 v36, v212 offset:8672
	ds_load_u8_d16 v37, v212 offset:8688
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v253, v14 :: v_dual_mov_b32 v252, v13
	v_dual_mov_b32 v243, v12 :: v_dual_mov_b32 v242, v11
	v_dual_mov_b32 v125, v6 :: v_dual_mov_b32 v254, v15
	v_dual_mov_b32 v127, v8 :: v_dual_mov_b32 v126, v7
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v216, 0, v3
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v215, 0, v4
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v217, 0, v2
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v218, 0, v0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v1, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v0, v212 offset:640
	ds_load_u8 v1, v212 offset:512
	ds_load_u8 v2, v212 offset:896
	ds_load_u8 v3, v212 offset:768
	ds_load_u8 v4, v212 offset:128
	ds_load_u8 v5, v212
	ds_load_u8 v6, v212 offset:384
	ds_load_u8 v7, v212 offset:256
	ds_load_u8 v12, v212 offset:1664
	ds_load_u8 v13, v212 offset:1536
	ds_load_u8 v17, v212 offset:1920
	ds_load_u8 v18, v212 offset:1792
	ds_load_u8 v19, v212 offset:1152
	ds_load_u8 v20, v212 offset:1024
	ds_load_u8 v27, v212 offset:1408
	ds_load_u8 v28, v212 offset:1280
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v10, v219, v220, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v11, v221, v223, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v8, v224, v225, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v9, v226, v227, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v14, v64, v72, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v15, v11, 16, v10
	v_perm_b32 v11, v48, v63, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_mov_b32 s9, s4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v5, v4, 0xc0c0004
	s_mov_b32 s11, s4
	v_lshl_or_b32 v16, v9, 16, v8
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v7, v6, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v11
	v_perm_b32 v11, v47, v54, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_lshl_or_b32 v9, v0, 16, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_perm_b32 v0, v45, v46, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[9:10], v[15:16], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v11, 16, v0
	v_lshl_or_b32 v10, v17, 16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v19, 16, v18
	v_perm_b32 v0, v38, v39, 0xc0c0004
	v_perm_b32 v11, v31, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[9:10], v[13:14], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v9, v40, v44, 0xc0c0004
	v_perm_b32 v10, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v9, 16, v0
	ds_load_u8 v0, v212 offset:2688
	ds_load_u8 v9, v212 offset:2560
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212 offset:2944
	ds_load_u8 v10, v212 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v212 offset:2176
	ds_load_u8 v17, v212 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v10, 0xc0c0004
	ds_load_u8 v10, v212 offset:2432
	ds_load_u8 v18, v212 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	v_perm_b32 v0, v34, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[55:62], v[9:10], v[11:12], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v9, v36, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	v_perm_b32 v0, v21, v22, 0xc0c0004
	v_perm_b32 v9, v23, v24, 0xc0c0004
	v_lshl_or_b32 v9, v9, 16, v0
	ds_load_u8 v0, v212 offset:3712
	ds_load_u8 v17, v212 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:3968
	ds_load_u8 v18, v212 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3200
	ds_load_u8 v19, v212 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3456
	ds_load_u8 v20, v212 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:656
	ds_load_u8 v17, v212 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v29, v55
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v93, v57
	v_cvt_f32_i32_e32 v94, v58
	v_cvt_f32_i32_e32 v92, v59
	v_cvt_f32_i32_e32 v91, v60
	v_cvt_f32_i32_e32 v90, v61
	v_cvt_f32_i32_e32 v89, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:912
	ds_load_u8 v18, v212 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:16
	ds_load_u8 v19, v212 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v18, v19, 0xc0c0004
	ds_load_u8 v18, v212 offset:400
	ds_load_u8 v20, v212 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1680
	ds_load_u8 v19, v212 offset:1552
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:1936
	ds_load_u8 v20, v212 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1168
	ds_load_u8 v27, v212 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1424
	ds_load_u8 v28, v212 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2704
	ds_load_u8 v17, v212 offset:2576
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:2960
	ds_load_u8 v18, v212 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2192
	ds_load_u8 v19, v212 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2448
	ds_load_u8 v20, v212 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3728
	ds_load_u8 v17, v212 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:3984
	ds_load_u8 v18, v212 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3216
	ds_load_u8 v19, v212 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3472
	ds_load_u8 v20, v212 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:672
	ds_load_u8 v17, v212 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v82, v55
	v_cvt_f32_i32_e32 v87, v56
	v_cvt_f32_i32_e32 v71, v57
	v_cvt_f32_i32_e32 v76, v58
	v_cvt_f32_i32_e32 v51, v59
	v_cvt_f32_i32_e32 v53, v60
	v_cvt_f32_i32_e32 v41, v61
	v_cvt_f32_i32_e32 v43, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:928
	ds_load_u8 v18, v212 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:32
	ds_load_u8 v19, v212 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v18, v19, 0xc0c0004
	ds_load_u8 v18, v212 offset:416
	ds_load_u8 v20, v212 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1696
	ds_load_u8 v19, v212 offset:1568
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:1952
	ds_load_u8 v20, v212 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1184
	ds_load_u8 v27, v212 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1440
	ds_load_u8 v28, v212 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2720
	ds_load_u8 v17, v212 offset:2592
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:2976
	ds_load_u8 v18, v212 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2208
	ds_load_u8 v19, v212 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2464
	ds_load_u8 v20, v212 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3744
	ds_load_u8 v17, v212 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:4000
	ds_load_u8 v18, v212 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3232
	ds_load_u8 v19, v212 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3488
	ds_load_u8 v20, v212 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:688
	ds_load_u8 v17, v212 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v55
	v_cvt_f32_i32_e32 v65, v56
	v_cvt_f32_i32_e32 v228, v57
	v_cvt_f32_i32_e32 v230, v58
	v_cvt_f32_i32_e32 v79, v59
	v_cvt_f32_i32_e32 v77, v60
	v_cvt_f32_i32_e32 v68, v61
	v_cvt_f32_i32_e32 v73, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:944
	ds_load_u8 v18, v212 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:48
	ds_load_u8 v19, v212 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v18, v19, 0xc0c0004
	ds_load_u8 v18, v212 offset:432
	ds_load_u8 v20, v212 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1712
	ds_load_u8 v19, v212 offset:1584
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:1968
	ds_load_u8 v20, v212 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1200
	ds_load_u8 v27, v212 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1456
	ds_load_u8 v28, v212 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2736
	ds_load_u8 v17, v212 offset:2608
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:2992
	ds_load_u8 v18, v212 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2224
	ds_load_u8 v19, v212 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2480
	ds_load_u8 v20, v212 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3760
	ds_load_u8 v17, v212 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:4016
	ds_load_u8 v18, v212 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3248
	ds_load_u8 v19, v212 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3504
	ds_load_u8 v20, v212 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:704
	ds_load_u8 v17, v212 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v208, v55
	v_cvt_f32_i32_e32 v209, v56
	v_cvt_f32_i32_e32 v207, v57
	v_cvt_f32_i32_e32 v206, v58
	v_cvt_f32_i32_e32 v189, v59
	v_cvt_f32_i32_e32 v239, v60
	v_cvt_f32_i32_e32 v85, v61
	v_cvt_f32_i32_e32 v84, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:960
	ds_load_u8 v18, v212 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:192
	ds_load_u8 v19, v212 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:448
	ds_load_u8 v20, v212 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1728
	ds_load_u8 v19, v212 offset:1600
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:1984
	ds_load_u8 v20, v212 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1216
	ds_load_u8 v27, v212 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1472
	ds_load_u8 v28, v212 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2752
	ds_load_u8 v17, v212 offset:2624
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:3008
	ds_load_u8 v18, v212 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2240
	ds_load_u8 v19, v212 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2496
	ds_load_u8 v20, v212 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3776
	ds_load_u8 v17, v212 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:4032
	ds_load_u8 v18, v212 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3264
	ds_load_u8 v19, v212 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3520
	ds_load_u8 v20, v212 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:720
	ds_load_u8 v17, v212 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v205, v55
	v_cvt_f32_i32_e32 v204, v56
	v_cvt_f32_i32_e32 v231, v57
	v_cvt_f32_i32_e32 v229, v58
	v_cvt_f32_i32_e32 v83, v59
	v_cvt_f32_i32_e32 v81, v60
	v_cvt_f32_i32_e32 v74, v61
	v_cvt_f32_i32_e32 v70, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:976
	ds_load_u8 v18, v212 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:208
	ds_load_u8 v19, v212 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:464
	ds_load_u8 v20, v212 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1744
	ds_load_u8 v19, v212 offset:1616
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:2000
	ds_load_u8 v20, v212 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1232
	ds_load_u8 v27, v212 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1488
	ds_load_u8 v28, v212 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2768
	ds_load_u8 v17, v212 offset:2640
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:3024
	ds_load_u8 v18, v212 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2256
	ds_load_u8 v19, v212 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2512
	ds_load_u8 v20, v212 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3792
	ds_load_u8 v17, v212 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:4048
	ds_load_u8 v18, v212 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3280
	ds_load_u8 v19, v212 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3536
	ds_load_u8 v20, v212 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:736
	ds_load_u8 v17, v212 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v222, v55
	v_cvt_f32_i32_e32 v86, v56
	v_cvt_f32_i32_e32 v80, v57
	v_cvt_f32_i32_e32 v78, v58
	v_cvt_f32_i32_e32 v67, v59
	v_cvt_f32_i32_e32 v66, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v49, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:992
	ds_load_u8 v18, v212 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:224
	ds_load_u8 v19, v212 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:480
	ds_load_u8 v20, v212 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v212 offset:1760
	ds_load_u8 v19, v212 offset:1632
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v212 offset:2016
	ds_load_u8 v20, v212 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:1248
	ds_load_u8 v27, v212 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v20, 0xc0c0004
	ds_load_u8 v20, v212 offset:1504
	ds_load_u8 v28, v212 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	ds_load_u8 v0, v212 offset:2784
	ds_load_u8 v17, v212 offset:2656
	v_lshl_or_b32 v19, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[19:20], v[13:14], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:3040
	ds_load_u8 v18, v212 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:2272
	ds_load_u8 v19, v212 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:2528
	ds_load_u8 v20, v212 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[11:12], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3808
	ds_load_u8 v17, v212 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:4064
	ds_load_u8 v18, v212 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3296
	ds_load_u8 v19, v212 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:3552
	ds_load_u8 v20, v212 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[55:62], v[17:18], v[9:10], v[55:62] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:240
	ds_load_u8 v17, v212 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v75, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v52, v58
	v_cvt_f32_i32_e32 v42, v59
	v_cvt_f32_i32_e32 v32, v60
	v_cvt_f32_i32_e32 v27, v61
	v_cvt_f32_i32_e32 v28, v62
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v212 offset:496
	ds_load_u8 v18, v212 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:752
	ds_load_u8 v19, v212 offset:624
	v_lshl_or_b32 v17, v17, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v218
	ds_load_u8 v20, v212 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:1264
	ds_load_u8 v15, v212 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v212 offset:1520
	ds_load_u8 v16, v212 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v212 offset:1776
	ds_load_u8 v17, v212 offset:1648
	v_lshl_or_b32 v15, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v217
	ds_load_u8 v18, v212 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:2288
	ds_load_u8 v13, v212 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	ds_load_u8 v13, v212 offset:2544
	ds_load_u8 v14, v212 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v212 offset:2800
	ds_load_u8 v15, v212 offset:2672
	v_lshl_or_b32 v13, v13, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v216
	ds_load_u8 v16, v212 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:3312
	ds_load_u8 v11, v212 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v11, v212 offset:3568
	ds_load_u8 v12, v212 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v212 offset:3824
	ds_load_u8 v13, v212 offset:3696
	v_lshl_or_b32 v11, v11, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v215
	ds_load_u8 v14, v212 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v13, 16, v12
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v213, v1
	v_cvt_f32_i32_e32 v214, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v3
	v_cvt_f32_i32_e32 v211, v4
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v0, v8
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v239, off offset:188
	scratch_store_b32 off, v231, off offset:184
	scratch_store_b32 off, v230, off offset:180
	scratch_store_b32 off, v229, off offset:176
	scratch_store_b32 off, v228, off offset:172
	scratch_store_b32 off, v222, off offset:168
	scratch_store_b32 off, v87, off offset:164
	scratch_store_b32 off, v86, off offset:160
	scratch_store_b32 off, v85, off offset:156
	scratch_store_b32 off, v84, off offset:152
	scratch_store_b32 off, v83, off offset:148
	scratch_store_b32 off, v82, off offset:144
	scratch_store_b32 off, v81, off offset:140
	scratch_store_b32 off, v80, off offset:136
	scratch_store_b32 off, v79, off offset:132
	scratch_store_b32 off, v78, off offset:128
	scratch_store_b32 off, v77, off offset:124
	scratch_store_b32 off, v76, off offset:120
	scratch_store_b32 off, v75, off offset:116
	scratch_store_b32 off, v56, off offset:112
	scratch_store_b32 off, v74, off offset:108
	scratch_store_b32 off, v73, off offset:104
	scratch_store_b32 off, v71, off offset:100
	scratch_store_b32 off, v70, off offset:96
	scratch_store_b32 off, v68, off offset:92
	scratch_store_b32 off, v67, off offset:88
	scratch_store_b32 off, v66, off offset:84
	scratch_store_b32 off, v55, off offset:80
	scratch_store_b32 off, v53, off offset:76
	scratch_store_b32 off, v52, off offset:72
	scratch_store_b32 off, v51, off offset:68
	scratch_store_b32 off, v50, off offset:64
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v49, off offset:60
	scratch_store_b32 off, v43, off offset:56
	scratch_store_b32 off, v42, off offset:52
	scratch_store_b32 off, v41, off offset:48
	scratch_store_b32 off, v32, off offset:44
	scratch_store_b32 off, v28, off offset:40
	scratch_store_b32 off, v27, off offset:36
	scratch_store_b32 off, v3, off offset:32
	scratch_store_b32 off, v2, off offset:28
	scratch_store_b32 off, v1, off offset:24
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v30, off offset:16
	scratch_store_b32 off, v29, off offset:12
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v4, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v0, v224, v225, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v1, v226, v227, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v71, v1, 16, v0
	v_perm_b32 v0, v219, v220, 0xc0c0004
	v_perm_b32 v1, v221, v223, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v52, v88 :: v_dual_mov_b32 v53, v89
	v_lshl_or_b32 v70, v1, 16, v0
	ds_load_u8 v0, v212 offset:4736
	ds_load_u8 v1, v212 offset:4608
	v_dual_mov_b32 v56, v90 :: v_dual_mov_b32 v59, v92
	v_dual_mov_b32 v58, v91 :: v_dual_mov_b32 v61, v94
	v_dual_mov_b32 v60, v93 :: v_dual_mov_b32 v57, v234
	v_dual_mov_b32 v219, v237 :: v_dual_mov_b32 v220, v238
	v_mov_b32_e32 v55, v233
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v212 offset:4992
	ds_load_u8 v2, v212 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v1, 16, v0
	ds_load_u8 v1, v212 offset:4224
	ds_load_u8 v2, v212 offset:4096
	ds_load_u8 v19, v212 offset:4112
	ds_load_u8 v27, v212 offset:4128
	ds_load_u8 v0, v212 offset:4144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v212 offset:4480
	ds_load_u8 v3, v212 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v48, v63, 0xc0c0004
	v_perm_b32 v18, v64, v72, 0xc0c0004
	v_dual_mov_b32 v63, v235 :: v_dual_mov_b32 v64, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v18, 16, v17
	v_perm_b32 v17, v45, v46, 0xc0c0004
	v_perm_b32 v18, v47, v54, 0xc0c0004
	v_mov_b32_e32 v54, v232
	v_lshl_or_b32 v72, v18, 16, v17
	ds_load_u8 v17, v212 offset:5760
	ds_load_u8 v18, v212 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:6016
	ds_load_u8 v20, v212 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v212 offset:5248
	ds_load_u8 v20, v212 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v212 offset:5504
	ds_load_u8 v28, v212 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v28, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v17, v38, v39, 0xc0c0004
	v_perm_b32 v18, v40, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	v_perm_b32 v17, v25, v26, 0xc0c0004
	v_perm_b32 v18, v31, v33, 0xc0c0004
	v_lshl_or_b32 v68, v18, 16, v17
	ds_load_u8 v17, v212 offset:6784
	ds_load_u8 v18, v212 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:7040
	ds_load_u8 v20, v212 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v212 offset:6272
	ds_load_u8 v20, v212 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v212 offset:6528
	ds_load_u8 v25, v212 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v17, v34, v35, 0xc0c0004
	v_perm_b32 v18, v36, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v17
	v_perm_b32 v17, v21, v22, 0xc0c0004
	v_perm_b32 v18, v23, v24, 0xc0c0004
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v212 offset:7808
	ds_load_u8 v18, v212 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:8064
	ds_load_u8 v20, v212 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v212 offset:7296
	ds_load_u8 v20, v212 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v212 offset:7552
	ds_load_u8 v21, v212 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[66:67], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v212 offset:4752
	ds_load_u8 v18, v212 offset:4624
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v241, v10
	v_cvt_f32_i32_e32 v239, v11
	v_cvt_f32_i32_e32 v240, v12
	v_cvt_f32_i32_e32 v80, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:5008
	ds_load_u8 v20, v212 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v212 offset:4240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:4496
	ds_load_u8 v19, v212 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v212 offset:5776
	ds_load_u8 v26, v212 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v212 offset:6032
	ds_load_u8 v28, v212 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v212 offset:5264
	ds_load_u8 v28, v212 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v212 offset:5520
	ds_load_u8 v29, v212 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v28, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[72:73], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v212 offset:6800
	ds_load_u8 v26, v212 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v212 offset:7056
	ds_load_u8 v28, v212 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v212 offset:6288
	ds_load_u8 v28, v212 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v212 offset:6544
	ds_load_u8 v29, v212 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v28, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[68:69], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v212 offset:7824
	ds_load_u8 v26, v212 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v212 offset:8080
	ds_load_u8 v28, v212 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v212 offset:7312
	ds_load_u8 v28, v212 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v212 offset:7568
	ds_load_u8 v29, v212 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v28, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[66:67], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v212 offset:4768
	ds_load_u8 v26, v212 offset:4640
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v84, v17
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v83, v20
	v_cvt_f32_i32_e32 v77, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v76, v24
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v212 offset:5024
	ds_load_u8 v28, v212 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v26, 16, v25
	ds_load_u8 v25, v212 offset:4256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v26, v212 offset:4512
	ds_load_u8 v27, v212 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v212 offset:5792
	ds_load_u8 v34, v212 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v212 offset:6048
	ds_load_u8 v35, v212 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v212 offset:5280
	ds_load_u8 v35, v212 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v212 offset:5536
	ds_load_u8 v36, v212 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[72:73], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v212 offset:6816
	ds_load_u8 v34, v212 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v212 offset:7072
	ds_load_u8 v35, v212 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v212 offset:6304
	ds_load_u8 v35, v212 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v212 offset:6560
	ds_load_u8 v36, v212 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[68:69], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v212 offset:7840
	ds_load_u8 v34, v212 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v212 offset:8096
	ds_load_u8 v35, v212 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v212 offset:7328
	ds_load_u8 v35, v212 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v212 offset:7584
	ds_load_u8 v36, v212 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[66:67], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v212 offset:4784
	ds_load_u8 v34, v212 offset:4656
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v82, v25
	v_cvt_f32_i32_e32 v75, v26
	v_cvt_f32_i32_e32 v230, v27
	v_cvt_f32_i32_e32 v81, v28
	v_cvt_f32_i32_e32 v229, v30
	v_cvt_f32_i32_e32 v222, v31
	v_cvt_f32_i32_e32 v228, v32
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v212 offset:5040
	ds_load_u8 v35, v212 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v212 offset:4272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	ds_load_u8 v33, v212 offset:4528
	ds_load_u8 v35, v212 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[87:94], v[33:34], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:5808
	ds_load_u8 v33, v212 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6064
	ds_load_u8 v34, v212 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:5296
	ds_load_u8 v33, v212 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5552
	ds_load_u8 v35, v212 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[87:94], v[33:34], v[72:73], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6832
	ds_load_u8 v33, v212 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7088
	ds_load_u8 v34, v212 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:6320
	ds_load_u8 v33, v212 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6576
	ds_load_u8 v35, v212 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[87:94], v[33:34], v[68:69], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7856
	ds_load_u8 v33, v212 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:8112
	ds_load_u8 v34, v212 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:7344
	ds_load_u8 v33, v212 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7600
	ds_load_u8 v35, v212 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[87:94], v[33:34], v[66:67], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:4800
	ds_load_u8 v33, v212 offset:4672
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v62, v94
	v_mov_b32_e32 v94, v61
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5056
	ds_load_u8 v34, v212 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:4288
	ds_load_u8 v33, v212 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:4544
	ds_load_u8 v35, v212 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:5824
	ds_load_u8 v33, v212 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6080
	ds_load_u8 v34, v212 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:5312
	ds_load_u8 v33, v212 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5568
	ds_load_u8 v35, v212 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[72:73], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6848
	ds_load_u8 v33, v212 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7104
	ds_load_u8 v34, v212 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:6336
	ds_load_u8 v33, v212 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6592
	ds_load_u8 v35, v212 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[68:69], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7872
	ds_load_u8 v33, v212 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:8128
	ds_load_u8 v34, v212 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:7360
	ds_load_u8 v33, v212 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7616
	ds_load_u8 v35, v212 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[66:67], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:4816
	ds_load_u8 v33, v212 offset:4688
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v61, v42
	v_cvt_f32_i32_e32 v79, v47
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5072
	ds_load_u8 v34, v212 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:4304
	ds_load_u8 v33, v212 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:4560
	ds_load_u8 v35, v212 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[231:238], v[33:34], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:5840
	ds_load_u8 v33, v212 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6096
	ds_load_u8 v34, v212 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:5328
	ds_load_u8 v33, v212 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5584
	ds_load_u8 v35, v212 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[231:238], v[33:34], v[72:73], v[231:238] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6864
	ds_load_u8 v33, v212 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7120
	ds_load_u8 v34, v212 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:6352
	ds_load_u8 v33, v212 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:6608
	ds_load_u8 v35, v212 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[231:238], v[33:34], v[68:69], v[231:238] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7888
	ds_load_u8 v33, v212 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:8144
	ds_load_u8 v34, v212 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	ds_load_u8 v0, v212 offset:7376
	ds_load_u8 v33, v212 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:7632
	ds_load_u8 v35, v212 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[231:238], v[33:34], v[66:67], v[231:238] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:4832
	ds_load_u8 v33, v212 offset:4704
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v42, v233
	v_mov_b32_e32 v233, v55
	v_cvt_f32_i32_e32 v27, v237
	v_cvt_f32_i32_e32 v32, v238
	v_dual_mov_b32 v238, v220 :: v_dual_mov_b32 v237, v219
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:5088
	ds_load_u8 v34, v212 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v33, 16, v0
	ds_load_u8 v0, v212 offset:4320
	ds_load_u8 v33, v212 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	ds_load_u8 v33, v212 offset:4576
	ds_load_u8 v34, v212 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:5856
	ds_load_u8 v49, v212 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:6112
	ds_load_u8 v50, v212 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v212 offset:5344
	ds_load_u8 v49, v212 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:5600
	ds_load_u8 v51, v212 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[72:73], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6880
	ds_load_u8 v49, v212 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:7136
	ds_load_u8 v50, v212 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v212 offset:6368
	ds_load_u8 v49, v212 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:6624
	ds_load_u8 v51, v212 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[68:69], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7904
	ds_load_u8 v49, v212 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:8160
	ds_load_u8 v50, v212 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v212 offset:7392
	ds_load_u8 v49, v212 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:7648
	ds_load_u8 v51, v212 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[66:67], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:4336
	ds_load_u8 v49, v212 offset:4208
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v30, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v28, v36
	v_cvt_f32_i32_e32 v18, v37
	v_cvt_f32_i32_e32 v10, v39
	v_cvt_f32_i32_e32 v17, v40
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:4592
	ds_load_u8 v50, v212 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v212 offset:4848
	ds_load_u8 v50, v212 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	ds_load_u8 v50, v218 offset:4096
	ds_load_u8 v51, v212 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:5360
	ds_load_u8 v49, v212 offset:5232
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v71, v87
	v_cvt_f32_i32_e32 v70, v90
	v_mov_b32_e32 v90, v56
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v87, v231
	v_cvt_f32_i32_e32 v43, v234
	v_mov_b32_e32 v234, v57
	v_cvt_f32_i32_e32 v231, v235
	v_mov_b32_e32 v235, v63
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:5616
	ds_load_u8 v50, v212 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v212 offset:5872
	ds_load_u8 v50, v212 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	ds_load_u8 v50, v217 offset:4096
	ds_load_u8 v51, v212 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[72:73], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:6384
	ds_load_u8 v49, v212 offset:6256
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v73, v88
	v_mov_b32_e32 v88, v52
	v_cvt_f32_i32_e32 v52, v45
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:6640
	ds_load_u8 v50, v212 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v212 offset:6896
	ds_load_u8 v50, v212 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	ds_load_u8 v50, v216 offset:4096
	ds_load_u8 v51, v212 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[68:69], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v212 offset:7408
	ds_load_u8 v49, v212 offset:7280
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v69, v9
	v_cvt_f32_i32_e32 v68, v89
	v_mov_b32_e32 v89, v53
	v_cvt_f32_i32_e32 v53, v46
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v212 offset:7664
	ds_load_u8 v50, v212 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v212 offset:7920
	ds_load_u8 v50, v212 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	ds_load_u8 v50, v215 offset:4096
	ds_load_u8 v51, v212 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v50, v50, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v29, v33
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[66:67], v[1:8] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v49, v19
	v_cvt_f32_i32_e32 v66, v91
	v_mov_b32_e32 v91, v58
	v_cvt_f32_i32_e32 v67, v92
	v_mov_b32_e32 v92, v59
	v_cvt_f32_i32_e32 v58, v93
	v_mov_b32_e32 v93, v60
	v_cvt_f32_i32_e32 v60, v41
	v_cvt_f32_i32_e32 v59, v44
	v_cvt_f32_i32_e32 v50, v232
	v_mov_b32_e32 v232, v54
	v_cvt_f32_i32_e32 v41, v236
	v_mov_b32_e32 v236, v64
	v_cvt_f32_i32_e32 v19, v38
	v_cvt_f32_i32_e32 v12, v1
	v_cvt_f32_i32_e32 v13, v2
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v11, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_10:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v2, s44, v98
	s_mul_i32 s0, s34, s44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s5, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s4, s12
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s0, s1, s35
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s3, s1, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s3, v99, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s6
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v8, v69, v2 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v8, v7, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v255, v7, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v8, v8, v7
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v15
	s_waitcnt lgkmcnt(6)
	v_fma_f32 v22, -v15, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v7, v8, v7
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v58, v58, v2
	v_mul_f32_e32 v60, v60, v2
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v56, v56, v2 :: v_dual_mul_f32 v23, v22, v21
	v_mul_f32_e32 v52, v52, v2
	v_mul_f32_e32 v50, v50, v2
	v_mul_f32_e32 v42, v42, v2
	v_mul_f32_e32 v41, v41, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_waitcnt lgkmcnt(4)
	v_fma_f32 v24, -v15, v23, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v30, v2
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v20, v20, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v18, v18, v2 :: v_dual_fmac_f32 v23, v24, v21
	v_mul_f32_e32 v10, v10, v2
	v_mul_f32_e32 v12, v12, v2
	v_mul_f32_e32 v6, v6, v2
	v_mul_f32_e32 v14, v14, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v15, v23, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v241, v2
	v_mul_f32_e32 v16, v16, v2
	v_mul_f32_e32 v0, v0, v2
	v_mul_f32_e32 v67, v67, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v15, v15, v21, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v66, v66, v2 :: v_dual_add_nc_u32 v21, 4, v3
	v_mul_f32_e32 v61, v61, v2
	v_mul_f32_e32 v59, v59, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v15, v8, v7
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v239, v2 :: v_dual_add_nc_u32 v8, 8, v3
	v_mul_f32_e32 v51, v51, v2
	v_mul_f32_e32 v43, v43, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v32, v2
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v19, v19, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v17, v2
	v_mul_f32_e32 v13, v13, v2
	v_mul_f32_e32 v11, v11, v2
	v_mul_f32_e32 v9, v9, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v1, v1, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v4, v2 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v254
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v254, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v15, v8, v252
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v252, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v8, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v23, v26, v25
	v_fmac_f32_e32 v26, v31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v25, v240, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v25, v24, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v253, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v26
	v_fma_f32 v33, -v26, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v24, v25, v24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v34, v33, v31
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v26, v34, v33
	v_fmac_f32_e32 v34, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v34, v33
	v_div_fmas_f32 v26, v26, v31, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v15
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, null, v31, v31, v15
	v_rcp_f32_e32 v33, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v8, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v15, v31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v36, -v8, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v8, -v8, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v8, v33, v35
	v_div_fixup_f32 v8, v23, v22, v21
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 20, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v15, v33, v31, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 28, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	s_clause 0x1
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v14, v14, v21, v251
	v_fma_f32 v16, v16, v31, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v251, v14, s2
	v_cndmask_b32_e64 v31, v249, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v21
	v_mul_f32_e32 v16, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v14, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v14
	v_fma_f32 v34, -v14, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v34, v23
	v_div_scale_f32 v34, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v35, v34, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v14, v35, v34
	v_fmac_f32_e32 v35, v36, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v35, v34
	v_div_fmas_f32 v23, v14, v23, v35
	v_div_fixup_f32 v14, v26, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v25, v80, v2 :: v_dual_add_nc_u32 v24, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v25, v24, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v250, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v26
	v_fma_f32 v35, -v26, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v36, v35, v34
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v26, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v36, v35
	v_div_fmas_f32 v26, v26, v34, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v31
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v33
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v33, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v16, null, v33, v33, v31
	v_rcp_f32_e32 v34, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v16, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v16, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v16, -v16, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v34, v16, v34, v36
	v_div_fixup_f32 v16, v23, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v85, v2 :: v_dual_add_nc_u32 v21, 24, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v248
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v248, v21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v23
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v35, v35, v23
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v36, v22
	v_div_scale_f32 v36, vcc_lo, v23, v35, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v22
	v_fma_f32 v38, -v21, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v22
	v_fma_f32 v21, -v21, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v21, v22, v37
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 36, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v26, v25, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v86, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v23, v36, v35, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v36, v83, v2 :: v_dual_add_nc_u32 v35, 44, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v24, v21, v247
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v247, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v35, v36, v35, v245
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v245, v35, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v21
	v_fma_f32 v37, -v21, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v37, v26
	v_div_scale_f32 v37, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v38, v37, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v21, v38, v37
	v_fmac_f32_e32 v38, v39, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v38, v37
	v_div_fmas_f32 v26, v21, v26, v38
	v_div_fixup_f32 v21, v34, v33, v31
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 32, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v33, v84, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v24, v26, v25, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 40, v3
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v49, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	s_clause 0x1
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v33, v31, v246
	v_fma_f32 v25, v26, v25, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v246, v31, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v38, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v31, v33, v31
	v_mul_f32_e32 v39, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v34, v39, v38
	v_fmac_f32_e32 v39, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v39, v38
	v_div_fmas_f32 v34, v34, v37, v39
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v35
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, null, v36, v36, v35
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v35, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v44, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v44, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v244, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v39, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v39, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v40, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v40, v26
	v_div_scale_f32 v40, vcc_lo, v38, v39, v38
	v_mul_f32_e32 v44, v40, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v25, v44, v40
	v_fmac_f32_e32 v44, v45, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v44, v40
	v_div_fmas_f32 v40, v25, v26, v44
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 52, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v25, v34, v33, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v78, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v31, v26, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v243, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v26
	v_fma_f32 v44, -v26, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v44, v31
	v_div_scale_f32 v44, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v45, v44, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v26, v45, v44
	v_fmac_f32_e32 v45, v46, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v45, v44
	v_div_fmas_f32 v44, v26, v31, v45
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 48, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v26, v37, v36, v35
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v77, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v44, v34, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_add_nc_u32_e32 v33, 64, v3
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v35, v31, v242
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v242, v31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v35
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v36
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v36, v36, v35
	v_rcp_f32_e32 v37, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v31, v37, 1.0
	v_fmac_f32_e32 v37, v45, v37
	v_div_scale_f32 v45, vcc_lo, v35, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v37
	v_fma_f32 v47, -v31, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v37
	v_fma_f32 v31, -v31, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v31, v37, v46
	v_div_fixup_f32 v31, v40, v39, v38
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v39, v76, v2 :: v_dual_add_nc_u32 v38, 60, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v35, v37, v36, v35
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v36, v82, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v36, v33, v238
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v238, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v38, v39, v38, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v127, v38, s2
	scratch_load_b32 v127, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v39, 0xbfb8aa3b, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v40
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v39, v39, v38
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v40, v45, 1.0
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v45
	v_fma_f32 v48, -v40, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v45
	v_fma_f32 v40, -v40, v47, v46
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v46, v74, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v40, v45, v47
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v45, 56, v3
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v45, v46, v45, v126
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v126, v45, s2
	scratch_load_b32 v126, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v54, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v47, v54, v49
	v_fmac_f32_e32 v54, v55, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v47, v54, v49
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v49, v75, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v47, v47, v48, v54
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v48, 0x44, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v39, v40, v39, v38
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v40, 0x48, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v38, v47, v46, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v48, v49, v48, v125
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v125, v48, s2
	scratch_load_b32 v125, off, off         ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v48
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v49, v49, v54
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v54, null, v49, v49, v48
	v_rcp_f32_e32 v55, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v54, v55, 1.0
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, vcc_lo, v48, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v57, v55
	v_fma_f32 v64, -v54, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v55
	v_fma_f32 v54, -v54, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v54, v55, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v37, v37, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v36
	v_fma_f32 v55, -v36, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v55, v44
	v_div_scale_f32 v55, vcc_lo, v33, v37, v33
	v_mul_f32_e32 v57, v55, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v36, v57, v55
	v_fmac_f32_e32 v57, v63, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v36, v57, v55
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v55, v81, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v44, v36, v44, v57
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v36, 0x4c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v44, v37, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v44, v230, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v40, v44, v40, v236
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v236, v40, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v40
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v36, v55, v36, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v237, v36, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v57, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v36
	v_fma_f32 v64, -v36, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v55, v57, v55
	v_mul_f32_e32 v69, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v36, v69, v64
	v_fmac_f32_e32 v69, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v69, v64
	v_div_fmas_f32 v63, v36, v63, v69
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v36, v54, v49, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, null, v44, v44, v40
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v40, v44, v40
	v_div_fixup_f32 v33, v63, v57, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v45, -v45, v48, v47
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v47, v229, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v46, 0x54, v3
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v46, v47, v46, v235
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v235, v46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v48
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v48, v48, v46
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v47, v49, 1.0
	v_fmac_f32_e32 v49, v54, v49
	v_div_scale_f32 v54, vcc_lo, v46, v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v49
	v_fma_f32 v57, -v47, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v57, v49
	v_fma_f32 v47, -v47, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v49, v47, v49, v55
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v47, 0x50, v3
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v0, v47, v234
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v234, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v0
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v54
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v54, v54, v0
	v_rcp_f32_e32 v55, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v47, v55, 1.0
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, vcc_lo, v0, v54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v57, v55
	v_fma_f32 v64, -v47, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v55
	v_fma_f32 v47, -v47, v63, v57
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v57, v228, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v55, v47, v55, v63
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v47, 0x5c, v3
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v57, v47, v233
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v233, v47, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v57
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v63
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v63, v63, v57
	v_rcp_f32_e32 v64, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v47, v64, 1.0
	v_fmac_f32_e32 v64, v69, v64
	v_div_scale_f32 v69, vcc_lo, v57, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v69, v64
	v_fma_f32 v74, -v47, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v64
	v_fma_f32 v47, -v47, v72, v69
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v69, v222, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v64, v47, v64, v72
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v47, 0x58, v3
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v69, v47, v232
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v232, v47, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v69
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v72
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v72, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v72, v72, v69
	v_rcp_f32_e32 v74, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v47, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v69, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v47, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v47, -v47, v76, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v74, v47, v74, v76
	v_div_fixup_f32 v47, v45, v44, v40
	v_div_fixup_f32 v45, v49, v48, v46
	v_div_fixup_f32 v46, v55, v54, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x64, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v48, v73, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v40, v64, v63, v57
	v_div_fixup_f32 v44, v74, v72, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v48, v0, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v145, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v48, v48, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v49
	v_fma_f32 v55, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v0, v48, v0
	v_mul_f32_e32 v57, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v49, v57, v55
	v_fmac_f32_e32 v57, v63, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v49, v57, v55
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v55, v71, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v54, v57
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v54, 0x60, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v54, v55, v54, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v143, v54, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v54, v54, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v54, v54, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v57
	v_fma_f32 v64, -v57, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v55, v54, v55
	v_mul_f32_e32 v69, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v57, v69, v64
	v_fmac_f32_e32 v69, v71, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v69, v64
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v64, v70, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v63, v57, v63, v69
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x6c, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v64, v57, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v141, v57, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v70, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v57
	v_fma_f32 v71, -v57, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v71, v64
	v_div_scale_f32 v71, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v72, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v57, v72, v71
	v_fmac_f32_e32 v72, v73, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v72, v71
	v_div_fmas_f32 v71, v57, v64, v72
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v64, v68, v2 :: v_dual_add_nc_u32 v57, 0x68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v64, v57, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v139, v57, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v64, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v64, v64, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v64, v64, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v68
	v_fma_f32 v73, -v68, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v57, v64, v57
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v68, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v74, v73
	v_div_fmas_f32 v68, v68, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0x74, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v68, v64, v57
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v67, v67, v72, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v137, v67, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v72
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v73, v73, v72
	v_rcp_f32_e32 v74, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v67, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v67, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v67, -v67, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v67, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v67, 0x70, v3
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v66, v66, v67, v135
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v135, v66, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v75
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v76, v76, v75
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v77, v67
	v_div_scale_f32 v77, vcc_lo, v75, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v67
	v_fma_f32 v80, -v66, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v80, v67
	v_fma_f32 v66, -v66, v78, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v77, v66, v67, v78
	v_div_fixup_f32 v67, v49, v48, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x7c, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v48, v62, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v66, v63, v54, v55
	v_div_fixup_f32 v63, v71, v70, v69
	v_div_fixup_f32 v55, v74, v73, v72
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v54, v77, v76, v75
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v48, v0, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v134, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v0
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v48, v48, v49
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v48, v48, v0
	v_rcp_f32_e32 v57, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v49, v57, 1.0
	v_fmac_f32_e32 v57, v62, v57
	v_div_scale_f32 v62, vcc_lo, v0, v48, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v62, v57
	v_fma_f32 v69, -v49, v68, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v57
	v_fma_f32 v49, -v49, v68, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v49, v49, v57, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x78, v3
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v58, v57, v133
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v133, v57, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v57
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v58, v58, v62
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, null, v58, v58, v57
	v_rcp_f32_e32 v68, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v62, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v62, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v62, -v62, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v62, v62, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0x84, v3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v61, v61, v68, v132
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v132, v61, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v68
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v61, v61, v69
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v69, v69, v68
	v_rcp_f32_e32 v70, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v61, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v61, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v61, -v61, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v61, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v61, 0x80, v3
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v60, v60, v61, v131
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v131, v60, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v60
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v61, v61, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v62, v62, v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v61, null, v71, v71, v60
	v_rcp_f32_e32 v72, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v61, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v60, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v61, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v61, -v61, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v61, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v61, 0x8c, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v72, v71, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v59, v59, v61, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v130, v59, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, null, v74, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v59
	v_fma_f32 v75, -v59, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v75, v61
	v_div_scale_f32 v75, vcc_lo, v73, v74, v73
	v_mul_f32_e32 v76, v75, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v59, v76, v75
	v_fmac_f32_e32 v76, v77, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v76, v75
	v_div_fmas_f32 v75, v59, v61, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v59, 0x88, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v56, v56, v59, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v129, v56, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, null, v76, v76, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v59
	v_fma_f32 v77, -v59, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v77, v61
	v_div_scale_f32 v77, vcc_lo, v56, v76, v56
	v_mul_f32_e32 v78, v77, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v59, v78, v77
	v_fmac_f32_e32 v78, v80, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v78, v77
	v_div_fmas_f32 v77, v59, v61, v78
	v_div_fixup_f32 v61, v49, v48, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x94, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v48, v53, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v70, v69, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v48, v0, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v128, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v49, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v49, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v0
	v_fma_f32 v57, -v0, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, vcc_lo, v48, v49, v48
	v_mul_f32_e32 v68, v57, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v0, v68, v57
	v_fmac_f32_e32 v68, v69, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v68, v57
	v_div_fmas_f32 v53, v0, v53, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x90, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v52, v0, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v127, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v52, v52, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v52, v52, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v57
	v_fma_f32 v69, -v57, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v0, v52, v0
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v57, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v70, v69
	v_div_fmas_f32 v57, v57, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0x9c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v0, v57, v52, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v53, v49, v48
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v49, 0xac, v3
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v51, v68, v126
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v126, v51, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v43, v43, v49, v121
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v121, v43, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v68
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v58, v77, v76, v56
	v_div_fixup_f32 v56, v75, v74, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v51
	v_fma_f32 v71, -v51, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v51, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v72, v71
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v71, v79, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v70, v51, v70, v72
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v51, 0x98, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v71, v51, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v125, v51, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v71, v71, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v51, v71, v51
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v72, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v73, 0xa4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v51, v72, v71, v51
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v50, v50, v73, v124
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v124, v50, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v73
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v50, v50, v74
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v50, null, v74, v74, v73
	v_rcp_f32_e32 v75, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v50, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v73, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v75
	v_fma_f32 v78, -v50, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v75
	v_fma_f32 v50, -v50, v77, v76
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v76, v87, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v75, v50, v75, v77
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v50, 0xa0, v3
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v50, v76, v50, v123
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v76, v123, v50, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v76
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v50, v50, v77
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v77, 1.0, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v50, null, v77, v77, v76
	v_rcp_f32_e32 v78, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v50, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v76, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v50, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v50, -v50, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v50, v78, v80
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v70, v69, v68
	v_div_fixup_f32 v78, v78, v77, v76
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v43
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v49, v49, v53
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v53, null, v49, v49, v43
	v_rcp_f32_e32 v57, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v53, v57, 1.0
	v_fmac_f32_e32 v57, v68, v57
	v_div_scale_f32 v68, vcc_lo, v43, v49, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v57
	v_fma_f32 v70, -v53, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v70, v57
	v_div_fixup_f32 v48, v75, v74, v73
	v_fma_f32 v53, -v53, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v53, v57, v69
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0xa8, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v53, v53, v49, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v42, v42, v57, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v120, v42, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v57, v57, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v42, v57, v42
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v69, 0xb4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v68, v68, v57, v42
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v41, v41, v69, v119
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v119, v41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v41
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v69, v69, v41
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v41, v69, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v71
	v_fma_f32 v74, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v71
	v_fma_f32 v70, -v70, v73, v72
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v72, v231, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v71, 0xb0, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v41, v70, v69, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v71, v72, v71, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v118, v71, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v73, null, v72, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v75, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v71, v72, v71
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v73, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v76, v75
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v74, 0xbc, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v43, v73, v72, v71
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v32, v32, v74, v117
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v117, v32, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v32
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v74, v74, v75
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v75, null, v74, v74, v32
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v32, v74, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v77, v76
	v_fma_f32 v80, -v75, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v76
	v_fma_f32 v75, -v75, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v75, v75, v76, v79
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v76, 0xb8, v3
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v27, v76, v116
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v116, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v76, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v27
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v77
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v77, null, v76, v76, v27
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v77, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v27, v76, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v77, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v82, v79
	v_div_fixup_f32 v32, v75, v74, v32
	v_fma_f32 v77, -v77, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v77, v79, v81
	v_div_fixup_f32 v42, v77, v76, v27
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v27, 0xc4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v30, v27, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v115, v27, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v30, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v49
	v_fma_f32 v69, -v49, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v69, v57
	v_div_scale_f32 v69, vcc_lo, v27, v30, v27
	v_mul_f32_e32 v70, v69, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v49, v70, v69
	v_fmac_f32_e32 v70, v71, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v70, v69
	v_div_fmas_f32 v49, v49, v57, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0xc0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v29, v57, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v114, v29, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v57, v57, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v29, v57, v29
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xcc, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v28, v70, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v113, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v70, v70, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v28, v70, v28
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v74, v71, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v71, 0xc8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v20, v71, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v112, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v71, v71, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v75, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, vcc_lo, v20, v71, v20
	v_mul_f32_e32 v76, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v76, v75
	v_fmac_f32_e32 v76, v77, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v76, v75
	v_div_fmas_f32 v75, v72, v73, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0xd4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v71, v75, v71, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v19, v72, v111
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v111, v19, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v19
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v76, v76, v19
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v77, v73
	v_div_scale_f32 v77, vcc_lo, v19, v76, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v77, v73
	v_fma_f32 v80, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v73
	v_fma_f32 v72, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v72, v73, v79
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0xd0, v3
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v18, v72, v110
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v110, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v18
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v79, 1.0, v72
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v70, v74, v70, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v72, null, v79, v79, v18
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, vcc_lo, v18, v79, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v73
	v_fma_f32 v82, -v72, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v73
	v_fma_f32 v72, -v72, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v72, v73, v81
	v_div_fixup_f32 v73, v69, v57, v29
	v_div_fixup_f32 v72, v49, v30, v27
	v_div_fixup_f32 v49, v77, v76, v19
	v_div_fixup_f32 v69, v80, v79, v18
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0xdc, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v17, v18, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v109, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v27, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v27, v20
	v_div_scale_f32 v27, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v28, v27, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v19, v28, v27
	v_fmac_f32_e32 v28, v29, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v28, v27
	v_div_fmas_f32 v19, v19, v20, v28
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0xd8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v74, v19, v18, v17
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_nc_u32_e32 v17, 0xe4, v3
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v10, v10, v20, v108
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v108, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v13, v13, v17, v107
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v107, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v20, v20, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v29, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v10, v20, v10
	v_mul_f32_e32 v30, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v27, v30, v29
	v_fmac_f32_e32 v30, v57, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v30, v29
	v_div_fmas_f32 v27, v27, v28, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v18, null, v17, v17, v13
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v28, v19
	v_div_scale_f32 v28, vcc_lo, v13, v17, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v19
	v_fma_f32 v30, -v18, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v19
	v_fma_f32 v18, -v18, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v18, v19, v29
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xe0, v3
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v19, v106
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v106, v12, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v12
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v19, v19, v12
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v12, v19, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v30, v29
	v_fma_f32 v75, -v28, v57, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v75, v29
	v_fma_f32 v28, -v28, v57, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v28, v29, v57
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v29, 0xec, v3
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v11, v29, v105
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v105, v11, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v11
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v29, v29, v11
	v_rcp_f32_e32 v57, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v30, v57, 1.0
	v_fmac_f32_e32 v57, v75, v57
	v_div_scale_f32 v75, vcc_lo, v11, v29, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v57
	v_fma_f32 v77, -v30, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v57
	v_fma_f32 v30, -v30, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v57, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0xe8, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v30, v29, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v9, v57, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v104, v9, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v75, null, v57, v57, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v9, v57, v9
	v_mul_f32_e32 v79, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v75, v79, v77
	v_fmac_f32_e32 v79, v80, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v75, v79, v77
	v_div_fixup_f32 v77, v27, v20, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v10, 0xf4, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v79, v75, v76, v79
	v_div_fixup_f32 v75, v28, v19, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v76, v18, v17, v13
	v_div_fixup_f32 v9, v79, v57, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v6, v6, v10, v103
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v103, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v6
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v12
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v10, v10, v6
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v17, vcc_lo, v6, v10, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v13
	v_fma_f32 v19, -v12, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v13
	v_fma_f32 v12, -v12, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v13, v18
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v13, 0xf0, v3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v5, v13, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v102, v5, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v13
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v5, null, v17, v17, v13
	v_rcp_f32_e32 v18, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v5, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v13, v17, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v27, -v5, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v27, v18
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v27, s1, v99, 1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v5, -v5, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v19, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v18, v5, v18, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 4, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v20, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v18, v17, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v20, v2 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v12, v10, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v19, v5, v101
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_or_b32_e32 v19, s0, v99
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v101, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v19, v19, s33, 1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v5, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_add_nc_u32_e32 v5, 12, v27
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v20, v19, v100
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v100, v19, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v19, s27, v98
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s27, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 1              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v20, v7 :: v_dual_mul_f32 v20, v94, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v8.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v93, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v20, v5, v203
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 8, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v28, v5, v202
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, 0
	v_mov_b16_e32 v5.l, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v29.h, v5.h
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v8, v29, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v203, v20, s2
	v_cndmask_b32_e64 v20, v202, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v5
	v_add3_u32 v28, v7, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v8, v14 :: v_dual_add_nc_u32 v14, 16, v27
	v_mul_f32_e32 v8, v20, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v92, v2
	v_mul_f32_e32 v20, v91, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v7.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v15, v14, v201
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v15, 20, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v201, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v14, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v89, v2 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v20, v15, v200
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v5
	v_add3_u32 v20, v7, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v200, v15, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v8.h
	v_mov_b16_e32 v15.h, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v7, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.h, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v7.l, 0x7fff, v28.h, s0
	v_cmp_o_f32_e64 s0, v14, v14
	v_mov_b16_e32 v5.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v15, v8, v15, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v90, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:164
	scratch_load_b32 v29, off, off offset:172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v15.h, s3
	v_and_b32_e32 v15, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v16, v15, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 24, v27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v28, v28, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v20, v16, v198
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 28, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v198, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v22, v20, v199
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v14.h
	v_mov_b16_e32 v22.h, v5.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v199, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v14, v22, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v14, 36, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v28, v14, v197
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v15.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v20, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 32, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v22.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v22, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v197, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v15.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_cmp_o_f32_e64 s0, v16, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v22, v2 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v196
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v5
	v_add3_u32 v22, v15, v22, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v20, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v196, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v5.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v24, off, off offset:100 ; 4-byte Folded Reload
	v_mul_f32_e32 v23, v23, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v15.h
	v_cmp_o_f32_e64 s1, v15, v15
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v20, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 44, v27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v23, v20, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v195, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v15, v23, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v15, 40, v27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v24, v15, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v16.h
	v_mov_b16_e32 v24.h, v5.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v194, v15, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v21.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v15.h, 0x7fff, v22.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v25, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:92
	scratch_load_b32 v25, off, off offset:56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v16, v24, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 52, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v21, v21
	v_cndmask_b16 v16.l, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v24, off, off offset:68 ; 4-byte Folded Reload
	v_mul_f32_e32 v29, v29, v2
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v31, v31, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v23, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v193
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 48, v27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v26, off, off offset:48 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v26, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v192
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v20, v24, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v193, v22, s2
	v_cndmask_b32_e64 v22, v192, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e32 v23.h, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v34, v206, v2 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v22, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 60, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v35, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v25, v22, v191
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 56, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v191, v22, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v190
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v20, v26, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v190, v25, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v21.h
	v_mov_b16_e32 v25.h, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v22, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v28, v20, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x44, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v25
	v_cndmask_b16 v20.h, 0x7fff, v24.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v24, v65, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v22.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v21, v25, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v26.h, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x4c, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v122, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v28, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:176
	scratch_load_b32 v39, off, off offset:140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v188
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v39, v39, v2 :: v_dual_add_nc_u32 v24, 64, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v187
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v22, v25, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v188, v23, s2
	v_cndmask_b32_e64 v23, v187, v24, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v28.h
	v_mov_b16_e32 v24.h, v5.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v22, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v36, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v23, v23, v37 :: v_dual_and_b32 v24, 1, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v204, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v22.h
	v_cmp_o_f32_e64 s1, v22, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v24, v28, v24, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v28, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v2
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v28, v26, v186
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x48, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v186, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v185
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v185, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v22, v29, 0x7fff
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v30, v23, v22, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v25.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v28, v47
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v28, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v24.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v26, v33
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x50, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v29, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s3
	v_mov_b16_e32 v5.l, v24.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v30, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v213, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v2
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v28, v26, v183
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x54, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v183, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v24, v29, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v184, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v25.h
	v_mov_b16_e32 v28.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v24, v45
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v28
	v_mov_b16_e32 v5.l, v24.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v30, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v25, v28, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v25, v26, v46 :: v_dual_add_nc_u32 v26, 0x5c, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v46, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v45, v45, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v30, v26, v182
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x58, v27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v5
	v_add3_u32 v31, v24, v31, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v182, v26, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, v181, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v25.h
	v_mov_b16_e32 v30.h, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v33, v24, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v29.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0x64, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v30
	v_cndmask_b16 v24.l, 0x7fff, v28.h, s0
	v_mov_b16_e32 v5.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v25, v30, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v31, v208, v2 :: v_dual_and_b32 v28, 1, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v26, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v209, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v33, v28, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v207, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:160
	scratch_load_b32 v44, off, off offset:128
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v26, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v180
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x60, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v40, v2
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v180, v29, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v67
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v29.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v179
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v26.h
	v_mov_b16_e32 v31.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v179, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v26, v31, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x68, v27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v33, v26, v178
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v33, 0x6c, v27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v34, v33, v177
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v178, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v28.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v30, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v177, v33, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v5
	v_cndmask_b16 v26.l, 0x7fff, v31.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v34, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v28, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v189, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v29, v33, 0x7fff
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v30, v30, v63 :: v_dual_and_b32 v29, 1, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v30.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v28, v29, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x70, v27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v34, v28, v176
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v34, 0x74, v27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v35, v34, v175
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v176, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s0
	v_cndmask_b16 v28.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v175, v34, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v5
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v33, v35, v54
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v35, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v30, v34, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v31, v30, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x78, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v35, v31, v174
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0x7c, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v174, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v31, v62
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v36, v35, v173
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v29, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s0
	v_cmp_o_f32_e64 s0, v33, v33
	v_cndmask_b16 v29.h, 0x7fff, v34.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v173, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v35.h, v5.h
	v_mov_b16_e32 v5.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v34, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v33, v35, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v33, 0x80, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v36, v34, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v205, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v36, v33, v172
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x84, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v172, v33, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v33, v33, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v37, v36, v171
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v30, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v35.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v171, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v31.h
	v_mov_b16_e32 v36.h, v5.h
	v_mov_b16_e32 v5.l, v37.h
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v34, v34, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v35, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v34.h
	v_add3_u32 v36, v31, v36, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x88, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v37, v35, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v37, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v37, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v37, v31, v170
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0x8c, v27
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v38, v37, v169
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v170, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cndmask_b16 v31.l, 0x7fff, v36.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v169, v37, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v37, 1, v5
	v_cmp_o_f32_e64 s0, v33, v33
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v38, v58
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v38, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v35, v35, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v34, v37, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v34.h, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v35.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v33, 0x90, v27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v2 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v38, v33, v168
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0x94, v27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v39, v38, v167
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v168, v33, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s0
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v37, v39, v0 :: v_dual_and_b32 v0, 1, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v167, v38, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:108
	scratch_load_b32 v39, off, off offset:96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v35, v0, 0x7fff
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v35.h, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v34, v34, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v52, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.h, 0x7fff, v0.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v46, v46, v2 :: v_dual_and_b32 v35, 1, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v34.h
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v36, v35, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x98, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.l, 0x7fff, v35.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v38, v38, v2
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v39, v39, v2
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v52, v52, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v38, v36, v166
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0x9c, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v166, v36, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v36, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v51, s34, s33, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v39, v38, v165
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v165, v38, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v35, v35, v50 :: v_dual_and_b32 v38, 1, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v34, v38, 0x7fff
	v_mov_b16_e32 v34.l, v37.h
	v_mov_b16_e32 v34.h, v5.h
	v_mov_b16_e32 v50.h, v5.h
	v_mov_b16_e32 v5.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v39, v37, v34, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v34, 0xa0, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v37, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v37, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v37, v34, v164
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0xa4, v27
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v40, v37, v163
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v164, v34, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.l, 0x7fff, v39.h, s0
	v_and_b32_e32 v39, 1, v5
	v_cndmask_b16 v34.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v40, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v36, v36
	v_add3_u32 v39, v35, v39, 0x7fff
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v35.h, v5.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v163, v37, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v35
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v37, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v36, v35, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xa8, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v36, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v37.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v36, v2 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v36, v35, v162
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0xac, v27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v44, v36, v161
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v162, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s0
	v_and_b32_e32 v40, 1, v5
	v_cndmask_b16 v35.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s0, v38, v38
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v44, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v37, v40, 0x7fff
	v_mov_b16_e32 v37.l, v38.h
	v_mov_b16_e32 v37.h, v5.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v161, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v38, v37, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xb0, v27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v44, v38, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xb4, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v160, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v38, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v39.h
	v_mov_b16_e32 v43.h, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v39, v43, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v159
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v45, v36, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s0
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0xb8, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v159, v44, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v45.h
	v_cndmask_b16 v36.h, 0x7fff, v40.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v37, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v5
	v_cndmask_b16 v37.l, 0x7fff, v43.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v41.h
	v_add3_u32 v40, v45, v40, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v38, v38
	v_cndmask_b16 v37.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v43, v2
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v44, v39, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xbc, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v158, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v39, v39, v42 :: v_dual_and_b32 v42, 1, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v41, v42, 0x7fff
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v5.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v38, v41, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xc0, v27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v157
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v157, v44, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v40, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v32.l, 0x7fff, v41.h, s0
	v_cmp_o_f32_e64 s0, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v5.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v43, v38, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v43, 0xc4, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v156, v38, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v42, v38, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v5
	v_add3_u32 v38, v40, v38, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0xc8, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v45, v45, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v44, v43, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v155, v43, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v41, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v43, v39, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v43, 0xcc, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v154, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v44, v43, v153
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v153, v43, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v39, v71
	v_dual_mul_f32 v40, v40, v70 :: v_dual_and_b32 v39, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v41, v39, 0x7fff
	v_mov_b16_e32 v41.l, v42.h
	v_mov_b16_e32 v41.h, v5.h
	v_mov_b16_e32 v5.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v42, v41, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xd0, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v44, v42, v152
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xd4, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v152, v42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v42, v42, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v151
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v151, v44, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v41, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v44, v40, v44, 0x7fff
	v_mov_b16_e32 v40.l, v43.h
	v_mov_b16_e32 v40.h, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v41.h
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v45, v43, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 0xdc, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v43, v43, v2 :: v_dual_lshlrev_b32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v43, v40, v149
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 0xd8, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v149, v43, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v46, v40, v150
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v44.h, vcc_lo
	v_cndmask_b16 v40.l, 0x7fff, v45.h, s0
	v_and_b32_e32 v45, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v150, v46, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v46, v214, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v41, v45, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v43, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v43, v44, v77 :: v_dual_add_nc_u32 v44, 0xe4, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v41, v41
	v_cmp_o_f32_e64 s3, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v46, v44, v147
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v46, 0xe0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v147, v44, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v47, v46, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.l, v42.h
	v_mov_b16_e32 v47.h, v5.h
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v42, v47, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v148, v46, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v46, v44, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v5
	v_mov_b16_e32 v5.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v41, v44, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v44, v42, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v48.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v50.l, v44.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v49, v43, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v45.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v45, 0xec, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cndmask_b16 v41.l, 0x7fff, v47.h, s0
	v_and_b32_e32 v50, 1, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v46, v43, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v46, v211, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s3
	v_add3_u32 v50, v44, v50, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v50.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v50, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s3, 0, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v46, v45, v144
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v46, v210, v2 :: v_dual_add_nc_u32 v45, 0xe8, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v45, v46, v45, v146
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v46, 0xfc, v3
	v_add_nc_u32_e32 v3, 0xf8, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v146, v45, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v45, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.h, v5.h
	v_mov_b16_e32 v45.l, v9.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v9, v45, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v48, v4, v46, v97
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v46, v3, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v144, v47, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v47, 0xf4, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v97, v48, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v48, 0xf0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v4.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v4, v17, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v1, v46, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v46, 0xf8, v27
	v_add_nc_u32_e32 v27, 0xfc, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v96, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, 0xbfb8aa3b, v1 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v48, v52, v48, v142
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v142, v48, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v3
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v48, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v1
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v11, v49, v11
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v44, v44, v49
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v49, 1, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v11, v11, v3
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v10
	v_div_scale_f32 v12, null, v43, v43, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v18, v12
	v_fma_f32 v4, -v10, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v4, v44
	v_div_scale_f32 v4, vcc_lo, v3, v11, v3
	v_mul_f32_e32 v52, v4, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v10, v52, v4
	v_fmac_f32_e32 v52, v54, v44
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	scratch_load_b32 v54, off, off offset:24 ; 4-byte Folded Reload
	v_mul_f32_e32 v50, v50, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v4, -v10, v52, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v50, v47, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v12, v18, 1.0
	v_div_fmas_f32 v4, v4, v44, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v140, v47, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v18, v50, v18
	v_div_scale_f32 v50, s1, v1, v43, v1
	s_mov_b32 vcc_lo, s1
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v47, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v4, v11, v3
	v_mul_f32_e32 v53, v50, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v4.h, v5.h
	v_cndmask_b32_e64 v11, v20, v22, s3
	v_mov_b16_e32 v5.l, v6.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v47, -v12, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v53, v47, v18 :: v_dual_and_b32 v4, 1, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v47, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v13, v4, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v12, -v12, v53, v50
	v_div_fmas_f32 v12, v12, v18, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v9.h, v5.h
	v_cndmask_b32_e64 v18, v31, v29, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v1, v12, v43, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v12, v25, v23, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v54, v54, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v54, v46, v138
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v138, v10, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v10, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v13, v13
	v_cndmask_b32_e64 v13, v23, v25, s3
	v_cndmask_b32_e64 v25, v36, v32, s3
	v_cndmask_b32_e64 v23, v35, v0, s3
	v_cndmask_b32_e64 v0, v0, v35, s3
	v_cndmask_b32_e64 v17, v28, v30, s3
	v_mov_b16_e32 v9.l, v1.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v2, v47, v2 :: v_dual_and_b32 v9, 1, v9
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v27, v136
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v27, v37, v38, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v136, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v1, v1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v2, v2, v3 :: v_dual_and_b32 v3, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v2.h
	v_add3_u32 v3, v6, v3, 0x7fff
	v_add3_u32 v6, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s0
	v_cndmask_b32_e64 v4, v7, v14, s3
	v_cndmask_b32_e64 v9, v22, v20, s3
	v_cndmask_b32_e64 v22, v33, v34, s3
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v20, v29, v31, s3
	v_and_b32_e32 v5, 1, v5
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b32_e64 v3, v14, v7, s3
	v_cndmask_b32_e64 v7, v21, v16, s3
	v_cndmask_b32_e64 v14, v26, v24, s3
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s2
	v_cndmask_b32_e64 v6, v8, v15, s3
	v_cndmask_b32_e64 v31, v40, v42, s3
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v15, v8, s3
	v_cndmask_b32_e64 v8, v16, v21, s3
	v_cndmask_b32_e64 v15, v24, v26, s3
	v_cndmask_b32_e64 v21, v34, v33, s3
	v_cndmask_b32_e64 v24, v32, v36, s3
	v_cndmask_b32_e64 v32, v1, v19, s3
	v_cndmask_b32_e64 v1, v19, v1, s3
	v_mov_b32_e32 v19, 0x5410
	v_mov_b32_e32 v34, 0x7632
	v_cndmask_b32_e64 v33, v2, v10, s3
	v_cndmask_b32_e64 v2, v10, v2, s3
	v_cndmask_b32_e64 v16, v30, v28, s3
	v_cndmask_b32_e64 v10, 0x1054, v19, s3
	v_cndmask_b32_e64 v19, 0x3276, v34, s3
	v_permlanex16_b32 v34, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v26, v38, v37, s3
	v_cndmask_b32_e64 v30, v42, v40, s3
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v19, v19, 8, v19
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v19, 0x760076, v19
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v10, 4, v10
	v_lshl_or_b32 v10, v19, 4, v19
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v35, 0x5040504, v0
	v_and_b32_e32 v36, 0x7060706, v10
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v29, v39, v41, s3
	v_permlanex16_b32 v37, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v35
	v_perm_b32 v1, v4, v3, v36
	v_perm_b32 v2, v6, v5, v35
	v_perm_b32 v3, v6, v5, v36
	v_perm_b32 v4, v8, v7, v35
	v_perm_b32 v5, v8, v7, v36
	v_perm_b32 v6, v11, v9, v35
	v_perm_b32 v7, v11, v9, v36
	v_perm_b32 v8, v13, v12, v35
	v_perm_b32 v9, v13, v12, v36
	v_perm_b32 v10, v15, v14, v35
	v_perm_b32 v11, v15, v14, v36
	v_perm_b32 v12, v17, v16, v35
	v_perm_b32 v13, v17, v16, v36
	v_perm_b32 v14, v20, v18, v35
	v_perm_b32 v15, v20, v18, v36
	v_perm_b32 v16, v22, v21, v35
	v_perm_b32 v17, v22, v21, v36
	v_perm_b32 v18, v34, v23, v35
	v_perm_b32 v19, v34, v23, v36
	v_perm_b32 v22, v27, v26, v35
	v_perm_b32 v23, v27, v26, v36
	v_perm_b32 v26, v31, v30, v35
	v_perm_b32 v27, v31, v30, v36
	v_and_b32_e32 v31, 0x1e0, v95
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v34, v51, v49, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v28, v41, v39, s3
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v31
	v_add_nc_u32_e32 v31, 32, v34
	v_perm_b32 v30, v38, v33, v35
	v_perm_b32 v20, v25, v24, v35
	v_perm_b32 v21, v25, v24, v36
	v_perm_b32 v24, v29, v28, v35
	v_perm_b32 v25, v29, v28, v36
	v_perm_b32 v28, v37, v32, v35
	v_perm_b32 v29, v37, v32, v36
	v_add_nc_u32_e32 v32, 64, v34
	v_cndmask_b32_e32 v35, 0x80000000, v34, vcc_lo
	v_cndmask_b32_e32 v37, 0x80000000, v31, vcc_lo
	v_perm_b32 v31, v38, v33, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v35, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v37, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v34
	v_add_nc_u32_e32 v1, 0x80, v34
	v_add_nc_u32_e32 v2, 0xa0, v34
	v_add_nc_u32_e32 v3, 0xc0, v34
	v_add_nc_u32_e32 v4, 0xe0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 660
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 46
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 660
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 55164
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 660
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 660
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 213
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
