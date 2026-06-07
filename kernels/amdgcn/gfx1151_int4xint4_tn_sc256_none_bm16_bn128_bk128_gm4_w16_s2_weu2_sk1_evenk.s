	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s13, s[0:1], 0x38
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v147, 15, v0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v93, 16, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	s_mov_b32 s12, 0
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s10
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s13, 0xff
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s15, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s15, s14
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s4, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s16, 0x100
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v1, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s1, s3, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v12, s1, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s13, s13, 1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v160, s13, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s16, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s13, s15, 8
	s_lshl_b32 s16, s14, 8
	v_lshrrev_b32_e32 v16, 3, v93
	s_sub_i32 s29, s13, s16
	s_lshl_b32 s13, s15, 7
	s_add_i32 s31, s1, 64
	s_lshl_b32 s1, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v15, 64, v12
	v_add_nc_u32_e32 v17, s28, v147
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v161, 2, v16
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v12
	v_mul_lo_u32 v16, s23, v15
	v_mul_lo_u32 v1, s3, v17
	v_mul_lo_u32 v17, s23, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 4, v2
	v_cmp_gt_i32_e64 s0, 0x80, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v15, s22, v15
	v_mul_lo_u32 v12, s22, v12
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_or_b32_e32 v6, 0x7f0, v0
	v_or_b32_e32 v7, 0xbf0, v0
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_lshlrev_b32_e32 v162, 1, v1
	v_add3_u32 v1, v16, s13, v8
	v_add3_u32 v8, v17, s13, v8
	s_mov_b32 s13, s12
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v9, 0xff0, v0
	v_or_b32_e32 v10, 0x13f0, v0
	v_or_b32_e32 v11, 0x17f0, v0
	v_or_b32_e32 v13, 0x1bf0, v0
	v_or_b32_e32 v14, 0x1ff0, v0
	v_add3_u32 v163, v15, s28, v2
	v_subrev_nc_u32_e32 v164, s1, v1
	v_subrev_nc_u32_e32 v165, s1, v8
	v_add3_u32 v166, v12, s28, v2
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v167, 0, v3
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v168, 0, v4
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v169, 0, v5
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v170, 0, v6
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v171, 0, v7
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v2, s13 :: v_dual_add_nc_u32 v159, 0, v147
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v172, 0, v9
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v173, 0, v10
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v174, 0, v11
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v175, 0, v13
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v176, 0, v14
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v94, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s23, 1
	s_lshl_b32 s22, s22, 7
	s_lshl_b32 s33, s23, 7
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s1, s31, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s1, v160
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v166, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v166, s22, v166
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v13, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v165, s1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s31, v160
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s31, 0x80
	v_add_nc_u32_e32 v165, s33, v165
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v167, v13 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v168, v[9:12]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v163, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v163, s22, v163
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v177, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v164, s1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v164, s33, v164
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v159 offset:8272
	ds_load_u8 v10, v159 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v159 offset:8304
	ds_load_u8 v11, v159 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v159 offset:8208
	ds_load_u8 v10, v159 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v159 offset:8240
	ds_load_u8 v11, v159 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v159 offset:640
	ds_load_u8 v10, v159 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v159 offset:896
	ds_load_u8 v11, v159 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v10, 16, v9
	ds_load_u8 v12, v159 offset:128
	ds_load_u8 v14, v159
	ds_load_u8 v11, v159 offset:16
	ds_load_u8 v10, v159 offset:32
	ds_load_u8 v9, v159 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:384
	ds_load_u8 v15, v159 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:8400
	ds_load_u8 v13, v159 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8432
	ds_load_u8 v14, v159 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v13, 16, v12
	ds_load_u8 v12, v159 offset:8336
	ds_load_u8 v13, v159 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8368
	ds_load_u8 v14, v159 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v13, 16, v12
	ds_load_u8 v12, v159 offset:1664
	ds_load_u8 v13, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:1920
	ds_load_u8 v14, v159 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:1152
	ds_load_u8 v14, v159 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:1408
	ds_load_u8 v15, v159 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[83:84], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:8528
	ds_load_u8 v13, v159 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8560
	ds_load_u8 v14, v159 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v13, 16, v12
	ds_load_u8 v12, v159 offset:8464
	ds_load_u8 v13, v159 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8496
	ds_load_u8 v14, v159 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v13, 16, v12
	ds_load_u8 v12, v159 offset:2688
	ds_load_u8 v13, v159 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:2944
	ds_load_u8 v14, v159 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:2176
	ds_load_u8 v14, v159 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:2432
	ds_load_u8 v15, v159 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[85:86], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:8656
	ds_load_u8 v13, v159 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8688
	ds_load_u8 v14, v159 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v13, 16, v12
	ds_load_u8 v12, v159 offset:8592
	ds_load_u8 v13, v159 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8624
	ds_load_u8 v14, v159 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v13, 16, v12
	ds_load_u8 v12, v159 offset:3712
	ds_load_u8 v13, v159 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:3968
	ds_load_u8 v14, v159 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:3200
	ds_load_u8 v14, v159 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:3456
	ds_load_u8 v15, v159 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[87:88], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:8784
	ds_load_u8 v13, v159 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8816
	ds_load_u8 v14, v159 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v13, 16, v12
	ds_load_u8 v12, v159 offset:8720
	ds_load_u8 v13, v159 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8752
	ds_load_u8 v14, v159 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v13, 16, v12
	ds_load_u8 v12, v159 offset:4736
	ds_load_u8 v13, v159 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:4992
	ds_load_u8 v14, v159 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:4224
	ds_load_u8 v14, v159 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:4480
	ds_load_u8 v15, v159 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[89:90], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:8912
	ds_load_u8 v13, v159 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8944
	ds_load_u8 v14, v159 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v13, 16, v12
	ds_load_u8 v12, v159 offset:8848
	ds_load_u8 v13, v159 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8880
	ds_load_u8 v14, v159 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v13, 16, v12
	ds_load_u8 v12, v159 offset:5760
	ds_load_u8 v13, v159 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:6016
	ds_load_u8 v14, v159 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:5248
	ds_load_u8 v14, v159 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:5504
	ds_load_u8 v15, v159 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[91:92], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:9040
	ds_load_u8 v13, v159 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:9072
	ds_load_u8 v14, v159 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v13, 16, v12
	ds_load_u8 v12, v159 offset:8976
	ds_load_u8 v13, v159 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:9008
	ds_load_u8 v14, v159 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v13, 16, v12
	ds_load_u8 v12, v159 offset:6784
	ds_load_u8 v13, v159 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:7040
	ds_load_u8 v14, v159 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:6272
	ds_load_u8 v14, v159 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:6528
	ds_load_u8 v15, v159 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[77:78], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:9104
	ds_load_u8 v13, v159 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:9136
	ds_load_u8 v14, v159 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v13, 16, v12
	ds_load_u8 v12, v159 offset:9168
	ds_load_u8 v13, v159 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v169 offset:8192
	ds_load_u8 v14, v159 offset:9184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v13, 16, v12
	ds_load_u8 v12, v159 offset:7808
	ds_load_u8 v13, v159 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:8064
	ds_load_u8 v14, v159 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v159 offset:7296
	ds_load_u8 v14, v159 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v159 offset:7552
	ds_load_u8 v15, v159 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v12
	v_wmma_i32_16x16x16_iu4 v[41:48], v[12:13], v[79:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v159 offset:656
	ds_load_u8 v13, v159 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v159 offset:912
	ds_load_u8 v14, v159 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v13, 16, v12
	ds_load_u8 v13, v159 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v13, 0xc0c0004
	ds_load_u8 v13, v159 offset:400
	ds_load_u8 v14, v159 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:1680
	ds_load_u8 v12, v159 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:1936
	ds_load_u8 v13, v159 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:1168
	ds_load_u8 v13, v159 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:1424
	ds_load_u8 v14, v159 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[83:84], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:2704
	ds_load_u8 v12, v159 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:2960
	ds_load_u8 v13, v159 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:2192
	ds_load_u8 v13, v159 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:2448
	ds_load_u8 v14, v159 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[85:86], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:3728
	ds_load_u8 v12, v159 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:3984
	ds_load_u8 v13, v159 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:3216
	ds_load_u8 v13, v159 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:3472
	ds_load_u8 v14, v159 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[87:88], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:4752
	ds_load_u8 v12, v159 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:5008
	ds_load_u8 v13, v159 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:4240
	ds_load_u8 v13, v159 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:4496
	ds_load_u8 v14, v159 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[89:90], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:5776
	ds_load_u8 v12, v159 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:6032
	ds_load_u8 v13, v159 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:5264
	ds_load_u8 v13, v159 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:5520
	ds_load_u8 v14, v159 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[91:92], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:6800
	ds_load_u8 v12, v159 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:7056
	ds_load_u8 v13, v159 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:6288
	ds_load_u8 v13, v159 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:6544
	ds_load_u8 v14, v159 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[77:78], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:7824
	ds_load_u8 v12, v159 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:8080
	ds_load_u8 v13, v159 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v159 offset:7312
	ds_load_u8 v13, v159 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v159 offset:7568
	ds_load_u8 v14, v159 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[65:72], v[11:12], v[79:80], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v11, v159 offset:672
	ds_load_u8 v12, v159 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:928
	ds_load_u8 v13, v159 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v12, 16, v11
	ds_load_u8 v12, v159 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v159 offset:416
	ds_load_u8 v13, v159 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:1696
	ds_load_u8 v11, v159 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:1952
	ds_load_u8 v12, v159 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:1184
	ds_load_u8 v12, v159 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:1440
	ds_load_u8 v13, v159 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[83:84], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:2720
	ds_load_u8 v11, v159 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:2976
	ds_load_u8 v12, v159 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:2208
	ds_load_u8 v12, v159 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:2464
	ds_load_u8 v13, v159 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[85:86], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:3744
	ds_load_u8 v11, v159 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:4000
	ds_load_u8 v12, v159 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:3232
	ds_load_u8 v12, v159 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:3488
	ds_load_u8 v13, v159 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[87:88], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:4768
	ds_load_u8 v11, v159 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:5024
	ds_load_u8 v12, v159 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:4256
	ds_load_u8 v12, v159 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:4512
	ds_load_u8 v13, v159 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[89:90], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:5792
	ds_load_u8 v11, v159 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:6048
	ds_load_u8 v12, v159 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:5280
	ds_load_u8 v12, v159 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:5536
	ds_load_u8 v13, v159 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[91:92], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:6816
	ds_load_u8 v11, v159 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:7072
	ds_load_u8 v12, v159 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:6304
	ds_load_u8 v12, v159 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:6560
	ds_load_u8 v13, v159 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[77:78], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:7840
	ds_load_u8 v11, v159 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:8096
	ds_load_u8 v12, v159 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v159 offset:7328
	ds_load_u8 v12, v159 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v159 offset:7584
	ds_load_u8 v13, v159 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[49:56], v[10:11], v[79:80], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v10, v159 offset:688
	ds_load_u8 v11, v159 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:944
	ds_load_u8 v12, v159 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v11, 16, v10
	ds_load_u8 v10, v159 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v159 offset:432
	ds_load_u8 v11, v159 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:1712
	ds_load_u8 v18, v159 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1968
	ds_load_u8 v19, v159 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:1200
	ds_load_u8 v19, v159 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:1456
	ds_load_u8 v20, v159 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[83:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:2736
	ds_load_u8 v18, v159 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:2992
	ds_load_u8 v19, v159 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:2224
	ds_load_u8 v19, v159 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:2480
	ds_load_u8 v20, v159 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[85:86], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:3760
	ds_load_u8 v18, v159 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:4016
	ds_load_u8 v19, v159 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:3248
	ds_load_u8 v19, v159 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:3504
	ds_load_u8 v20, v159 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[87:88], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:4784
	ds_load_u8 v18, v159 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:5040
	ds_load_u8 v19, v159 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:4272
	ds_load_u8 v19, v159 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:4528
	ds_load_u8 v20, v159 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[89:90], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:5808
	ds_load_u8 v18, v159 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:6064
	ds_load_u8 v19, v159 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:5296
	ds_load_u8 v19, v159 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:5552
	ds_load_u8 v20, v159 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[91:92], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:6832
	ds_load_u8 v18, v159 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:7088
	ds_load_u8 v19, v159 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:6320
	ds_load_u8 v19, v159 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:6576
	ds_load_u8 v20, v159 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:7856
	ds_load_u8 v18, v159 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:8112
	ds_load_u8 v19, v159 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:7344
	ds_load_u8 v19, v159 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:7600
	ds_load_u8 v20, v159 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:704
	ds_load_u8 v18, v159 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:960
	ds_load_u8 v19, v159 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:192
	ds_load_u8 v19, v159 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:448
	ds_load_u8 v20, v159 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:1728
	ds_load_u8 v18, v159 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1984
	ds_load_u8 v19, v159 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:1216
	ds_load_u8 v19, v159 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:1472
	ds_load_u8 v20, v159 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[83:84], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:2752
	ds_load_u8 v18, v159 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:3008
	ds_load_u8 v19, v159 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:2240
	ds_load_u8 v19, v159 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:2496
	ds_load_u8 v20, v159 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[85:86], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:3776
	ds_load_u8 v18, v159 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:4032
	ds_load_u8 v19, v159 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:3264
	ds_load_u8 v19, v159 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:3520
	ds_load_u8 v20, v159 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[87:88], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:4800
	ds_load_u8 v18, v159 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:5056
	ds_load_u8 v19, v159 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:4288
	ds_load_u8 v19, v159 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:4544
	ds_load_u8 v20, v159 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[89:90], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:5824
	ds_load_u8 v18, v159 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:6080
	ds_load_u8 v19, v159 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:5312
	ds_load_u8 v19, v159 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:5568
	ds_load_u8 v20, v159 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[91:92], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:6848
	ds_load_u8 v18, v159 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:7104
	ds_load_u8 v19, v159 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:6336
	ds_load_u8 v19, v159 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:6592
	ds_load_u8 v20, v159 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[77:78], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:7872
	ds_load_u8 v18, v159 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:8128
	ds_load_u8 v19, v159 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:7360
	ds_load_u8 v19, v159 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:7616
	ds_load_u8 v20, v159 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[79:80], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:720
	ds_load_u8 v18, v159 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:976
	ds_load_u8 v19, v159 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:208
	ds_load_u8 v19, v159 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:464
	ds_load_u8 v20, v159 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:1744
	ds_load_u8 v18, v159 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:2000
	ds_load_u8 v19, v159 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:1232
	ds_load_u8 v19, v159 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:1488
	ds_load_u8 v20, v159 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[83:84], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:2768
	ds_load_u8 v18, v159 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:3024
	ds_load_u8 v19, v159 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:2256
	ds_load_u8 v19, v159 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:2512
	ds_load_u8 v20, v159 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[85:86], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:3792
	ds_load_u8 v18, v159 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:4048
	ds_load_u8 v19, v159 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:3280
	ds_load_u8 v19, v159 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:3536
	ds_load_u8 v20, v159 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[87:88], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:4816
	ds_load_u8 v18, v159 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:5072
	ds_load_u8 v19, v159 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:4304
	ds_load_u8 v19, v159 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:4560
	ds_load_u8 v20, v159 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[89:90], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:5840
	ds_load_u8 v18, v159 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:6096
	ds_load_u8 v19, v159 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:5328
	ds_load_u8 v19, v159 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:5584
	ds_load_u8 v20, v159 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[91:92], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:6864
	ds_load_u8 v18, v159 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:7120
	ds_load_u8 v19, v159 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:6352
	ds_load_u8 v19, v159 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:6608
	ds_load_u8 v20, v159 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[77:78], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:7888
	ds_load_u8 v18, v159 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:8144
	ds_load_u8 v19, v159 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v159 offset:7376
	ds_load_u8 v19, v159 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v159 offset:7632
	ds_load_u8 v20, v159 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[79:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v17, v159 offset:736
	ds_load_u8 v18, v159 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:992
	ds_load_u8 v19, v159 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v159 offset:224
	ds_load_u8 v18, v159 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:480
	ds_load_u8 v19, v159 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:1760
	ds_load_u8 v58, v159 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:2016
	ds_load_u8 v59, v159 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:1248
	ds_load_u8 v59, v159 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:1504
	ds_load_u8 v60, v159 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[83:84], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:2784
	ds_load_u8 v58, v159 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:3040
	ds_load_u8 v59, v159 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:2272
	ds_load_u8 v59, v159 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:2528
	ds_load_u8 v60, v159 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[85:86], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:3808
	ds_load_u8 v58, v159 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:4064
	ds_load_u8 v59, v159 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:3296
	ds_load_u8 v59, v159 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:3552
	ds_load_u8 v60, v159 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[87:88], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:4832
	ds_load_u8 v58, v159 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:5088
	ds_load_u8 v59, v159 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:4320
	ds_load_u8 v59, v159 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:4576
	ds_load_u8 v60, v159 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[89:90], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:5856
	ds_load_u8 v58, v159 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:6112
	ds_load_u8 v59, v159 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:5344
	ds_load_u8 v59, v159 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:5600
	ds_load_u8 v60, v159 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[91:92], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:6880
	ds_load_u8 v58, v159 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:7136
	ds_load_u8 v59, v159 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:6368
	ds_load_u8 v59, v159 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:6624
	ds_load_u8 v60, v159 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:7904
	ds_load_u8 v58, v159 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:8160
	ds_load_u8 v59, v159 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v159 offset:7392
	ds_load_u8 v59, v159 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v159 offset:7648
	ds_load_u8 v60, v159 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[79:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v159 offset:240
	ds_load_u8 v58, v159 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v159 offset:496
	ds_load_u8 v59, v159 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v58, 16, v57
	ds_load_u8 v57, v159 offset:752
	ds_load_u8 v58, v159 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v169
	ds_load_u8 v59, v159 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[57:64], v[178:179], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:1264
	ds_load_u8 v82, v159 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:1520
	ds_load_u8 v178, v159 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v178, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:1776
	ds_load_u8 v178, v159 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v178, v82, 0xc0c0004
	ds_load_u8 v178, v170
	ds_load_u8 v179, v159 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v178, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:2288
	ds_load_u8 v82, v159 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:2544
	ds_load_u8 v83, v159 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:2800
	ds_load_u8 v83, v159 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v171
	ds_load_u8 v84, v159 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[85:86], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:3312
	ds_load_u8 v82, v159 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:3568
	ds_load_u8 v83, v159 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:3824
	ds_load_u8 v83, v159 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v172
	ds_load_u8 v84, v159 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[87:88], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:4336
	ds_load_u8 v82, v159 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:4592
	ds_load_u8 v83, v159 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:4848
	ds_load_u8 v83, v159 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v173
	ds_load_u8 v84, v159 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[89:90], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:5360
	ds_load_u8 v82, v159 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:5616
	ds_load_u8 v83, v159 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:5872
	ds_load_u8 v83, v159 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v174
	ds_load_u8 v84, v159 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[91:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:6384
	ds_load_u8 v82, v159 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:6640
	ds_load_u8 v83, v159 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:6896
	ds_load_u8 v83, v159 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v175
	ds_load_u8 v84, v159 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[77:78], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v159 offset:7408
	ds_load_u8 v78, v159 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:7664
	ds_load_u8 v81, v159 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v78, 16, v77
	ds_load_u8 v78, v159 offset:7920
	ds_load_u8 v81, v159 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	ds_load_u8 v81, v176
	ds_load_u8 v82, v159 offset:8048
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v167, v177 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v168, v[73:76]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v73, v159 offset:8272
	ds_load_u8 v74, v159 offset:8256
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8304
	ds_load_u8 v75, v159 offset:8288
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[79:80], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v74, 16, v73
	ds_load_u8 v73, v159 offset:8208
	ds_load_u8 v74, v159 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8240
	ds_load_u8 v75, v159 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v74, 16, v73
	ds_load_u8 v73, v159 offset:640
	ds_load_u8 v74, v159 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:896
	ds_load_u8 v75, v159 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:128
	ds_load_u8 v75, v159
	ds_load_u8 v177, v159 offset:16
	ds_load_u8 v90, v159 offset:32
	ds_load_u8 v89, v159 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:384
	ds_load_u8 v76, v159 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[87:88], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:8400
	ds_load_u8 v74, v159 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8432
	ds_load_u8 v75, v159 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v74, 16, v73
	ds_load_u8 v73, v159 offset:8336
	ds_load_u8 v74, v159 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8368
	ds_load_u8 v75, v159 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v74, 16, v73
	ds_load_u8 v73, v159 offset:1664
	ds_load_u8 v74, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1920
	ds_load_u8 v75, v159 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:1152
	ds_load_u8 v75, v159 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:1408
	ds_load_u8 v76, v159 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[85:86], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:8528
	ds_load_u8 v74, v159 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8560
	ds_load_u8 v75, v159 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v74, 16, v73
	ds_load_u8 v73, v159 offset:8464
	ds_load_u8 v74, v159 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8496
	ds_load_u8 v75, v159 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v74, 16, v73
	ds_load_u8 v73, v159 offset:2688
	ds_load_u8 v74, v159 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:2944
	ds_load_u8 v75, v159 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:2176
	ds_load_u8 v75, v159 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:2432
	ds_load_u8 v76, v159 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[83:84], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:8656
	ds_load_u8 v74, v159 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8688
	ds_load_u8 v75, v159 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v74, 16, v73
	ds_load_u8 v73, v159 offset:8592
	ds_load_u8 v74, v159 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8624
	ds_load_u8 v75, v159 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v74, 16, v73
	ds_load_u8 v73, v159 offset:3712
	ds_load_u8 v74, v159 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:3968
	ds_load_u8 v75, v159 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:3200
	ds_load_u8 v75, v159 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:3456
	ds_load_u8 v76, v159 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[81:82], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:8784
	ds_load_u8 v74, v159 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8816
	ds_load_u8 v75, v159 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v74, 16, v73
	ds_load_u8 v73, v159 offset:8720
	ds_load_u8 v74, v159 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8752
	ds_load_u8 v75, v159 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v74, 16, v73
	ds_load_u8 v73, v159 offset:4736
	ds_load_u8 v74, v159 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:4992
	ds_load_u8 v75, v159 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:4224
	ds_load_u8 v75, v159 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:4480
	ds_load_u8 v76, v159 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[79:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:8912
	ds_load_u8 v74, v159 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8944
	ds_load_u8 v75, v159 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v74, 16, v73
	ds_load_u8 v73, v159 offset:8848
	ds_load_u8 v74, v159 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:8880
	ds_load_u8 v75, v159 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v74, 16, v73
	ds_load_u8 v73, v159 offset:5760
	ds_load_u8 v74, v159 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:6016
	ds_load_u8 v75, v159 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:5248
	ds_load_u8 v75, v159 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v159 offset:5504
	ds_load_u8 v76, v159 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[77:78], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:9040
	ds_load_u8 v74, v159 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:9072
	ds_load_u8 v75, v159 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v159 offset:8976
	ds_load_u8 v74, v159 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:9008
	ds_load_u8 v75, v159 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v74, 16, v73
	ds_load_u8 v73, v159 offset:6784
	ds_load_u8 v74, v159 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:7040
	ds_load_u8 v91, v159 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v91, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:6272
	ds_load_u8 v91, v159 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v91, v73, 0xc0c0004
	ds_load_u8 v91, v159 offset:6528
	ds_load_u8 v92, v159 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v91, 16, v73
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[75:76], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:9104
	ds_load_u8 v74, v159 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:9136
	ds_load_u8 v91, v159 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v91, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v74, 16, v73
	ds_load_u8 v74, v159 offset:9168
	ds_load_u8 v91, v159 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v91, v74, 0xc0c0004
	ds_load_u8 v91, v169 offset:8192
	ds_load_u8 v92, v159 offset:9184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v91, 16, v74
	ds_load_u8 v91, v159 offset:7808
	ds_load_u8 v92, v159 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:8064
	ds_load_u8 v178, v159 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v178, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:7296
	ds_load_u8 v178, v159 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v178, v91, 0xc0c0004
	ds_load_u8 v178, v159 offset:7552
	ds_load_u8 v179, v159 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v178, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[73:74], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:656
	ds_load_u8 v92, v159 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:912
	ds_load_u8 v178, v159 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v178, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:400
	ds_load_u8 v178, v159 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[87:88], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:1680
	ds_load_u8 v92, v159 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:1936
	ds_load_u8 v177, v159 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:1168
	ds_load_u8 v177, v159 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:1424
	ds_load_u8 v178, v159 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[85:86], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:2704
	ds_load_u8 v92, v159 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:2960
	ds_load_u8 v177, v159 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:2192
	ds_load_u8 v177, v159 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:2448
	ds_load_u8 v178, v159 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[83:84], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:3728
	ds_load_u8 v92, v159 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:3984
	ds_load_u8 v177, v159 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:3216
	ds_load_u8 v177, v159 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:3472
	ds_load_u8 v178, v159 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[81:82], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:4752
	ds_load_u8 v92, v159 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:5008
	ds_load_u8 v177, v159 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:4240
	ds_load_u8 v177, v159 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:4496
	ds_load_u8 v178, v159 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[79:80], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:5776
	ds_load_u8 v92, v159 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:6032
	ds_load_u8 v177, v159 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:5264
	ds_load_u8 v177, v159 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:5520
	ds_load_u8 v178, v159 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[77:78], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:6800
	ds_load_u8 v92, v159 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:7056
	ds_load_u8 v177, v159 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:6288
	ds_load_u8 v177, v159 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:6544
	ds_load_u8 v178, v159 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[75:76], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:7824
	ds_load_u8 v92, v159 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:8080
	ds_load_u8 v177, v159 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v159 offset:7312
	ds_load_u8 v177, v159 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v177, v91, 0xc0c0004
	ds_load_u8 v177, v159 offset:7568
	ds_load_u8 v178, v159 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v177, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[73:74], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v91, v159 offset:672
	ds_load_u8 v92, v159 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159 offset:928
	ds_load_u8 v177, v159 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v92, 16, v91
	ds_load_u8 v92, v159 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v90, v92, 0xc0c0004
	ds_load_u8 v92, v159 offset:416
	ds_load_u8 v177, v159 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[87:88], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:1696
	ds_load_u8 v91, v159 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:1952
	ds_load_u8 v92, v159 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:1184
	ds_load_u8 v92, v159 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:1440
	ds_load_u8 v177, v159 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[85:86], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:2720
	ds_load_u8 v91, v159 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:2976
	ds_load_u8 v92, v159 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:2208
	ds_load_u8 v92, v159 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:2464
	ds_load_u8 v177, v159 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[83:84], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:3744
	ds_load_u8 v91, v159 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:4000
	ds_load_u8 v92, v159 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:3232
	ds_load_u8 v92, v159 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:3488
	ds_load_u8 v177, v159 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[81:82], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:4768
	ds_load_u8 v91, v159 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:5024
	ds_load_u8 v92, v159 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:4256
	ds_load_u8 v92, v159 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:4512
	ds_load_u8 v177, v159 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[79:80], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:5792
	ds_load_u8 v91, v159 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:6048
	ds_load_u8 v92, v159 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:5280
	ds_load_u8 v92, v159 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:5536
	ds_load_u8 v177, v159 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[77:78], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:6816
	ds_load_u8 v91, v159 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:7072
	ds_load_u8 v92, v159 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:6304
	ds_load_u8 v92, v159 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:6560
	ds_load_u8 v177, v159 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[75:76], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:7840
	ds_load_u8 v91, v159 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:8096
	ds_load_u8 v92, v159 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v159 offset:7328
	ds_load_u8 v92, v159 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v159 offset:7584
	ds_load_u8 v177, v159 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v177, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[73:74], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v90, v159 offset:688
	ds_load_u8 v91, v159 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v159 offset:944
	ds_load_u8 v92, v159 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v91, 16, v90
	ds_load_u8 v91, v159 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v91, 0xc0c0004
	ds_load_u8 v91, v159 offset:432
	ds_load_u8 v92, v159 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[87:88], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:1712
	ds_load_u8 v90, v159 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:1968
	ds_load_u8 v91, v159 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:1200
	ds_load_u8 v91, v159 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:1456
	ds_load_u8 v92, v159 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[85:86], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:2736
	ds_load_u8 v90, v159 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:2992
	ds_load_u8 v91, v159 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:2224
	ds_load_u8 v91, v159 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:2480
	ds_load_u8 v92, v159 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:3760
	ds_load_u8 v90, v159 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:4016
	ds_load_u8 v91, v159 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:3248
	ds_load_u8 v91, v159 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:3504
	ds_load_u8 v92, v159 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[81:82], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:4784
	ds_load_u8 v90, v159 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:5040
	ds_load_u8 v91, v159 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:4272
	ds_load_u8 v91, v159 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:4528
	ds_load_u8 v92, v159 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[79:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:5808
	ds_load_u8 v90, v159 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:6064
	ds_load_u8 v91, v159 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:5296
	ds_load_u8 v91, v159 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:5552
	ds_load_u8 v92, v159 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:6832
	ds_load_u8 v90, v159 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:7088
	ds_load_u8 v91, v159 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:6320
	ds_load_u8 v91, v159 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:6576
	ds_load_u8 v92, v159 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:7856
	ds_load_u8 v90, v159 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:8112
	ds_load_u8 v91, v159 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:7344
	ds_load_u8 v91, v159 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:7600
	ds_load_u8 v92, v159 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:704
	ds_load_u8 v90, v159 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:960
	ds_load_u8 v91, v159 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:192
	ds_load_u8 v91, v159 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:448
	ds_load_u8 v92, v159 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[87:88], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:1728
	ds_load_u8 v90, v159 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:1984
	ds_load_u8 v91, v159 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:1216
	ds_load_u8 v91, v159 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:1472
	ds_load_u8 v92, v159 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[85:86], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:2752
	ds_load_u8 v90, v159 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:3008
	ds_load_u8 v91, v159 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:2240
	ds_load_u8 v91, v159 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:2496
	ds_load_u8 v92, v159 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[83:84], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:3776
	ds_load_u8 v90, v159 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:4032
	ds_load_u8 v91, v159 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:3264
	ds_load_u8 v91, v159 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:3520
	ds_load_u8 v92, v159 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[81:82], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:4800
	ds_load_u8 v90, v159 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:5056
	ds_load_u8 v91, v159 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:4288
	ds_load_u8 v91, v159 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:4544
	ds_load_u8 v92, v159 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[79:80], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:5824
	ds_load_u8 v90, v159 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:6080
	ds_load_u8 v91, v159 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:5312
	ds_load_u8 v91, v159 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:5568
	ds_load_u8 v92, v159 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[77:78], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:6848
	ds_load_u8 v90, v159 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:7104
	ds_load_u8 v91, v159 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:6336
	ds_load_u8 v91, v159 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:6592
	ds_load_u8 v92, v159 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[75:76], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:7872
	ds_load_u8 v90, v159 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:8128
	ds_load_u8 v91, v159 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:7360
	ds_load_u8 v91, v159 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:7616
	ds_load_u8 v92, v159 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:720
	ds_load_u8 v90, v159 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:976
	ds_load_u8 v91, v159 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:208
	ds_load_u8 v91, v159 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:464
	ds_load_u8 v92, v159 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[87:88], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:1744
	ds_load_u8 v90, v159 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:2000
	ds_load_u8 v91, v159 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:1232
	ds_load_u8 v91, v159 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:1488
	ds_load_u8 v92, v159 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[85:86], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:2768
	ds_load_u8 v90, v159 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:3024
	ds_load_u8 v91, v159 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:2256
	ds_load_u8 v91, v159 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:2512
	ds_load_u8 v92, v159 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[83:84], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:3792
	ds_load_u8 v90, v159 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:4048
	ds_load_u8 v91, v159 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:3280
	ds_load_u8 v91, v159 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:3536
	ds_load_u8 v92, v159 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:4816
	ds_load_u8 v90, v159 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:5072
	ds_load_u8 v91, v159 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:4304
	ds_load_u8 v91, v159 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:4560
	ds_load_u8 v92, v159 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[79:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:5840
	ds_load_u8 v90, v159 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:6096
	ds_load_u8 v91, v159 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:5328
	ds_load_u8 v91, v159 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:5584
	ds_load_u8 v92, v159 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[77:78], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:6864
	ds_load_u8 v90, v159 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:7120
	ds_load_u8 v91, v159 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:6352
	ds_load_u8 v91, v159 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:6608
	ds_load_u8 v92, v159 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[75:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:7888
	ds_load_u8 v90, v159 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:8144
	ds_load_u8 v91, v159 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:7376
	ds_load_u8 v91, v159 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:7632
	ds_load_u8 v92, v159 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:736
	ds_load_u8 v90, v159 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:992
	ds_load_u8 v91, v159 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:224
	ds_load_u8 v91, v159 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:480
	ds_load_u8 v92, v159 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[87:88], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:1760
	ds_load_u8 v90, v159 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:2016
	ds_load_u8 v91, v159 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:1248
	ds_load_u8 v91, v159 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:1504
	ds_load_u8 v92, v159 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[85:86], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:2784
	ds_load_u8 v90, v159 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:3040
	ds_load_u8 v91, v159 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:2272
	ds_load_u8 v91, v159 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:2528
	ds_load_u8 v92, v159 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[83:84], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:3808
	ds_load_u8 v90, v159 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:4064
	ds_load_u8 v91, v159 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:3296
	ds_load_u8 v91, v159 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:3552
	ds_load_u8 v92, v159 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[81:82], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:4832
	ds_load_u8 v90, v159 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:5088
	ds_load_u8 v91, v159 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:4320
	ds_load_u8 v91, v159 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:4576
	ds_load_u8 v92, v159 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[79:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:5856
	ds_load_u8 v90, v159 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:6112
	ds_load_u8 v91, v159 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:5344
	ds_load_u8 v91, v159 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:5600
	ds_load_u8 v92, v159 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:6880
	ds_load_u8 v90, v159 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:7136
	ds_load_u8 v91, v159 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:6368
	ds_load_u8 v91, v159 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:6624
	ds_load_u8 v92, v159 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:7904
	ds_load_u8 v90, v159 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:8160
	ds_load_u8 v91, v159 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v159 offset:7392
	ds_load_u8 v91, v159 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v159 offset:7648
	ds_load_u8 v92, v159 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v89
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[73:74], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v89, v159 offset:240
	ds_load_u8 v90, v159 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v159 offset:496
	ds_load_u8 v91, v159 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v90, 16, v89
	ds_load_u8 v90, v159 offset:752
	ds_load_u8 v91, v159 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v169
	ds_load_u8 v92, v159 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v91, 16, v90
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[87:88], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v87, v159 offset:1264
	ds_load_u8 v88, v159 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v159 offset:1520
	ds_load_u8 v89, v159 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v88, 16, v87
	ds_load_u8 v88, v159 offset:1776
	ds_load_u8 v89, v159 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v170
	ds_load_u8 v90, v159 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v89, 16, v88
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[85:86], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v159 offset:2288
	ds_load_u8 v86, v159 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v159 offset:2544
	ds_load_u8 v87, v159 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v86, 16, v85
	ds_load_u8 v86, v159 offset:2800
	ds_load_u8 v87, v159 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v171
	ds_load_u8 v88, v159 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v83, v159 offset:3312
	ds_load_u8 v84, v159 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v159 offset:3568
	ds_load_u8 v85, v159 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v84, 16, v83
	ds_load_u8 v84, v159 offset:3824
	ds_load_u8 v85, v159 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v172
	ds_load_u8 v86, v159 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v84, v85, 16, v84
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[81:82], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v159 offset:4336
	ds_load_u8 v82, v159 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v159 offset:4592
	ds_load_u8 v83, v159 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	ds_load_u8 v82, v159 offset:4848
	ds_load_u8 v83, v159 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v173
	ds_load_u8 v84, v159 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[79:80], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v79, v159 offset:5360
	ds_load_u8 v80, v159 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v159 offset:5616
	ds_load_u8 v81, v159 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v80, 16, v79
	ds_load_u8 v80, v159 offset:5872
	ds_load_u8 v81, v159 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v174
	ds_load_u8 v82, v159 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v81, 16, v80
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[77:78], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v159 offset:6384
	ds_load_u8 v78, v159 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:6640
	ds_load_u8 v79, v159 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v78, 16, v77
	ds_load_u8 v78, v159 offset:6896
	ds_load_u8 v79, v159 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175
	ds_load_u8 v80, v159 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v75, v159 offset:7408
	ds_load_u8 v76, v159 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v159 offset:7664
	ds_load_u8 v77, v159 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v76, 16, v75
	ds_load_u8 v76, v159 offset:7920
	ds_load_u8 v77, v159 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v176
	ds_load_u8 v78, v159 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v77, 16, v76
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[73:74], v[57:64] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v73, v162, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v74, s29, v161
	s_clause 0x1f
	buffer_load_u16 v75, v74, s[8:11], 0 offen
	buffer_load_u16 v209, v74, s[8:11], 0 offen offset:4
	buffer_load_u16 v207, v74, s[8:11], 0 offen offset:8
	buffer_load_u16 v206, v74, s[8:11], 0 offen offset:12
	buffer_load_u16 v208, v74, s[8:11], 0 offen offset:16
	buffer_load_u16 v213, v74, s[8:11], 0 offen offset:20
	buffer_load_u16 v224, v74, s[8:11], 0 offen offset:24
	buffer_load_u16 v225, v74, s[8:11], 0 offen offset:28
	buffer_load_u16 v222, v74, s[8:11], 0 offen offset:32
	buffer_load_u16 v223, v74, s[8:11], 0 offen offset:36
	buffer_load_u16 v220, v74, s[8:11], 0 offen offset:40
	buffer_load_u16 v221, v74, s[8:11], 0 offen offset:44
	buffer_load_u16 v218, v74, s[8:11], 0 offen offset:48
	buffer_load_u16 v219, v74, s[8:11], 0 offen offset:52
	buffer_load_u16 v216, v74, s[8:11], 0 offen offset:56
	buffer_load_u16 v217, v74, s[8:11], 0 offen offset:60
	buffer_load_u16 v214, v74, s[8:11], 0 offen offset:64
	buffer_load_u16 v215, v74, s[8:11], 0 offen offset:68
	buffer_load_u16 v204, v74, s[8:11], 0 offen offset:72
	buffer_load_u16 v205, v74, s[8:11], 0 offen offset:76
	buffer_load_u16 v202, v74, s[8:11], 0 offen offset:80
	buffer_load_u16 v203, v74, s[8:11], 0 offen offset:84
	buffer_load_u16 v200, v74, s[8:11], 0 offen offset:88
	buffer_load_u16 v201, v74, s[8:11], 0 offen offset:92
	buffer_load_u16 v198, v74, s[8:11], 0 offen offset:96
	buffer_load_u16 v199, v74, s[8:11], 0 offen offset:100
	buffer_load_u16 v196, v74, s[8:11], 0 offen offset:104
	buffer_load_u16 v197, v74, s[8:11], 0 offen offset:108
	buffer_load_u16 v194, v74, s[8:11], 0 offen offset:112
	buffer_load_u16 v195, v74, s[8:11], 0 offen offset:116
	buffer_load_u16 v192, v74, s[8:11], 0 offen offset:120
	buffer_load_u16 v193, v74, s[8:11], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v190, v74, s[8:11], 0 offen offset:128
	buffer_load_u16 v191, v74, s[8:11], 0 offen offset:132
	buffer_load_u16 v188, v74, s[8:11], 0 offen offset:136
	buffer_load_u16 v189, v74, s[8:11], 0 offen offset:140
	buffer_load_u16 v186, v74, s[8:11], 0 offen offset:144
	buffer_load_u16 v187, v74, s[8:11], 0 offen offset:148
	buffer_load_u16 v184, v74, s[8:11], 0 offen offset:152
	buffer_load_u16 v185, v74, s[8:11], 0 offen offset:156
	buffer_load_u16 v182, v74, s[8:11], 0 offen offset:160
	buffer_load_u16 v183, v74, s[8:11], 0 offen offset:164
	buffer_load_u16 v180, v74, s[8:11], 0 offen offset:168
	buffer_load_u16 v181, v74, s[8:11], 0 offen offset:172
	buffer_load_u16 v178, v74, s[8:11], 0 offen offset:176
	buffer_load_u16 v179, v74, s[8:11], 0 offen offset:180
	buffer_load_u16 v92, v74, s[8:11], 0 offen offset:184
	buffer_load_u16 v177, v74, s[8:11], 0 offen offset:188
	buffer_load_u16 v90, v74, s[8:11], 0 offen offset:192
	buffer_load_u16 v91, v74, s[8:11], 0 offen offset:196
	buffer_load_u16 v88, v74, s[8:11], 0 offen offset:200
	buffer_load_u16 v89, v74, s[8:11], 0 offen offset:204
	buffer_load_u16 v86, v74, s[8:11], 0 offen offset:208
	buffer_load_u16 v87, v74, s[8:11], 0 offen offset:212
	buffer_load_u16 v84, v74, s[8:11], 0 offen offset:216
	buffer_load_u16 v85, v74, s[8:11], 0 offen offset:220
	buffer_load_u16 v82, v74, s[8:11], 0 offen offset:224
	buffer_load_u16 v83, v74, s[8:11], 0 offen offset:228
	buffer_load_u16 v80, v74, s[8:11], 0 offen offset:232
	buffer_load_u16 v81, v74, s[8:11], 0 offen offset:236
	buffer_load_u16 v78, v74, s[8:11], 0 offen offset:240
	buffer_load_u16 v79, v74, s[8:11], 0 offen offset:244
	buffer_load_u16 v76, v74, s[8:11], 0 offen offset:248
	buffer_load_u16 v77, v74, s[8:11], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v162, 2, v162
	s_add_i32 s29, s29, s30
	s_cmp_lg_u32 s3, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v206, 16, v206
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v211, v73, v41
	v_cvt_f32_i32_e32 v41, v43
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v211, v75
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v74, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v209, v73, v42
	v_cvt_f32_i32_e32 v42, v44
	v_dual_mul_f32 v212, v73, v41 :: v_dual_lshlrev_b32 v207, 16, v207
	v_cvt_f32_i32_e32 v41, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v208, 16, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v210, v73, v42
	v_cvt_f32_i32_e32 v42, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v43, 16, v213
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v213, v73, v41
	v_cvt_f32_i32_e32 v41, v47
	s_waitcnt vmcnt(57)
	v_dual_mul_f32 v46, v73, v42 :: v_dual_lshlrev_b32 v45, 16, v224
	v_cvt_f32_i32_e32 v42, v48
	v_mul_f32_e32 v224, v73, v65
	s_waitcnt vmcnt(54)
	v_dual_mul_f32 v48, v73, v41 :: v_dual_lshlrev_b32 v41, 16, v223
	v_cvt_f32_i32_e32 v65, v67
	v_mul_f32_e32 v47, v73, v42
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v42, 16, v222
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v222, v73, v66
	v_cvt_f32_i32_e32 v66, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v44, 16, v225
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v225, v73, v65
	v_cvt_f32_i32_e32 v65, v69
	s_waitcnt vmcnt(53)
	v_dual_mul_f32 v223, v73, v66 :: v_dual_lshlrev_b32 v220, 16, v220
	v_cvt_f32_i32_e32 v66, v70
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v221, 16, v221
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v67, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v219, v73, v65
	v_cvt_f32_i32_e32 v65, v71
	s_waitcnt vmcnt(49)
	v_dual_mul_f32 v70, v73, v66 :: v_dual_lshlrev_b32 v69, 16, v216
	v_cvt_f32_i32_e32 v66, v72
	v_mul_f32_e32 v216, v73, v49
	v_cvt_f32_i32_e32 v49, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v218, 16, v218
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(48)
	v_dual_mul_f32 v71, v73, v66 :: v_dual_lshlrev_b32 v68, 16, v217
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v72, v73, v65 :: v_dual_lshlrev_b32 v65, 16, v215
	v_mul_f32_e32 v217, v73, v49
	v_cvt_f32_i32_e32 v49, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v66, 16, v214
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v214, v73, v50
	v_cvt_f32_i32_e32 v50, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v204, 16, v204
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v51, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v203, v73, v49
	v_cvt_f32_i32_e32 v49, v55
	v_mul_f32_e32 v215, v73, v50
	v_cvt_f32_i32_e32 v50, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v205, 16, v205
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v53, 16, v200
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v200, v73, v9
	v_cvt_f32_i32_e32 v9, v11
	v_mul_f32_e32 v54, v73, v50
	v_cvt_f32_i32_e32 v50, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v202, 16, v202
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v52, 16, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v56, v73, v49 :: v_dual_lshlrev_b32 v49, 16, v199
	v_mul_f32_e32 v55, v73, v50
	v_mul_f32_e32 v201, v73, v9
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v50, 16, v198
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v198, v73, v10
	v_cvt_f32_i32_e32 v10, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v11, 16, v195
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v195, v73, v9
	v_cvt_f32_i32_e32 v9, v15
	v_mul_f32_e32 v199, v73, v10
	v_cvt_f32_i32_e32 v10, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v197, 16, v197
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v13, 16, v192
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v192, v73, v33
	v_cvt_f32_i32_e32 v33, v35
	v_mul_f32_e32 v14, v73, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v194, 16, v194
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v12, 16, v193
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v16, v73, v9 :: v_dual_lshlrev_b32 v9, 16, v191
	v_mul_f32_e32 v15, v73, v10
	v_mul_f32_e32 v193, v73, v33
	v_cvt_f32_i32_e32 v33, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v190
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v190, v73, v34
	v_cvt_f32_i32_e32 v34, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v35, 16, v187
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v187, v73, v33
	v_cvt_f32_i32_e32 v33, v39
	v_mul_f32_e32 v191, v73, v34
	v_cvt_f32_i32_e32 v34, v38
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v37, 16, v184
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v184, v73, v25
	v_cvt_f32_i32_e32 v25, v27
	v_mul_f32_e32 v38, v73, v34
	v_cvt_f32_i32_e32 v34, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v36, 16, v185
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v40, v73, v33 :: v_dual_lshlrev_b32 v33, 16, v183
	v_mul_f32_e32 v39, v73, v34
	v_mul_f32_e32 v185, v73, v25
	v_cvt_f32_i32_e32 v25, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v34, 16, v182
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v182, v73, v26
	v_cvt_f32_i32_e32 v26, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v27, 16, v179
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v179, v73, v25
	v_cvt_f32_i32_e32 v25, v31
	v_mul_f32_e32 v183, v73, v26
	v_cvt_f32_i32_e32 v26, v30
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v29, 16, v92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v92, v73, v17
	v_cvt_f32_i32_e32 v17, v19
	v_mul_f32_e32 v30, v73, v26
	v_cvt_f32_i32_e32 v26, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v28, 16, v177
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v32, v73, v25 :: v_dual_lshlrev_b32 v25, 16, v91
	v_mul_f32_e32 v31, v73, v26
	v_mul_f32_e32 v177, v73, v17
	v_cvt_f32_i32_e32 v17, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v26, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v90, v73, v18
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v88, 16, v88
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v19, 16, v87
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v87, v73, v17
	v_cvt_f32_i32_e32 v17, v23
	v_mul_f32_e32 v91, v73, v18
	v_cvt_f32_i32_e32 v18, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v89, 16, v89
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v84
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v158, v209, v74 :: v_dual_fmac_f32 v151, v47, v44
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v73, v18
	v_cvt_f32_i32_e32 v18, v24
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v85
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v24, v73, v17 :: v_dual_lshlrev_b32 v17, 16, v83
	v_mul_f32_e32 v83, v73, v57
	v_mul_f32_e32 v23, v73, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v18, 16, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v82, v73, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v57, 16, v81
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v157, v212, v207 :: v_dual_lshlrev_b32 v60, 16, v78
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v73, v58
	v_mul_f32_e32 v81, v73, v59
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v61, v62
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v153, v213, v208 :: v_dual_lshlrev_b32 v58, 16, v79
	v_dual_fmac_f32 v156, v210, v206 :: v_dual_fmac_f32 v143, v72, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v62, v73, v61 :: v_dual_lshlrev_b32 v61, 16, v76
	v_cvt_f32_i32_e32 v76, v63
	v_cvt_f32_i32_e32 v63, v64
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v78, v73, v59 :: v_dual_lshlrev_b32 v59, 16, v77
	v_dual_mul_f32 v64, v73, v76 :: v_dual_fmac_f32 v155, v46, v43
	v_dual_mul_f32 v63, v73, v63 :: v_dual_fmac_f32 v152, v48, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v145, v70, v67
	v_dual_fmac_f32 v149, v224, v42 :: v_dual_fmac_f32 v150, v222, v41
	v_dual_fmac_f32 v146, v225, v220 :: v_dual_fmac_f32 v141, v214, v65
	v_dual_fmac_f32 v148, v223, v221 :: v_dual_fmac_f32 v137, v54, v51
	v_dual_fmac_f32 v144, v219, v218 :: v_dual_fmac_f32 v133, v198, v49
	v_dual_fmac_f32 v142, v71, v68 :: v_dual_fmac_f32 v129, v14, v11
	v_dual_fmac_f32 v140, v216, v66 :: v_dual_fmac_f32 v139, v215, v205
	v_dual_fmac_f32 v138, v217, v204 :: v_dual_fmac_f32 v125, v192, v10
	v_dual_fmac_f32 v136, v203, v202 :: v_dual_fmac_f32 v131, v201, v196
	v_dual_fmac_f32 v134, v56, v53 :: v_dual_fmac_f32 v135, v55, v52
	v_dual_fmac_f32 v132, v200, v50 :: v_dual_fmac_f32 v127, v15, v12
	v_dual_fmac_f32 v130, v199, v197 :: v_dual_fmac_f32 v121, v193, v188
	v_dual_fmac_f32 v128, v195, v194 :: v_dual_fmac_f32 v117, v182, v33
	v_dual_fmac_f32 v126, v16, v13 :: v_dual_fmac_f32 v119, v39, v36
	v_dual_fmac_f32 v124, v190, v9 :: v_dual_fmac_f32 v111, v31, v28
	v_dual_fmac_f32 v123, v191, v189 :: v_dual_fmac_f32 v122, v38, v35
	v_dual_fmac_f32 v120, v187, v186 :: v_dual_fmac_f32 v113, v30, v27
	v_dual_fmac_f32 v118, v40, v37 :: v_dual_fmac_f32 v105, v22, v19
	v_dual_fmac_f32 v116, v184, v34 :: v_dual_fmac_f32 v115, v183, v181
	v_dual_fmac_f32 v114, v185, v180 :: v_dual_fmac_f32 v109, v90, v25
	v_dual_fmac_f32 v112, v179, v178 :: v_dual_fmac_f32 v99, v84, v80
	v_dual_fmac_f32 v110, v32, v29 :: v_dual_fmac_f32 v103, v23, v20
	v_dual_fmac_f32 v108, v92, v26 :: v_dual_fmac_f32 v107, v91, v89
	v_dual_fmac_f32 v106, v177, v88 :: v_dual_fmac_f32 v101, v83, v18
	v_dual_fmac_f32 v104, v87, v86 :: v_dual_fmac_f32 v97, v78, v60
	v_fmac_f32_e32 v102, v24, v21
	v_fmac_f32_e32 v100, v82, v17
	v_fmac_f32_e32 v98, v81, v57
	v_dual_fmac_f32 v96, v62, v58 :: v_dual_fmac_f32 v95, v64, v61
	v_fmac_f32_e32 v94, v63, v59
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e64 v3.l, v158.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s23, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v2.l, v154.h
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_mov_b16_e32 v2.h, v3.h
	v_and_b32_e32 v5, 1, v3
	v_mov_b16_e64 v3.l, v156.h
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s0, s2, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s28, s28, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v6.l, v157.h
	v_add3_u32 v5, v158, v5, 0x7fff
	v_and_b32_e32 v8, 1, v3
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v6.h, v3.h
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s28, s0, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v5, v156, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v156, v156
	v_add3_u32 v7, v154, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_mov_b16_e64 v3.l, v155.h
	v_cmp_o_f32_e64 s1, v157, v157
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e64 v8.l, v153.h
	v_mov_b16_e32 v8.h, v3.h
	v_cndmask_b16 v4.l, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v9, 1, v3
	v_add3_u32 v6, v157, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_mov_b16_e64 v3.l, v151.h
	v_mov_b16_e64 v10.l, v149.h
	v_add3_u32 v7, v155, v9, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v8
	v_mov_b16_e64 v8.l, v152.h
	v_mov_b16_e32 v10.h, v3.h
	v_cmp_o_f32_e64 s0, v151, v151
	v_cmp_o_f32_e64 s1, v149, v149
	v_add3_u32 v9, v153, v6, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_and_b32_e32 v7, 1, v3
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e64 v3.l, v150.h
	v_mov_b16_e64 v11.l, v146.h
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v7, v151, v7, 0x7fff
	v_add3_u32 v8, v152, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_mov_b16_e32 v11.h, v3.h
	v_mov_b16_e64 v13.l, v143.h
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v150, v150
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e64 v3.l, v148.h
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_mov_b16_e32 v13.h, v3.h
	v_add3_u32 v9, v149, v9, 0x7fff
	v_add3_u32 v10, v150, v10, 0x7fff
	v_mov_b16_e64 v14.l, v140.h
	v_mov_b16_e32 v14.h, v3.h
	v_mov_b16_e64 v16.l, v136.h
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s0
	v_and_b32_e32 v12, 1, v3
	v_and_b32_e32 v9, 1, v11
	v_mov_b16_e64 v3.l, v145.h
	v_mov_b16_e64 v11.l, v144.h
	v_cmp_o_f32_e64 s0, v145, v145
	v_add3_u32 v10, v148, v12, 0x7fff
	v_add3_u32 v12, v146, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v16.h, v3.h
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e64 v3.l, v142.h
	v_add3_u32 v11, v144, v11, 0x7fff
	v_mov_b16_e64 v17.l, v134.h
	v_cndmask_b16 v9.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v10, v145, v10, 0x7fff
	v_and_b32_e32 v12, 1, v13
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e64 v3.l, v141.h
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_add3_u32 v12, v143, v12, 0x7fff
	v_add3_u32 v13, v142, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v142, v142
	v_and_b32_e32 v15, 1, v3
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v14
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s0
	v_add3_u32 v13, v141, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_mov_b16_e64 v3.l, v139.h
	v_mov_b16_e64 v14.l, v138.h
	v_add3_u32 v12, v140, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v139, v139
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e64 v3.l, v137.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s1, v136, v136
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v15, v139, v15, 0x7fff
	v_and_b32_e32 v12, 1, v16
	v_and_b32_e32 v16, 1, v3
	v_mov_b16_e64 v3.l, v135.h
	v_add3_u32 v14, v138, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_add3_u32 v12, v136, v12, 0x7fff
	v_add3_u32 v16, v137, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v137, v137
	v_mov_b16_e32 v17.h, v3.h
	v_and_b32_e32 v18, 1, v3
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_and_b32_e32 v12, 1, v17
	v_add3_u32 v16, v135, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_mov_b16_e64 v3.l, v133.h
	v_mov_b16_e64 v17.l, v132.h
	v_add3_u32 v12, v134, v12, 0x7fff
	v_mov_b16_e64 v19.l, v131.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_and_b32_e32 v18, 1, v3
	v_mov_b16_e32 v19.h, v3.h
	v_mov_b16_e64 v3.l, v130.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s0, v133, v133
	v_add3_u32 v18, v133, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v19
	v_and_b32_e32 v19, 1, v3
	v_mov_b16_e64 v3.l, v129.h
	v_add3_u32 v17, v132, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_add3_u32 v12, v131, v12, 0x7fff
	v_add3_u32 v19, v130, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_cmp_o_f32_e64 s1, v131, v131
	v_mov_b16_e64 v20.l, v128.h
	v_mov_b16_e32 v20.h, v3.h
	v_and_b32_e32 v21, 1, v3
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v17.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v20
	v_add3_u32 v19, v129, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_mov_b16_e32 v3.l, v127.h
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v126.h
	v_add3_u32 v12, v128, v12, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v22.l, v125.h
	v_mov_b16_e32 v22.h, v3.h
	v_mov_b16_e32 v3.l, v124.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v21, v127, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v127, v127
	v_cndmask_b16 v19.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v22
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v3
	v_mov_b16_e32 v3.l, v123.h
	v_add3_u32 v20, v126, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_cmp_o_f32_e32 vcc_lo, v126, v126
	v_add3_u32 v12, v125, v12, 0x7fff
	v_add3_u32 v22, v124, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v124, v124
	v_cmp_o_f32_e64 s1, v125, v125
	v_mov_b16_e32 v23.l, v121.h
	v_mov_b16_e32 v23.h, v3.h
	v_and_b32_e32 v24, 1, v3
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v20.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v23
	v_add3_u32 v22, v123, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_mov_b16_e32 v3.l, v122.h
	v_mov_b16_e32 v23.l, v120.h
	v_add3_u32 v12, v121, v12, 0x7fff
	v_mov_b16_e32 v25.l, v118.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v24, 1, v3
	v_mov_b16_e32 v25.h, v3.h
	v_mov_b16_e32 v3.l, v119.h
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s0, v122, v122
	v_add3_u32 v24, v122, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v25
	v_and_b32_e32 v25, 1, v3
	v_mov_b16_e32 v3.l, v117.h
	v_add3_u32 v23, v120, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	v_add3_u32 v12, v118, v12, 0x7fff
	v_add3_u32 v25, v119, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v119, v119
	v_cmp_o_f32_e64 s1, v118, v118
	v_mov_b16_e32 v26.l, v116.h
	v_mov_b16_e32 v26.h, v3.h
	v_add_nc_u32_e32 v2, 64, v1
	v_and_b32_e32 v27, 1, v3
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v26
	v_add3_u32 v25, v117, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_mov_b16_e32 v3.l, v115.h
	v_mov_b16_e32 v26.l, v114.h
	v_add3_u32 v12, v116, v12, 0x7fff
	v_mov_b16_e32 v28.l, v112.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v28.h, v3.h
	v_mov_b16_e32 v3.l, v113.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s0, v115, v115
	v_add3_u32 v27, v115, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v28
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v3.l, v111.h
	v_add3_u32 v26, v114, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s0
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_add3_u32 v12, v112, v12, 0x7fff
	v_add3_u32 v28, v113, v28, 0x7fff
	v_cmp_o_f32_e64 s0, v113, v113
	v_cmp_o_f32_e64 s1, v112, v112
	v_mov_b16_e32 v29.l, v110.h
	v_mov_b16_e32 v29.h, v3.h
	v_and_b32_e32 v30, 1, v3
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s0
	v_cndmask_b16 v26.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v29
	v_add3_u32 v28, v111, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_mov_b16_e32 v3.l, v109.h
	v_mov_b16_e32 v29.l, v108.h
	v_add3_u32 v12, v110, v12, 0x7fff
	v_mov_b16_e32 v31.l, v106.h
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v31.h, v3.h
	v_mov_b16_e32 v3.l, v107.h
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s0, v109, v109
	v_add3_u32 v30, v109, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v31
	v_and_b32_e32 v31, 1, v3
	v_mov_b16_e32 v3.l, v105.h
	v_add3_u32 v29, v108, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s0
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_add3_u32 v12, v106, v12, 0x7fff
	v_add3_u32 v31, v107, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_cmp_o_f32_e64 s1, v106, v106
	v_mov_b16_e32 v32.l, v104.h
	v_mov_b16_e32 v32.h, v3.h
	v_and_b32_e32 v33, 1, v3
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v29.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v32
	v_add3_u32 v31, v105, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_mov_b16_e32 v3.l, v103.h
	v_mov_b16_e32 v34.l, v101.h
	v_add3_u32 v12, v104, v12, 0x7fff
	v_mov_b16_e32 v34.h, v3.h
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v32.l, v102.h
	v_and_b32_e32 v33, 1, v3
	v_mov_b16_e32 v3.l, v100.h
	v_cmp_o_f32_e64 s0, v103, v103
	v_cndmask_b16 v31.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v34
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v33, v103, v33, 0x7fff
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v35.l, v99.h
	v_add3_u32 v12, v101, v12, 0x7fff
	v_mov_b16_e32 v35.h, v3.h
	v_cmp_o_f32_e64 s1, v101, v101
	v_mov_b16_e32 v3.l, v98.h
	v_add3_u32 v32, v102, v32, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s0
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_add3_u32 v34, v100, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v100, v100
	v_and_b32_e32 v35, 1, v35
	v_cndmask_b16 v32.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e32 v3.l, v96.h
	v_cndmask_b16 v33.l, 0x7fff, v32.h, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s0
	v_add3_u32 v34, v99, v35, 0x7fff
	v_mov_b16_e32 v35.l, v97.h
	v_mov_b16_e32 v35.h, v3.h
	v_add3_u32 v12, v98, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_and_b32_e32 v36, 1, v3
	v_cmp_o_f32_e64 s0, v99, v99
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v37.l, v95.h
	v_mov_b16_e32 v37.h, v3.h
	v_mov_b16_e32 v3.l, v94.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v36, v96, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_cndmask_b16 v12.l, 0x7fff, v34.h, s0
	v_add3_u32 v34, v97, v35, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s0, v97, v97
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v93
	v_and_b32_e32 v35, 1, v37
	v_add3_u32 v3, v94, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_cmp_o_f32_e64 s2, v95, v95
	v_cndmask_b16 v36.l, 0x7fff, v34.h, s0
	v_add3_u32 v35, v95, v35, 0x7fff
	v_cndmask_b32_e32 v34, v6, v4, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	v_cndmask_b32_e32 v4, v4, v6, vcc_lo
	v_cndmask_b32_e32 v6, v7, v5, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v35.h, s2
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_cndmask_b32_e32 v35, v10, v8, vcc_lo
	v_dual_cndmask_b32 v7, v8, v10 :: v_dual_cndmask_b32 v10, v11, v9
	v_dual_cndmask_b32 v8, v9, v11 :: v_dual_cndmask_b32 v37, v14, v13
	v_dual_cndmask_b32 v9, v13, v14 :: v_dual_cndmask_b32 v14, v16, v15
	v_cndmask_b32_e32 v11, v15, v16, vcc_lo
	v_dual_cndmask_b32 v16, v19, v18 :: v_dual_cndmask_b32 v13, v18, v19
	v_cndmask_b32_e32 v18, v21, v17, vcc_lo
	v_cndmask_b32_e32 v15, v17, v21, vcc_lo
	v_cndmask_b32_e32 v21, v24, v20, vcc_lo
	v_dual_cndmask_b32 v17, v20, v24 :: v_dual_cndmask_b32 v24, v23, v22
	v_cndmask_b32_e32 v19, v22, v23, vcc_lo
	v_cndmask_b32_e32 v38, v26, v25, vcc_lo
	v_cndmask_b32_e32 v20, v25, v26, vcc_lo
	v_cndmask_b32_e32 v26, v28, v27, vcc_lo
	v_cndmask_b32_e32 v22, v27, v28, vcc_lo
	v_dual_cndmask_b32 v28, v31, v30 :: v_dual_cndmask_b32 v23, v30, v31
	v_cndmask_b32_e32 v30, v33, v29, vcc_lo
	v_cndmask_b32_e32 v25, v29, v33, vcc_lo
	v_mov_b32_e32 v29, 0x5410
	v_mov_b32_e32 v31, 0x7632
	v_cndmask_b32_e32 v33, v36, v32, vcc_lo
	v_cndmask_b32_e32 v27, v32, v36, vcc_lo
	v_dual_cndmask_b32 v36, v3, v12 :: v_dual_cndmask_b32 v3, v12, v3
	v_cndmask_b32_e32 v12, 0x1054, v29, vcc_lo
	v_cndmask_b32_e32 v29, 0x3276, v31, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v0, 0x1e0, v0
	v_permlanex16_b32 v31, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v12, 8, v12
	v_lshl_or_b32 v7, v29, 8, v29
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v39, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v7, 0x760076, v7
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v12, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v51, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_permlanex16_b32 v40, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v47, 0x5040504, v5
	v_and_b32_e32 v48, 0x7060706, v7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_perm_b32 v3, v4, v34, v47
	v_perm_b32 v4, v4, v34, v48
	v_perm_b32 v5, v31, v6, v47
	v_perm_b32 v6, v31, v6, v48
	v_perm_b32 v7, v32, v35, v47
	v_perm_b32 v8, v32, v35, v48
	v_cndmask_b32_e32 v35, 0x80000000, v1, vcc_lo
	v_perm_b32 v9, v39, v10, v47
	v_perm_b32 v10, v39, v10, v48
	v_perm_b32 v11, v12, v37, v47
	v_perm_b32 v12, v12, v37, v48
	v_perm_b32 v13, v29, v14, v47
	v_perm_b32 v14, v29, v14, v48
	s_mov_b32 s22, 0x7ffffffe
	v_permlanex16_b32 v41, v15, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_permlanex16_b32 v42, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v44, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_permlanex16_b32 v46, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_permlanex16_b32 v50, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v40, v16, v47
	v_perm_b32 v16, v40, v16, v48
	v_perm_b32 v17, v41, v18, v47
	v_perm_b32 v18, v41, v18, v48
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v19, v42, v21, v47
	v_perm_b32 v20, v42, v21, v48
	v_perm_b32 v21, v43, v24, v47
	v_perm_b32 v22, v43, v24, v48
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v23, v44, v38, v47
	v_perm_b32 v24, v44, v38, v48
	v_perm_b32 v25, v45, v26, v47
	v_perm_b32 v26, v45, v26, v48
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v27, v46, v28, v47
	v_perm_b32 v28, v46, v28, v48
	v_perm_b32 v29, v49, v30, v47
	v_perm_b32 v30, v49, v30, v48
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v50, v33, v47
	v_perm_b32 v32, v50, v33, v48
	v_perm_b32 v33, v51, v36, v47
	v_perm_b32 v34, v51, v36, v48
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 226
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 226
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29884
; TotalNumSgprs: 36
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 226
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
    .vgpr_spill_count: 0
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
