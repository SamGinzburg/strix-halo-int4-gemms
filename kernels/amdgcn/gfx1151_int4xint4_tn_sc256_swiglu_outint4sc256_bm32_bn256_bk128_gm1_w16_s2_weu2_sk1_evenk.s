	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v96, 15, v0
	v_lshlrev_b32_e32 v94, 2, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_abs_i32 s9, s2
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s9, s8
	s_xor_b32 s8, s2, s6
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s4, s13
	s_sub_i32 s33, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s12, 0xff
.Ltmp13:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
.LBB0_2:                                ; %Flow387
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v93, 0x1f0, v0
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v95, 4, v96
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v91, 0x1e0, v0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v92, 16, v0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v119, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s40, s4, 5
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 7, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s12, 1
	s_mov_b32 s12, 0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v2, 3, v93
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v4, 3, v1
	v_and_b32_e32 v5, 56, v94
	v_lshrrev_b32_e32 v6, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v7, 2, v1
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s41, s3, 6
	v_xor_b32_e32 v4, v4, v2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v1, 56, v6
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v27, s40, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v96, 10, v4
	v_lshl_or_b32 v4, v91, 5, v5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v24, s41, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v130, s1, v3
	v_xor_b32_e32 v1, v4, v1
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v3, 16, v27
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v6, 0x7c, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v16, v96, 6, v1
	v_or_b32_e32 v1, s41, v2
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s42, s2, 8
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v5, 64, v24
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_mul_lo_u32 v3, s42, v3
	v_add_nc_u32_e32 v4, 64, v1
	v_cmp_gt_i32_e64 s0, 0x80, v1
	v_lshrrev_b32_e32 v1, 3, v92
	v_sub_nc_u32_e32 v131, s1, v2
	v_lshl_or_b32 v2, s14, 9, v91
	v_cmp_gt_i32_e64 s2, 0x80, v4
	v_lshl_or_b32 v4, s3, 7, v6
	s_lshl_b32 s15, s13, 9
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	v_and_b32_e32 v132, 2, v1
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v1, 0x81, v4
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v135, 1, v3
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v3, 0x83, v4
	v_cmp_gt_i32_e64 s1, 0x80, v5
	v_mul_lo_u32 v5, s34, v5
	s_lshl_b32 s14, s14, 8
	v_mul_lo_u32 v6, s42, v27
	v_lshl_add_u32 v28, s35, 1, v2
	v_subrev_nc_u32_e32 v134, s15, v2
	v_mad_u64_u32 v[1:2], null, s35, v1, s[14:15]
	v_mad_u64_u32 v[2:3], null, s35, v3, s[14:15]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v3, 0x82, v4
	v_add3_u32 v137, v5, s40, v7
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v5, 0x80, v4
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v136, 1, v6
	v_or_b32_e32 v6, 2, v4
	v_or_b32_e32 v27, 3, v4
	v_subrev_nc_u32_e32 v138, s3, v1
	v_subrev_nc_u32_e32 v139, s3, v2
	v_mad_u64_u32 v[1:2], null, s35, v3, s[14:15]
	v_mad_u64_u32 v[2:3], null, s35, v4, s[14:15]
	v_mad_u64_u32 v[3:4], null, s35, v5, s[14:15]
	v_mad_u64_u32 v[4:5], null, s35, v6, s[14:15]
	v_mad_u64_u32 v[5:6], null, s35, v27, s[14:15]
	v_mul_lo_u32 v6, s34, v24
	v_xor_b32_e32 v9, 0x88, v8
	v_xor_b32_e32 v10, 0x110, v8
	v_xor_b32_e32 v11, 0x198, v8
	v_xor_b32_e32 v12, 0x220, v8
	v_xor_b32_e32 v13, 0x2a8, v8
	v_xor_b32_e32 v14, 0x330, v8
	v_xor_b32_e32 v15, 0x3b8, v8
	v_or_b32_e32 v17, 0x3f0, v0
	v_or_b32_e32 v18, 0x7f0, v0
	v_xor_b32_e32 v19, 8, v16
	v_xor_b32_e32 v20, 16, v16
	v_xor_b32_e32 v21, 24, v16
	v_xor_b32_e32 v22, 32, v16
	v_xor_b32_e32 v23, 40, v16
	v_xor_b32_e32 v25, 48, v16
	v_xor_b32_e32 v26, 56, v16
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v24
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v24, s35, v2
	v_subrev_nc_u32_e32 v133, s15, v28
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_subrev_nc_u32_e32 v140, s3, v1
	v_subrev_nc_u32_e32 v141, s3, v3
	v_subrev_nc_u32_e32 v142, s3, v2
	v_subrev_nc_u32_e32 v143, s3, v4
	v_subrev_nc_u32_e32 v145, s3, v5
	v_add3_u32 v146, v6, s40, v7
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v148, 0, v8
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v129, 0, v96
	v_subrev_nc_u32_e32 v144, s3, v24
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v147, 0, v94
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v149, 0, v9
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v150, 0, v10
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v151, 0, v11
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v152, 0, v12
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v153, 0, v13
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v154, 0, v14
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v155, 0, v15
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v156, 0, v17
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v157, 0, v18
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v158, 0, v16
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v159, 0, v19
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v160, 0, v20
	v_add_nc_u32_e32 v161, 0, v21
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v162, 0, v22
	v_add_nc_u32_e32 v163, 0, v23
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v164, 0, v25
	v_dual_mov_b32 v2, s13 :: v_dual_add_nc_u32 v165, 0, v26
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v7, s18
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v101, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s43, s35, 2
	s_lshl_b32 s44, s34, 7
	s_lshl_b32 s45, s35, 8
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s6
	s_mov_b32 s37, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v136, s[24:27], 0 offen
	buffer_load_u16 v10, v135, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s41, v130
	v_cmp_lt_i32_e64 s4, s41, v131
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v135, 2, v135
	s_add_i32 s42, s42, -1
	v_add_nc_u32_e32 v136, 2, v136
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v167, 16, v10
	v_lshlrev_b32_e32 v166, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v146, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v95, v143
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v17, v95, v144
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v21, v95, v145
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v143, s45, v143
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v25, v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v95, v142
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 228 35 is_stmt 1              ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v142, s45, v142
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x2
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s4, s41, 64
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s4, v130
	v_cmp_lt_i32_e64 s4, s4, v131
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v144, s45, v144
	v_add_nc_u32_e32 v145, s45, v145
	v_add_nc_u32_e32 v146, s44, v146
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s3, s1
	s_and_b32 s3, s4, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s41, 0x80
	s_cmp_lg_u32 s42, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(4)
	ds_store_b32 v147, v25 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v13, v9, 0x5010400
	v_perm_b32 v26, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v16, 8, v25
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v9.l, 0xff, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v148, v9
	v_lshrrev_b32_e32 v9, 24, v25
	v_and_b16 v9.h, 0xff, v25.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v16, v24, v20, 0x5010400
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v148, v9 offset:64
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v149, v9
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v149, v9 offset:64
	v_and_b16 v9.l, 0xff, v26.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v150, v9
	v_lshrrev_b32_e32 v9, 24, v26
	v_and_b16 v9.h, 0xff, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v13, v22, v18, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v150, v9 offset:64
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v151, v9
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v151, v9 offset:64
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v152, v9
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v14, v23, v19, 0x5010400
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v152, v9 offset:64
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v153, v9
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v11, v21, v17, 0x7030602
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v153, v9 offset:64
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v154, v9
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v15, v23, v19, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v10, v21, v17, 0x5010400
	v_perm_b32 v17, v24, v20, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v154, v9 offset:64
	v_and_b16 v9.l, 0xff, v12.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v155, v9
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v12, v22, v18, 0x5010400
	v_lshrrev_b32_e32 v18, 8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v9.h, 8, v18.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v155, v9 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v9.l, 0xff, v10.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v148, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v148, v9 offset:16448
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v149, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v13
	ds_store_b16 v149, v9 offset:16448
	v_and_b16 v9.l, 0xff, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v150, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v14
	ds_store_b16 v150, v9 offset:16448
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v151, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v151, v9 offset:16448
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v152, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v16
	ds_store_b16 v152, v9 offset:16448
	v_and_b16 v9.l, 0xff, v15.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v153, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v17
	ds_store_b16 v153, v9 offset:16448
	v_and_b16 v9.l, 0xff, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v154, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v16
	v_and_b16 v9.h, 0xff, v16.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v95, v140
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v140, s45, v140
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v154, v9 offset:16448
	v_and_b16 v9.l, 0xff, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v155, v9 offset:16384
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v155, v9 offset:16448
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v137, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v137, s44, v137
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v176, v9, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v19, v129 offset:33184
	ds_load_u8 v20, v129 offset:33152
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v95, v141
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v141, s45, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	buffer_load_b128 v[49:52], v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s3
	buffer_load_b128 v[53:56], v9, s[36:39], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[57:60], v158 offset1:32
	ds_load_2addr_stride64_b64 v[61:64], v159 offset1:32
	ds_load_2addr_stride64_b64 v[65:68], v160 offset1:32
	ds_load_2addr_stride64_b64 v[69:72], v161 offset1:32
	ds_load_2addr_stride64_b64 v[73:76], v162 offset1:32
	ds_load_2addr_stride64_b64 v[77:80], v163 offset1:32
	ds_load_2addr_stride64_b64 v[81:84], v164 offset1:32
	ds_load_2addr_stride64_b64 v[85:88], v165 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v129 offset:32928
	ds_load_u8 v10, v129 offset:32896
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33248
	ds_load_u8 v21, v129 offset:33216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v129 offset:32992
	ds_load_u8 v11, v129 offset:32960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v20, 16, v19
	ds_load_u8 v19, v129 offset:33056
	ds_load_u8 v20, v129 offset:33024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v129 offset:32864
	ds_load_u8 v10, v129 offset:32832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33120
	ds_load_u8 v21, v129 offset:33088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v129 offset:32768
	ds_load_u8 v17, v129 offset:32784
	ds_load_u8 v11, v129 offset:32800
	ds_load_u8 v18, v129 offset:32816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v19, v129 offset:33440
	ds_load_u8 v20, v129 offset:33408
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v25, v9, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33504
	ds_load_u8 v21, v129 offset:33472
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_lshl_or_b32 v30, v20, 16, v19
	ds_load_u8 v19, v129 offset:33312
	ds_load_u8 v20, v129 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33376
	ds_load_u8 v21, v129 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v20, 16, v19
	ds_load_u8 v19, v129 offset:33696
	ds_load_u8 v20, v129 offset:33664
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33760
	ds_load_u8 v21, v129 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v20, 16, v19
	ds_load_u8 v19, v129 offset:33568
	ds_load_u8 v20, v129 offset:33536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33632
	ds_load_u8 v21, v129 offset:33600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v20, 16, v19
	ds_load_u8 v19, v129 offset:33952
	ds_load_u8 v20, v129 offset:33920
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34016
	ds_load_u8 v21, v129 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v20, 16, v19
	ds_load_u8 v19, v129 offset:33824
	ds_load_u8 v20, v129 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33888
	ds_load_u8 v21, v129 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v20, 16, v19
	ds_load_u8 v19, v129 offset:34208
	ds_load_u8 v20, v129 offset:34176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[89:90], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34272
	ds_load_u8 v21, v129 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v20, 16, v19
	ds_load_u8 v19, v129 offset:34080
	ds_load_u8 v20, v129 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34144
	ds_load_u8 v21, v129 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v20, 16, v19
	ds_load_u8 v19, v129 offset:34464
	ds_load_u8 v20, v129 offset:34432
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[168:169], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34528
	ds_load_u8 v21, v129 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v20, 16, v19
	ds_load_u8 v19, v129 offset:34336
	ds_load_u8 v20, v129 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34400
	ds_load_u8 v21, v129 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v20, 16, v19
	ds_load_u8 v19, v129 offset:34720
	ds_load_u8 v20, v129 offset:34688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[170:171], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34784
	ds_load_u8 v21, v129 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v20, 16, v19
	ds_load_u8 v19, v129 offset:34592
	ds_load_u8 v20, v129 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:34656
	ds_load_u8 v21, v129 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v20, 16, v19
	ds_load_u8 v19, v129 offset:32944
	ds_load_u8 v20, v129 offset:32912
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[172:173], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v129 offset:33008
	ds_load_u8 v21, v129 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v20, 16, v19
	ds_load_u8 v19, v129 offset:32880
	ds_load_u8 v20, v129 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v174, v19, 16, v17
	ds_load_u8 v17, v129 offset:33200
	ds_load_u8 v18, v129 offset:33168
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[174:175], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33264
	ds_load_u8 v19, v129 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v129 offset:33072
	ds_load_u8 v18, v129 offset:33040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33136
	ds_load_u8 v19, v129 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v129 offset:33456
	ds_load_u8 v18, v129 offset:33424
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[57:58], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33520
	ds_load_u8 v19, v129 offset:33488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v129 offset:33328
	ds_load_u8 v18, v129 offset:33296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33392
	ds_load_u8 v19, v129 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v129 offset:33584
	ds_load_u8 v18, v129 offset:33552
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[61:62], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33648
	ds_load_u8 v19, v129 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v129 offset:33712
	ds_load_u8 v18, v129 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v156 offset:32768
	ds_load_u8 v19, v129 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v129 offset:33968
	ds_load_u8 v18, v129 offset:33936
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[65:66], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34032
	ds_load_u8 v19, v129 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v18, 16, v17
	ds_load_u8 v17, v129 offset:33840
	ds_load_u8 v18, v129 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:33904
	ds_load_u8 v19, v129 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	ds_load_u8 v17, v129 offset:34224
	ds_load_u8 v18, v129 offset:34192
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34288
	ds_load_u8 v19, v129 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v129 offset:34096
	ds_load_u8 v18, v129 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34160
	ds_load_u8 v19, v129 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v129 offset:34480
	ds_load_u8 v18, v129 offset:34448
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[73:74], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34544
	ds_load_u8 v19, v129 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v129 offset:34352
	ds_load_u8 v18, v129 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34416
	ds_load_u8 v19, v129 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	ds_load_u8 v17, v129 offset:34608
	ds_load_u8 v18, v129 offset:34576
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[77:78], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v129 offset:34672
	ds_load_u8 v19, v129 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v129 offset:34736
	ds_load_u8 v18, v129 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v157 offset:32768
	ds_load_u8 v19, v129 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v17, v95, v138
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v18, v95, v139
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v138, s45, v138
	v_add_nc_u32_e32 v139, s45, v139
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[81:82], v[33:40] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	buffer_load_b128 v[41:44], v17, s[36:39], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v18, s3
	buffer_load_b128 v[45:48], v17, s[36:39], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[25:26], v[1:8] neg_lo:[1,1,0]
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[27:28], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[29:30], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[31:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[89:90], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[57:58], v[25:32] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(2)
	v_perm_b32 v57, v53, v49, 0x5010400
	v_perm_b32 v58, v54, v50, 0x5010400
	v_perm_b32 v50, v54, v50, 0x7030602
	v_perm_b32 v54, v55, v51, 0x5010400
	v_perm_b32 v51, v55, v51, 0x7030602
	v_perm_b32 v55, v56, v52, 0x5010400
	v_perm_b32 v52, v56, v52, 0x7030602
	v_lshrrev_b32_e32 v56, 8, v57
	v_perm_b32 v53, v53, v49, 0x7030602
	v_and_b16 v49.l, 0xff, v57.l
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[61:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[168:169], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v49.h, 8, v56.l
	v_lshrrev_b32_e32 v56, 8, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[170:171], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v49.l, v49.l, v49.h
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b32 v147, v176 offset:32768
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[172:173], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v148, v49
	v_lshrrev_b32_e32 v49, 24, v57
	v_and_b16 v49.h, 0xff, v57.h
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v49.l, 8, v49.l
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[77:78], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v56.l
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[81:82], v[25:32] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v148, v49 offset:64
	v_and_b16 v49.l, 0xff, v53.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v149, v49
	v_lshrrev_b32_e32 v49, 24, v53
	v_and_b16 v49.h, 0xff, v53.h
	v_lshrrev_b32_e32 v53, 8, v58
	v_lshlrev_b16 v49.l, 8, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v53.l
	v_lshrrev_b32_e32 v53, 8, v50
	ds_store_b16 v149, v49 offset:64
	v_and_b16 v49.l, 0xff, v58.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v150, v49
	v_lshrrev_b32_e32 v49, 24, v58
	v_and_b16 v49.h, 0xff, v58.h
	v_lshlrev_b16 v49.l, 8, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v53.l
	ds_store_b16 v150, v49 offset:64
	v_and_b16 v49.l, 0xff, v50.l
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v151, v49
	v_lshrrev_b32_e32 v49, 24, v50
	v_and_b16 v49.h, 0xff, v50.h
	v_lshrrev_b32_e32 v50, 8, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v49.l, 8, v49.l
	v_or_b16 v49.l, v49.h, v49.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v49.h, 8, v50.l
	v_lshrrev_b32_e32 v50, 8, v51
	ds_store_b16 v151, v49 offset:64
	v_and_b16 v49.l, 0xff, v54.l
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v152, v49
	v_lshrrev_b32_e32 v49, 24, v54
	v_and_b16 v49.h, 0xff, v54.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v49.l, 8, v49.l
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v50.l
	v_lshrrev_b32_e32 v50, 8, v55
	ds_store_b16 v152, v49 offset:64
	v_and_b16 v49.l, 0xff, v51.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v153, v49
	v_lshrrev_b32_e32 v49, 24, v51
	v_and_b16 v49.h, 0xff, v51.h
	v_lshlrev_b16 v49.l, 8, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v50.l
	v_lshrrev_b32_e32 v50, 8, v52
	ds_store_b16 v153, v49 offset:64
	v_and_b16 v49.l, 0xff, v55.l
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v154, v49
	v_lshrrev_b32_e32 v49, 24, v55
	v_and_b16 v49.h, 0xff, v55.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v49.l, 8, v49.l
	v_or_b16 v49.l, v49.h, v49.l
	v_lshlrev_b16 v49.h, 8, v50.l
	ds_store_b16 v154, v49 offset:64
	v_and_b16 v49.l, 0xff, v52.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v49.l, v49.l, v49.h
	ds_store_b16 v155, v49
	v_lshrrev_b32_e32 v49, 24, v52
	v_and_b16 v49.h, 0xff, v52.h
	v_lshlrev_b16 v49.l, 8, v49.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v49.l, v49.h, v49.l
	ds_store_b16 v155, v49 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v45, v41, 0x5010400
	v_perm_b32 v50, v45, v41, 0x7030602
	v_perm_b32 v45, v47, v43, 0x5010400
	v_perm_b32 v43, v47, v43, 0x7030602
	v_perm_b32 v49, v46, v42, 0x5010400
	v_lshrrev_b32_e32 v47, 8, v51
	v_perm_b32 v46, v46, v42, 0x7030602
	v_perm_b32 v42, v48, v44, 0x5010400
	v_perm_b32 v41, v48, v44, 0x7030602
	v_and_b16 v44.l, 0xff, v51.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v148, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v51
	v_and_b16 v44.h, 0xff, v51.h
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v49
	ds_store_b16 v148, v44 offset:16448
	v_and_b16 v44.l, 0xff, v50.l
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v149, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v50
	v_and_b16 v44.h, 0xff, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v46
	ds_store_b16 v149, v44 offset:16448
	v_and_b16 v44.l, 0xff, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v150, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v49
	v_and_b16 v44.h, 0xff, v49.h
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	ds_store_b16 v150, v44 offset:16448
	v_and_b16 v44.l, 0xff, v46.l
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v151, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v46
	v_and_b16 v44.h, 0xff, v46.h
	v_lshrrev_b32_e32 v46, 8, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.l, v44.h, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.h, 8, v46.l
	ds_store_b16 v151, v44 offset:16448
	v_and_b16 v44.l, 0xff, v45.l
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v152, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_lshrrev_b32_e32 v45, 8, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.l, v44.h, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.h, 8, v45.l
	ds_store_b16 v152, v44 offset:16448
	v_and_b16 v44.l, 0xff, v43.l
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v153, v44 offset:16384
	v_lshrrev_b32_e32 v44, 24, v43
	v_and_b16 v43.h, 0xff, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v43.l, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v42
	v_or_b16 v43.l, v43.h, v43.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v43.h, 8, v44.l
	ds_store_b16 v153, v43 offset:16448
	v_and_b16 v43.l, 0xff, v42.l
	v_or_b16 v43.l, v43.l, v43.h
	ds_store_b16 v154, v43 offset:16384
	v_lshrrev_b32_e32 v43, 24, v42
	v_and_b16 v42.h, 0xff, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v42.l, 8, v43.l
	v_lshrrev_b32_e32 v43, 8, v41
	v_or_b16 v42.l, v42.h, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v42.h, 8, v43.l
	ds_store_b16 v154, v42 offset:16448
	v_and_b16 v42.l, 0xff, v41.l
	v_or_b16 v42.l, v42.l, v42.h
	ds_store_b16 v155, v42 offset:16384
	v_lshrrev_b32_e32 v42, 24, v41
	v_and_b16 v41.h, 0xff, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v41.l, 8, v42.l
	v_or_b16 v41.l, v41.h, v41.l
	ds_store_b16 v155, v41 offset:16448
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[41:44], v158 offset1:32
	ds_load_2addr_stride64_b64 v[45:48], v159 offset1:32
	ds_load_2addr_stride64_b64 v[49:52], v160 offset1:32
	ds_load_2addr_stride64_b64 v[53:56], v161 offset1:32
	ds_load_2addr_stride64_b64 v[57:60], v162 offset1:32
	ds_load_2addr_stride64_b64 v[61:64], v163 offset1:32
	ds_load_2addr_stride64_b64 v[65:68], v164 offset1:32
	ds_load_2addr_stride64_b64 v[69:72], v165 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	ds_load_u8 v73, v129 offset:32928
	ds_load_u8 v74, v129 offset:32896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v129 offset:32992
	ds_load_u8 v75, v129 offset:32960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v129 offset:32864
	ds_load_u8 v75, v129 offset:32832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v129 offset:32768
	ds_load_u8 v89, v129 offset:32784
	ds_load_u8 v76, v129 offset:32800
	ds_load_u8 v168, v129 offset:32816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v75, v75, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v73, v73, 16, v75
	ds_load_u8 v75, v129 offset:33184
	ds_load_u8 v76, v129 offset:33152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[73:74], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v129 offset:33248
	ds_load_u8 v77, v129 offset:33216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v129 offset:33056
	ds_load_u8 v77, v129 offset:33024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v77, v75, 0xc0c0004
	ds_load_u8 v77, v129 offset:33120
	ds_load_u8 v78, v129 offset:33088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v77, 16, v75
	ds_load_u8 v77, v129 offset:33440
	ds_load_u8 v78, v129 offset:33408
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[75:76], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v129 offset:33504
	ds_load_u8 v79, v129 offset:33472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v129 offset:33312
	ds_load_u8 v79, v129 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v129 offset:33376
	ds_load_u8 v80, v129 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	ds_load_u8 v79, v129 offset:33696
	ds_load_u8 v80, v129 offset:33664
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[77:78], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v129 offset:33760
	ds_load_u8 v81, v129 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v129 offset:33568
	ds_load_u8 v81, v129 offset:33536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v81, v79, 0xc0c0004
	ds_load_u8 v81, v129 offset:33632
	ds_load_u8 v82, v129 offset:33600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v81, 16, v79
	ds_load_u8 v81, v129 offset:33952
	ds_load_u8 v82, v129 offset:33920
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[79:80], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[79:80], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v129 offset:34016
	ds_load_u8 v83, v129 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v129 offset:33824
	ds_load_u8 v83, v129 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v129 offset:33888
	ds_load_u8 v84, v129 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	ds_load_u8 v83, v129 offset:34208
	ds_load_u8 v84, v129 offset:34176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[81:82], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[81:82], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v129 offset:34272
	ds_load_u8 v85, v129 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v84, 16, v83
	ds_load_u8 v83, v129 offset:34080
	ds_load_u8 v85, v129 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	ds_load_u8 v85, v129 offset:34144
	ds_load_u8 v86, v129 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v85, 16, v83
	ds_load_u8 v85, v129 offset:34464
	ds_load_u8 v86, v129 offset:34432
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[83:84], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[83:84], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v129 offset:34528
	ds_load_u8 v87, v129 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v129 offset:34336
	ds_load_u8 v87, v129 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v129 offset:34400
	ds_load_u8 v88, v129 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	ds_load_u8 v87, v129 offset:34720
	ds_load_u8 v88, v129 offset:34688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[85:86], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[85:86], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v129 offset:34784
	ds_load_u8 v90, v129 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v88, 16, v87
	ds_load_u8 v87, v129 offset:34592
	ds_load_u8 v90, v129 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v90, v87, 0xc0c0004
	ds_load_u8 v90, v129 offset:34656
	ds_load_u8 v169, v129 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v169, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v87, v90, 16, v87
	ds_load_u8 v90, v129 offset:32944
	ds_load_u8 v169, v129 offset:32912
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[87:88], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[87:88], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v169, v90, 0xc0c0004
	ds_load_u8 v169, v129 offset:33008
	ds_load_u8 v170, v129 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v169, 16, v90
	ds_load_u8 v169, v129 offset:32880
	ds_load_u8 v170, v129 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	v_lshl_or_b32 v89, v169, 16, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[89:90], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v41, v129 offset:33200
	ds_load_u8 v42, v129 offset:33168
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[89:90], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v129 offset:33264
	ds_load_u8 v168, v129 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v168, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v129 offset:33072
	ds_load_u8 v168, v129 offset:33040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v168, v41, 0xc0c0004
	ds_load_u8 v168, v129 offset:33136
	ds_load_u8 v169, v129 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v168, 16, v41
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[41:42], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v129 offset:33456
	ds_load_u8 v46, v129 offset:33424
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[41:42], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v129 offset:33520
	ds_load_u8 v168, v129 offset:33488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v168, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v129 offset:33328
	ds_load_u8 v168, v129 offset:33296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v168, v45, 0xc0c0004
	ds_load_u8 v168, v129 offset:33392
	ds_load_u8 v169, v129 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v168, 16, v45
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[45:46], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v129 offset:33584
	ds_load_u8 v50, v129 offset:33552
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[45:46], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v129 offset:33648
	ds_load_u8 v168, v129 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v168, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v50, 16, v49
	ds_load_u8 v50, v129 offset:33712
	ds_load_u8 v168, v129 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v168, v50, 0xc0c0004
	ds_load_u8 v168, v156 offset:32768
	ds_load_u8 v169, v129 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v168, 16, v50
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[49:50], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v53, v129 offset:33968
	ds_load_u8 v54, v129 offset:33936
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[49:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v129 offset:34032
	ds_load_u8 v168, v129 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v168, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v129 offset:33840
	ds_load_u8 v168, v129 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v168, v53, 0xc0c0004
	ds_load_u8 v168, v129 offset:33904
	ds_load_u8 v169, v129 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v168, 16, v53
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[53:54], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v57, v129 offset:34224
	ds_load_u8 v58, v129 offset:34192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[53:54], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v129 offset:34288
	ds_load_u8 v168, v129 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v168, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v129 offset:34096
	ds_load_u8 v168, v129 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v168, v57, 0xc0c0004
	ds_load_u8 v168, v129 offset:34160
	ds_load_u8 v169, v129 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v168, 16, v57
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[57:58], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v129 offset:34480
	ds_load_u8 v62, v129 offset:34448
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[57:58], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v129 offset:34544
	ds_load_u8 v168, v129 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v168, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v129 offset:34352
	ds_load_u8 v168, v129 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v168, v61, 0xc0c0004
	ds_load_u8 v168, v129 offset:34416
	ds_load_u8 v169, v129 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v168, 16, v61
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[61:62], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v65, v129 offset:34608
	ds_load_u8 v66, v129 offset:34576
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[61:62], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v129 offset:34672
	ds_load_u8 v168, v129 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v168, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v66, 16, v65
	ds_load_u8 v66, v129 offset:34736
	ds_load_u8 v168, v129 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v168, v66, 0xc0c0004
	ds_load_u8 v168, v157 offset:32768
	ds_load_u8 v169, v129 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v168, 16, v66
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[65:66], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v41, v132, v134
	s_clause 0x7
	buffer_load_u16 v48, v41, s[8:11], 0 offen
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v42, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v41, v41, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v33, v167, v33
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v134, s43, v134
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v98, v33, v48 :: v_dual_add_nc_u32 v49, v132, v133
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v38, v167, v38
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v50, v49, s[8:11], 0 offen
	buffer_load_u16 v51, v49, s[8:11], 0 offen offset:4
	buffer_load_u16 v52, v49, s[8:11], 0 offen offset:8
	buffer_load_u16 v53, v49, s[8:11], 0 offen offset:12
	buffer_load_u16 v54, v49, s[8:11], 0 offen offset:16
	buffer_load_u16 v55, v49, s[8:11], 0 offen offset:20
	buffer_load_u16 v56, v49, s[8:11], 0 offen offset:24
	buffer_load_u16 v49, v49, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v36, v167, v36 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v37, v167, v37 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v34, v167, v34 :: v_dual_lshlrev_b32 v43, 16, v43
	v_mul_f32_e32 v40, v167, v40
	v_mul_f32_e32 v39, v167, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v103, v38, v43 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v35, v167, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v104, v39, v42 :: v_dual_fmac_f32 v101, v40, v41
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v12, v166, v12 :: v_dual_lshlrev_b32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v100, v35, v46 :: v_dual_fmac_f32 v99, v34, v47
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v166, v10 :: v_dual_fmac_f32 v97, v36, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v124, v12, v45
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v12, v16
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v122, v10, v47
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v14
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v14, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v102, v37, v44
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v20, v166, v20
	v_mul_f32_e32 v18, v166, v18
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v166, v12
	v_mul_f32_e32 v10, v166, v10
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v16, v166, v16 :: v_dual_add_nc_u32 v133, s43, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v117, v12, v41
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v115, v10, v43 :: v_dual_lshlrev_b32 v40, 16, v50
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v50, v26
	v_cvt_f32_i32_e32 v26, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v167, v50
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v26, v167, v26 :: v_dual_lshlrev_b32 v33, 16, v49
	v_cvt_f32_i32_e32 v49, v25
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v39, 16, v51
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v51, v27
	v_cvt_f32_i32_e32 v27, v30
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v38, 16, v52
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v52, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v25, v32
	v_mul_f32_e32 v27, v167, v27
	v_mul_f32_e32 v17, v166, v17
	v_mul_f32_e32 v29, v167, v52
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v11, v166, v11 :: v_dual_lshlrev_b32 v34, 16, v56
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v28, v167, v28 :: v_dual_lshlrev_b32 v35, 16, v55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v128, v17, v40 :: v_dual_fmac_f32 v123, v11, v46
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v15, v23
	v_dual_mul_f32 v25, v167, v25 :: v_dual_lshlrev_b32 v36, 16, v54
	v_mul_f32_e32 v32, v167, v49
	v_dual_mul_f32 v30, v167, v51 :: v_dual_lshlrev_b32 v37, 16, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v15, v166, v15 :: v_dual_fmac_f32 v106, v28, v36
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v11, v166, v11 :: v_dual_fmac_f32 v112, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v127, v18, v39 :: v_dual_fmac_f32 v120, v15, v34
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v9, v166, v9 :: v_dual_fmac_f32 v116, v11, v42
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v119, v16, v33 :: v_dual_fmac_f32 v110, v30, v38
	v_dual_fmac_f32 v111, v31, v39 :: v_dual_fmac_f32 v108, v26, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v121, v9, v48
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v13, v21
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v105, v29, v37
	v_fmac_f32_e32 v107, v27, v35
	v_fmac_f32_e32 v109, v25, v33
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v166, v9
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v14, v166, v14
	v_mul_f32_e32 v13, v166, v13
	v_mul_f32_e32 v19, v166, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v113, v9, v44
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v125, v20, v37 :: v_dual_fmac_f32 v118, v14, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v114, v13, v36
	v_fmac_f32_e32 v126, v19, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v1, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v105
	v_dual_mul_f32 v9, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_dual_mul_f32 v1, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v119
	v_mul_f32_e32 v10, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v12, 0xbfb8aa3b, v109 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v125
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v3, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v9
	v_dual_mul_f32 v13, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v112
	v_ldexp_f32 v2, v3, v2
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v125
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v4, v5, v4
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v126
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v5, null, v2, v2, v128
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v1, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v16, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, vcc_lo, v128, v2, v128
	v_div_scale_f32 v26, s0, v127, v4, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v3, v3, v7
	v_ldexp_f32 v1, v1, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v6, null, v4, v4, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v5, v16, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v106
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v16, v23, v16 :: v_dual_add_f32 v1, 1.0, v1
	v_div_scale_f32 v30, null, v3, v3, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v6, v17, 1.0
	v_dual_fmac_f32 v17, v24, v17 :: v_dual_mul_f32 v24, v25, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v19, null, v1, v1, v126
	v_div_scale_f32 v28, s2, v126, v1, v126
	v_mul_f32_e32 v27, v26, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v7, v19
	v_fma_f32 v29, -v6, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v29, v17
	v_fma_f32 v23, -v19, v7, 1.0
	v_rcp_f32_e32 v29, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v27, v26
	v_fmac_f32_e32 v7, v23, v7
	v_fma_f32 v23, -v5, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v111 :: v_dual_fmac_f32 v24, v23, v16
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v5, v24, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v5, v5, v16, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v118
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v17, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, s3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v2, v5, v2, v128
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v6, v4, v127
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v6, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v4, -v30, v29, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v120
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v23, s0, v125, v3, v125
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v29, v4, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v4, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v6, v6, v11
	v_exp_f32_e32 v11, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v119
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v17, 1.0, v6 :: v_dual_mul_f32 v6, v23, v29
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v31, v28, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v4, v4, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v17, v17, v114
	v_fma_f32 v32, -v19, v31, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v11, v11, v16
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v16, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v24, v10
	v_fmac_f32_e32 v31, v32, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v4, v9, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v8, null, v16, v16, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v19, v31, v28
	v_div_scale_f32 v9, null, v11, v11, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v19, v7, v31
	v_fma_f32 v19, -v30, v6, v23
	v_rcp_f32_e32 v25, v9
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v31, s1, v120, v11, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, v19, v29 :: v_dual_add_f32 v19, 1.0, v4
	v_div_fixup_f32 v1, v7, v1, v126
	v_fma_f32 v4, -v10, v24, 1.0
	v_fma_f32 v7, -v30, v6, v23
	v_rcp_f32_e32 v23, v8
	v_div_scale_f32 v26, null, v19, v19, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v4, v24
	v_div_fmas_f32 v6, v7, v29, v6
	v_div_scale_f32 v27, vcc_lo, v114, v17, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v28, v26
	v_div_scale_f32 v30, s0, v118, v16, v118
	v_fma_f32 v4, -v8, v23, 1.0
	v_div_fixup_f32 v3, v6, v3, v125
	v_fma_f32 v6, -v9, v25, 1.0
	v_mul_f32_e32 v29, v27, v24
	v_div_scale_f32 v34, s2, v119, v19, v119
	v_fmac_f32_e32 v23, v4, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v6, v25
	v_fma_f32 v6, -v26, v28, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v124, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v3, -v10, v29, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v32, v30, v23 :: v_dual_mul_f32 v33, v31, v25
	v_fmac_f32_e32 v28, v6, v28
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v123, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v29, v3, v24
	v_fma_f32 v1, -v8, v32, v30
	v_fma_f32 v3, -v9, v33, v31
	v_mul_f32_e32 v35, v34, v28
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v122, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v10, v29, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v32, v1, v23 :: v_dual_fmac_f32 v33, v3, v25
	v_fma_f32 v1, -v26, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v5, v24, v29
	v_fma_f32 v5, -v8, v32, v30
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v1, v28
	v_fma_f32 v1, -v9, v33, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v5, v5, v23, v32
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v8, -v26, v35, v34
	v_div_fmas_f32 v1, v1, v25, v33
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v5, v5, v16, v118
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v9, v8, v28, v35
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v121, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v2, v1, v11, v120
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v2, v116, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v1, v9, v19, v119
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v10, v10
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v105
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v3, v17, v114
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_exp_f32_e32 v16, v18
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_ldexp_f32 v9, v10, v9
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v16, v15
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v18, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v10, v17, v11
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_ldexp_f32 v11, v20, v19
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v16, v18, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v18, null, v9, v9, v112
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v17, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v10, v10, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v12, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v23, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, vcc_lo, v112, v9, v112
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v14, v17, v14
	v_ldexp_f32 v17, v22, v21
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v108
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v18, v12, 1.0
	v_div_scale_f32 v25, null, v11, v11, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v20, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v26, -v13, v23, 1.0
	v_fmac_f32_e32 v12, v24, v12
	v_rcp_f32_e32 v24, v25
	v_div_scale_f32 v31, null, v17, v17, v109
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v1, v117, v1 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v33, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v19, v20, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v20, v27, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v25, v24, 1.0
	v_fma_f32 v28, -v18, v20, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v22, v24
	v_fma_f32 v37, -v31, v33, 1.0
	v_div_scale_f32 v22, s1, v110, v11, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v28, v12 :: v_dual_fmac_f32 v33, v37, v33
	v_div_scale_f32 v37, s4, v109, v17, v109
	v_fmac_f32_e32 v23, v26, v23
	v_div_scale_f32 v26, s0, v111, v10, v111
	v_mul_f32_e32 v40, v37, v33
	v_mul_f32_e32 v28, v22, v24
	v_fma_f32 v18, -v18, v20, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v26, v23
	v_div_fmas_f32 v12, v18, v12, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v13, v21, v26
	v_div_scale_f32 v18, null, v16, v16, v106
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v21, v29, v23
	v_div_scale_f32 v29, null, v15, v15, v105
	v_fma_f32 v13, -v13, v21, v26
	v_fma_f32 v26, -v25, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v27, v29
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v115, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v13, v23, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v26, v24
	v_rcp_f32_e32 v23, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v13, v10, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v21, -v25, v28, v22
	v_fma_f32 v20, -v29, v27, 1.0
	v_div_scale_f32 v22, null, v14, v14, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v24, v28
	v_fmac_f32_e32 v27, v20, v27
	v_div_scale_f32 v20, s0, v105, v15, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v22
	v_fma_f32 v24, -v18, v23, 1.0
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v30, v20, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, s1, v106, v16, v106
	v_fma_f32 v34, -v29, v30, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v22, v25, 1.0
	v_mul_f32_e32 v36, v24, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v34, v27
	v_fma_f32 v34, -v18, v36, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v32, v25
	v_div_scale_f32 v32, s2, v107, v14, v107
	v_fma_f32 v20, -v29, v30, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v34, v23
	v_mul_f32_e32 v38, v32, v25
	v_div_fixup_f32 v21, v21, v11, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v27, v30
	v_fma_f32 v18, -v18, v36, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v29, -v22, v38, v32
	v_fma_f32 v24, -v31, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v23, v36
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v38, v29, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v38, v32
	v_div_fmas_f32 v22, v22, v25, v38
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v25, v113, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v12, v9, v112
	v_div_fixup_f32 v12, v18, v16, v106
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v100, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v22, v14, v107
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v22, 7, v96
.Ltmp25:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v98, v3
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v40, v24, v33
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, |v8|, |v7|, |v6|
.Ltmp27:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v11, v103, v11 :: v_dual_mul_f32 v12, v102, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, null, v19, v19, v108
	v_fma_f32 v24, -v31, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v35, -v26, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s3, v108, v19, v108
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v28
	v_fma_f32 v34, -v26, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v28
	v_fma_f32 v23, -v26, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v28, v39
	s_mov_b32 vcc_lo, s4
	s_mov_b32 s4, 0x76543210
	v_div_fmas_f32 v24, v24, v33, v40
	v_div_fixup_f32 v10, v23, v19, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v24, v17, v109
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v17, v99, v13 :: v_dual_mul_f32 v10, v104, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v14, v20, v15, v105
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v15, |v2|, |v1|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v19, |v18|, |v17|, |v16|
.Ltmp29:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v97, v14
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v14, |v4|, |v25|, |v5|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v20, |v13|, |v12|, |v11|
	v_max3_f32 v14, v3, v14, v15
.Ltmp31:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v101, v9
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v3, 3, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v21, |v10|, |v9|
	v_max3_f32 v15, v19, v20, v21
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v19, v14, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v21, 2, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v20, v15, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v23, v3, v21
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v14, v14, v19
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v19, v91, 2, v3
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v20
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v20, 0, v22, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v19, v19, v21, 0
	ds_store_b64 v20, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v20, v15
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v15, v15, v20
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v20
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v14
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v14, v14, v19 :: v_dual_max_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, v14, v19 :: v_dual_max_f32 v15, v15, v20
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v14 :: v_dual_add_nc_u32 v20, 0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v14, v14, v19
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v14, v14, v19 :: v_dual_add_nc_u32 v19, 0, v21
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v19, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v20
.Ltmp57:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, 0x2b8cbccc, v14 :: v_dual_max_f32 v15, 0x2b8cbccc, v15
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v14, 0x40e00000, v14
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	v_rcp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v19, v20, v22
	v_div_fixup_f32 v14, v19, 0x40e00000, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v23, v21, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v20, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, vcc_lo, v15, 0x40e00000, v15
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v14, v14, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v20, v19, v21
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v23, v20, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v26, null, v22, v22, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v20, v24, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v22, v22, v6
	v_rcp_f32_e32 v24, v26
	v_div_scale_f32 v33, null, v22, v22, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v19, -v23, v20, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v23, null, v22, v22, v7
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, null, v22, v22, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v19, v19, v21, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v26, v24, 1.0
	v_rcp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v15, v19, 0x40e00000, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v24, v20, v24
	v_rcp_f32_e32 v19, v27
	v_div_scale_f32 v20, vcc_lo, v8, v22, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v29, v15, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v23, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v30, v20, v24
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v29, v15, v29, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v31, -v27, v19, 1.0
	v_fma_f32 v32, -v26, v30, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, v31, v19 :: v_dual_fmac_f32 v30, v32, v24
	v_div_scale_f32 v31, s1, v6, v22, v6
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s0, v7, v22, v7
	v_mul_f32_e32 v32, v31, v19
	v_fma_f32 v20, -v26, v30, v20
	v_fma_f32 v26, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v28, v21
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 0xffff0000, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v24, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v26, v35
	v_fma_f32 v15, -v23, v34, v28
	v_div_scale_f32 v24, s2, v4, v22, v4
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v8, v20, v22, v8
	v_fmac_f32_e32 v34, v15, v21
	v_fma_f32 v15, -v27, v32, v31
	v_mul_f32_e32 v26, v24, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v23, -v23, v34, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v15, v19
	v_rcp_f32_e32 v15, v37
	v_fma_f32 v30, -v33, v26, v24
	v_fmac_f32_e32 v26, v30, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v37, v15, 1.0
	v_fmac_f32_e32 v15, v28, v15
	v_div_fmas_f32 v21, v23, v21, v34
	v_fma_f32 v23, -v27, v32, v31
	v_div_scale_f32 v27, null, v22, v22, v5
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v28, s0, v25, v22, v25
	v_div_fmas_f32 v19, v23, v19, v32
	v_rcp_f32_e32 v23, v27
	v_div_fixup_f32 v7, v21, v22, v7
	v_fma_f32 v21, -v33, v26, v24
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v19, v22, v6
	v_mul_f32_e32 v19, v28, v15
	v_div_scale_f32 v24, null, v22, v22, v2
	v_div_fmas_f32 v21, v21, v35, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v20, -v27, v23, 1.0
	v_fma_f32 v30, -v37, v19, v28
	v_rcp_f32_e32 v31, v24
	v_div_fixup_f32 v4, v21, v22, v4
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, s1, v5, v22, v5
	v_fmac_f32_e32 v19, v30, v15
	v_div_scale_f32 v30, null, v22, v22, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v26, v20, v23
	v_fma_f32 v32, -v24, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v37, v19, v28
	v_rcp_f32_e32 v33, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v27, v26, v20
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v15, v21, v15, v19
	v_div_scale_f32 v19, null, v36, v36, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v28, v23
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v15, v22, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v28, v19
	v_fma_f32 v25, -v30, v33, 1.0
	v_fma_f32 v20, -v27, v26, v20
	v_div_scale_f32 v21, s0, v2, v22, v2
	v_div_scale_f32 v37, s1, v18, v36, v18
	v_fmac_f32_e32 v33, v25, v33
	v_div_scale_f32 v25, s2, v1, v22, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v19, v28, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v34, v28
	v_div_fmas_f32 v20, v20, v23, v26
	v_dual_mul_f32 v26, v25, v33 :: v_dual_fmac_f32 v31, v32, v31
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v37, v28
	v_div_fixup_f32 v5, v20, v22, v5
	v_div_scale_f32 v32, null, v36, v36, v17
	v_mul_f32_e32 v27, v21, v31
	v_div_scale_f32 v34, null, v36, v36, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v23, -v24, v27, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v39, v34
	v_fmac_f32_e32 v27, v23, v31
	v_fma_f32 v23, -v30, v26, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v32, v35, 1.0
	v_fma_f32 v20, -v24, v27, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, v23, v33
	v_fma_f32 v21, -v19, v40, v37
	v_fma_f32 v24, -v34, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v30, v26, v25
	v_fmac_f32_e32 v40, v21, v28
	v_div_fmas_f32 v20, v20, v31, v27
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v31, null, v36, v36, v9
	v_div_fmas_f32 v25, v25, v33, v26
	v_div_scale_f32 v26, null, v36, v36, v13
	v_div_fixup_f32 v2, v20, v22, v2
	v_fma_f32 v19, -v19, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v1, v25, v22, v1
	v_rcp_f32_e32 v30, v26
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v20, null, v36, v36, v12
	v_div_fmas_f32 v19, v19, v28, v40
	v_rcp_f32_e32 v33, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v1, v1
	v_rndne_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v18, v19, v36, v18
	v_fma_f32 v22, -v26, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v30, v22, v30
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, s3, v17, v36, v17
	v_fmac_f32_e32 v39, v24, v39
	v_div_scale_f32 v24, s0, v16, v36, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v23, v38, v35
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v22, null, v36, v36, v11
	v_fma_f32 v21, -v32, v23, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v25, v22
	v_fmac_f32_e32 v23, v21, v35
	v_mul_f32_e32 v21, v24, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v32, v23, v38
	v_fma_f32 v28, -v34, v21, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v22, v25, 1.0
	v_fma_f32 v38, -v31, v33, 1.0
	v_div_fmas_f32 v23, v27, v35, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v28, v39
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s3, v9, v36, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v34, v21, v24
	v_div_fixup_f32 v17, v23, v36, v17
	v_div_scale_f32 v23, null, v36, v36, v10
	v_div_fmas_f32 v19, v19, v39, v21
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v23
	v_div_scale_f32 v24, vcc_lo, v13, v36, v13
	v_div_fixup_f32 v16, v19, v36, v16
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v28, v24, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v19, -v20, v21, 1.0
	v_fma_f32 v35, -v23, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v26, v28, v24
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, s0, v12, v36, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v35, v27
	v_div_scale_f32 v35, s2, v10, v36, v10
	v_dual_mul_f32 v37, v19, v21 :: v_dual_fmac_f32 v28, v34, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v25, v32, v25 :: v_dual_mul_f32 v40, v35, v27
	v_div_scale_f32 v32, s1, v11, v36, v11
	v_fma_f32 v34, -v20, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v26, v28, v24
	v_fmac_f32_e32 v37, v34, v21
	v_fma_f32 v34, -v23, v40, v35
	v_mul_f32_e32 v39, v32, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v24, v24, v30, v28
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v19, -v20, v37, v19
	v_fmac_f32_e32 v40, v34, v27
	v_fma_f32 v26, -v22, v39, v32
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v19, v19, v21, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v39, v26, v25 :: v_dual_lshlrev_b32 v26, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v41, v38, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v22, v39, v32
	v_div_fixup_f32 v12, v19, v36, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v4
	v_and_b32_e32 v4, 15, v8
	v_and_b32_e32 v8, 15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v31, v41, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v24, v36, v13
	v_div_fmas_f32 v21, v21, v25, v39
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v41, v20, v33
	v_fma_f32 v20, -v23, v40, v35
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v21, v36, v11
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v31, v41, v38
	v_div_fmas_f32 v20, v20, v27, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v20, v36, v10
	v_div_fmas_f32 v22, v22, v33, v41
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v2, v2, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v1, v1
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v22, v36, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v2, v2
	v_cvt_i32_f32_e32 v22, v11
	v_and_b32_e32 v11, 15, v1
	v_and_b32_e32 v15, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 11, v0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v13, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v5
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v23, v10
	v_and_b32_e32 v5, 15, v7
	v_and_b32_e32 v7, 15, v19
	v_and_b32_e32 v10, 15, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x60, v0
	v_and_or_b32 v19, 0x600, v94, v95
	v_and_b32_e32 v1, 0x3000, v1
	v_and_b32_e32 v13, 0x60, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v6, v6
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v25, 7, v92
	v_xor_b32_e32 v2, v19, v2
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v12, 0x3600, v26, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v21, v16
	v_and_b32_e32 v6, 15, v6
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v1, v25, v2
	v_xad_u32 v2, v12, v93, 0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[4:7]
	ds_store_b128 v1, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v2
	ds_load_b128 v[15:18], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v21, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v12.h, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v9
	v_and_b32_e32 v9, 15, v20
	v_and_b32_e32 v20, 15, v22
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v12.l, v14.h
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[8:11]
	ds_store_b128 v1, v[19:22] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v2
	ds_load_b128 v[19:22], v2 offset:2048
.Ltmp58:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 4, v93
.Ltmp59:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v29.h
	v_mov_b16_e32 v2.h, v12.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v15, 4, v4
	v_lshl_or_b32 v6, v17, 4, v6
	v_lshl_or_b32 v7, v18, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s40, v1
	v_lshl_or_b32 v1, s33, 7, v3
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v16, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s21, 0xffff
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[1:2]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v7.l
	v_and_b16 v1.h, 0xff, v6.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v12, v2, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v10, v21, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s40
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v22, 4, v11
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v19, 4, v8
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v20, 4, v9
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v11.l
	v_and_b16 v1.h, 0xff, v10.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v9.l
	v_and_b16 v2.h, 0xff, v8.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v12, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v91
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp60:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 177
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 177
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16980
; TotalNumSgprs: 48
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 177
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
