	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v68, 15, v0
	v_lshlrev_b32_e32 v98, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp15:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow338
	s_load_b128 s[20:23], s[0:1], 0x20
	v_lshrrev_b32_e32 v66, 4, v0
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v67, 4, v68
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v64, 0x1e0, v0
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v65, 16, v0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s34, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s12, 31
	v_lshrrev_b32_e32 v4, 2, v0
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v7, 1, v66
	s_add_i32 s12, s12, s0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_or_b32_e32 v2, 32, v66
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s12, 1
	s_mov_b32 s12, 0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s40, s3, 6
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v1, 2, v68
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s16, s13, 9
	v_lshl_or_b32 v7, s3, 7, v7
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v4, 56, v4
	v_and_b32_e32 v5, 56, v98
	v_sub_nc_u32_e32 v102, s15, v2
	v_or_b32_e32 v2, v3, v68
	v_or_b32_e32 v3, s40, v66
	v_xor_b32_e32 v10, v98, v4
	v_or_b32_e32 v4, s40, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
	v_lshl_or_b32 v9, v68, 6, v5
	s_lshr_b32 s0, s1, 24
	v_add_nc_u32_e32 v103, 0, v2
	s_add_i32 s2, s2, s0
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v2, 64, v3
	v_add_nc_u32_e32 v5, 64, v4
	v_cmp_gt_i32_e64 s0, 0x80, v3
	v_lshl_or_b32 v3, s14, 9, v64
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s41, s2, 8
	v_cmp_gt_i32_e64 s1, 0x80, v5
	v_cmp_gt_i32_e64 s2, 0x80, v2
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_add_u32 v5, s35, 1, v3
	v_subrev_nc_u32_e32 v108, s16, v3
	v_lshrrev_b32_e32 v2, 3, v65
	v_mov_b32_e32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v3, 0x81, v7
	v_subrev_nc_u32_e32 v107, s16, v5
	s_mov_b32 s16, s12
	v_add_nc_u32_e32 v6, s34, v68
	v_and_b32_e32 v106, 2, v2
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v2, s34, v66
	s_lshl_b32 s14, s14, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v4, 16, v6
	v_sub_nc_u32_e32 v104, s15, v1
	v_mad_u64_u32 v[61:62], null, s15, v2, v[1:2]
	v_mad_u64_u32 v[1:2], null, s35, v3, s[14:15]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v4, s41, v4
	v_mul_lo_u32 v6, s41, v6
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, 0xc1, v7
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v5, 0x80, v7
	v_mov_b32_e32 v101, 0
	v_mad_u64_u32 v[2:3], null, s35, v2, s[14:15]
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v109, 1, v4
	v_add_nc_u32_e32 v4, 0xc0, v7
	v_or_b32_e32 v8, 0x41, v7
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v110, 1, v6
	v_or_b32_e32 v19, 64, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[3:4], null, s35, v4, s[14:15]
	v_mad_u64_u32 v[4:5], null, s35, v5, s[14:15]
	v_mad_u64_u32 v[5:6], null, s35, v7, s[14:15]
	v_mad_u64_u32 v[6:7], null, s35, v8, s[14:15]
	v_mad_u64_u32 v[7:8], null, s35, v19, s[14:15]
	v_subrev_nc_u32_e32 v111, s3, v1
	v_xor_b32_e32 v12, 8, v9
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v1, s35, v5
	v_xor_b32_e32 v13, 16, v9
	v_xor_b32_e32 v14, 24, v9
	v_xor_b32_e32 v15, 32, v9
	v_xor_b32_e32 v16, 40, v9
	v_xor_b32_e32 v17, 48, v9
	v_xor_b32_e32 v18, 56, v9
	v_sub_nc_u32_e32 v105, s15, v66
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshlrev_b32_e32 v11, 4, v0
	v_subrev_nc_u32_e32 v112, s3, v2
	v_subrev_nc_u32_e32 v113, s3, v3
	v_subrev_nc_u32_e32 v114, s3, v4
	v_subrev_nc_u32_e32 v115, s3, v6
	v_subrev_nc_u32_e32 v116, s3, v7
	v_subrev_nc_u32_e32 v117, s3, v1
	v_subrev_nc_u32_e32 v118, s3, v5
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v119, 0, v10
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v121, 0, v9
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v122, 0, v12
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v123, 0, v13
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v124, 0, v14
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v125, 0, v15
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v126, 0, v16
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v127, 0, v17
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v128, 0, v18
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v4, s15
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v120, 0, v11
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s42, s35, 2
	s_lshl_b32 s43, s35, 8
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s40, v104
	v_cmp_lt_i32_e64 s4, s40, v105
	v_cmp_lt_i32_e64 s5, s40, v102
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v25, s40, v61
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v67, v118
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v67, v116
	.loc	1 228 43 is_stmt 1              ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v11, v67, v117
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v12, v67, v115
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v13, 0x80000000, v25, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v14, 0x80000000, v10, s5
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v17, 0x80000000, v11, s4
	v_cndmask_b32_e64 v21, 0x80000000, v12, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v26, v13, s[28:31], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v14, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v129, v110, s[24:27], 0 offen
	buffer_load_u16 v130, v109, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s5, s40, 64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v104
	v_cmp_lt_i32_e64 s4, s5, v105
	v_cmp_lt_i32_e64 s5, s5, v102
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s41, s41, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	s_and_b32 s4, s4, s2
	s_and_b32 s5, s5, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s40, 0x80
	s_cmp_lg_u32 s41, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(6)
	ds_store_b32 v119, v26 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(5)
	ds_store_b128 v120, v[9:12]
	s_waitcnt vmcnt(4)
	ds_store_b128 v120, v[13:16] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v120, v[17:20] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v120, v[21:24] offset:24576
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v27, v67, v114
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v25, 64, v25
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v28, v67, v113
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v29, v67, v111
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v30, v67, v112
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v27, 0x80000000, v27, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v62, 0x80000000, v29, s4
	v_cndmask_b32_e64 v63, 0x80000000, v30, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v131, v25, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[41:44], v27, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v28, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v103 offset:1280
	ds_load_u8 v10, v103 offset:1024
	ds_load_u8 v11, v103 offset:1792
	ds_load_u8 v12, v103 offset:1536
	ds_load_u8 v13, v103 offset:256
	ds_load_u8 v14, v103
	ds_load_u8 v15, v103 offset:768
	ds_load_u8 v16, v103 offset:512
	ds_load_u8 v17, v103 offset:3328
	ds_load_u8 v18, v103 offset:3072
	ds_load_u8 v19, v103 offset:3840
	ds_load_u8 v20, v103 offset:3584
	ds_load_u8 v21, v103 offset:2304
	ds_load_u8 v22, v103 offset:2048
	ds_load_u8 v23, v103 offset:2816
	ds_load_u8 v24, v103 offset:2560
	ds_load_u8 v132, v103 offset:5376
	ds_load_u8 v133, v103 offset:5120
	ds_load_u8 v134, v103 offset:5888
	ds_load_u8 v135, v103 offset:5632
	ds_load_u8 v136, v103 offset:4352
	ds_load_u8 v137, v103 offset:4096
	ds_load_u8 v138, v103 offset:4864
	ds_load_u8 v139, v103 offset:4608
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v25, v103 offset:17664
	ds_load_u8 v26, v103 offset:17408
	ds_load_u8 v27, v103 offset:18176
	ds_load_u8 v28, v103 offset:17920
	ds_load_u8 v29, v103 offset:16640
	ds_load_u8 v30, v103 offset:16384
	ds_load_u8 v31, v103 offset:17152
	ds_load_u8 v32, v103 offset:16896
	ds_load_u8 v33, v103 offset:19712
	ds_load_u8 v34, v103 offset:19456
	ds_load_u8 v35, v103 offset:20224
	ds_load_u8 v36, v103 offset:19968
	ds_load_u8 v37, v103 offset:18688
	ds_load_u8 v38, v103 offset:18432
	ds_load_u8 v39, v103 offset:19200
	ds_load_u8 v40, v103 offset:18944
	ds_load_u8 v140, v103 offset:21760
	ds_load_u8 v141, v103 offset:21504
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[49:52], v121 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[53:56], v122 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v13, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v14, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v15, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v16, v24, v23, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v38, v37, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v10, v10, 16, v9
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v40, v39, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v11
	v_lshl_or_b32 v26, v14, 16, v13
	v_lshl_or_b32 v25, v16, 16, v15
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v58, v18, 16, v17
	v_lshl_or_b32 v57, v20, 16, v19
	v_lshl_or_b32 v60, v22, 16, v21
	v_lshl_or_b32 v59, v24, 16, v23
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[49:50], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[53:54], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[25:26], v[55:56], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[49:52], v62, s[36:39], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v103 offset:22272
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[55:56], v[25:32] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[53:56], v63, s[36:39], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v144, v103 offset:20736
	ds_load_u8 v145, v103 offset:20480
	ds_load_u8 v146, v103 offset:21248
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v57, v133, v132, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v132, v103 offset:20992
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v60, v139, v138, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v138, v103 offset:23296
	ds_load_u8 v143, v103 offset:22016
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v58, v135, v134, 0xc0c0004
	v_perm_b32 v59, v137, v136, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v133, v141, v140, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v136, v103 offset:7424
	ds_load_u8 v137, v103 offset:7168
	v_lshl_or_b32 v63, v58, 16, v57
	v_lshl_or_b32 v62, v60, 16, v59
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v123 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v139, v103 offset:23040
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v132, v146, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v132, v132, 16, v135
	v_lshl_or_b32 v133, v134, 16, v133
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v134, v103 offset:7936
	ds_load_u8 v135, v103 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v62, v103 offset:6400
	ds_load_u8 v63, v103 offset:6144
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:6912
	ds_load_u8 v58, v103 offset:6656
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:23808
	ds_load_u8 v60, v103 offset:23552
	ds_load_u8 v132, v103 offset:24320
	ds_load_u8 v133, v103 offset:24064
	ds_load_u8 v137, v103 offset:22784
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v135, v103 offset:22528
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v60, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v63, v134, 16, v136
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v62, v57, 16, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v124 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v133, v132, 16, v140
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v134, v135, v137, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v135, v103 offset:9472
	ds_load_u8 v137, v103 offset:9216
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v136, v139, v138, 0xc0c0004
	ds_load_u8 v138, v103 offset:25344
	ds_load_u8 v139, v103 offset:25088
	v_lshl_or_b32 v132, v136, 16, v134
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v134, v103 offset:9984
	ds_load_u8 v136, v103 offset:9728
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v62, v103 offset:8448
	ds_load_u8 v63, v103 offset:8192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:8960
	ds_load_u8 v58, v103 offset:8704
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:25856
	ds_load_u8 v60, v103 offset:25600
	ds_load_u8 v132, v103 offset:26368
	ds_load_u8 v133, v103 offset:26112
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v137, v135, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v137, v103 offset:24832
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v134, v136, v134, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v136, v103 offset:24576
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v60, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v63, v134, 16, v135
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v135, v103 offset:11520
	v_lshl_or_b32 v62, v57, 16, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v125 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v133, v132, 16, v140
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v136, v137, 0xc0c0004
	v_perm_b32 v136, v139, v138, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v137, v103 offset:11264
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v138, v103 offset:27392
	ds_load_u8 v139, v103 offset:27136
	v_lshl_or_b32 v132, v136, 16, v134
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v134, v103 offset:12032
	ds_load_u8 v136, v103 offset:11776
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v62, v103 offset:10496
	ds_load_u8 v63, v103 offset:10240
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:11008
	ds_load_u8 v58, v103 offset:10752
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:27904
	ds_load_u8 v60, v103 offset:27648
	ds_load_u8 v132, v103 offset:28416
	ds_load_u8 v133, v103 offset:28160
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v137, v135, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v137, v103 offset:26880
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v134, v136, v134, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v136, v103 offset:26624
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v60, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v63, v134, 16, v135
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v135, v103 offset:13568
	v_lshl_or_b32 v62, v57, 16, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v126 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v133, v132, 16, v140
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v136, v137, 0xc0c0004
	v_perm_b32 v136, v139, v138, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v137, v103 offset:13312
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v138, v103 offset:29440
	ds_load_u8 v139, v103 offset:29184
	v_lshl_or_b32 v132, v136, 16, v134
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v134, v103 offset:14080
	ds_load_u8 v136, v103 offset:13824
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v62, v103 offset:12544
	ds_load_u8 v63, v103 offset:12288
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:13056
	ds_load_u8 v58, v103 offset:12800
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:29952
	ds_load_u8 v60, v103 offset:29696
	ds_load_u8 v132, v103 offset:30464
	ds_load_u8 v133, v103 offset:30208
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v137, v135, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v137, v103 offset:28928
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v134, v136, v134, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v136, v103 offset:28672
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v60, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v63, v134, 16, v135
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v135, v103 offset:15616
	v_lshl_or_b32 v62, v57, 16, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v127 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v133, v132, 16, v140
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v136, v137, 0xc0c0004
	v_perm_b32 v136, v139, v138, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v137, v103 offset:15360
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v132, v136, 16, v134
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v134, v103 offset:16128
	ds_load_u8 v138, v103 offset:15872
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v62, v103 offset:14592
	ds_load_u8 v63, v103 offset:14336
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:15104
	ds_load_u8 v58, v103 offset:14848
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v139, v103 offset:32000
	ds_load_u8 v140, v103 offset:31744
	ds_load_u8 v141, v103 offset:32512
	ds_load_u8 v142, v103 offset:32256
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v136, v103 offset:30976
	ds_load_u8 v132, v103 offset:31488
	ds_load_u8 v133, v103 offset:31232
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v59, v137, v135, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v137, v103 offset:30720
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v138, v134, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v140, v139, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v63, v60, 16, v59
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v62, v57, 16, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[57:60], v128 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_lshl_or_b32 v133, v135, 16, v134
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v120, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v120, v[45:48] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v120, v[49:52] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v120, v[53:56] offset:24576
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v137, v137, v136, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b32 v119, v131 offset:32768
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[62:63], v[59:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v132, v132, 16, v137
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v138, v103 offset:3328
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v49, v103 offset:1280
	ds_load_u8 v50, v103 offset:1024
	ds_load_u8 v53, v103 offset:1792
	ds_load_u8 v54, v103 offset:1536
	ds_load_u8 v55, v103 offset:256
	ds_load_u8 v56, v103
	ds_load_u8 v57, v103 offset:768
	ds_load_u8 v58, v103 offset:512
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v121 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[45:48], v122 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:17664
	ds_load_u8 v60, v103 offset:17408
	ds_load_u8 v62, v103 offset:18176
	ds_load_u8 v63, v103 offset:17920
	ds_load_u8 v132, v103 offset:16640
	ds_load_u8 v133, v103 offset:16384
	ds_load_u8 v134, v103 offset:17152
	ds_load_u8 v135, v103 offset:16896
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v137, v50, v49, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[49:52], v123 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_lshl_or_b32 v54, v53, 16, v137
	ds_load_u8 v57, v103 offset:3840
	ds_load_u8 v58, v103 offset:3584
	ds_load_u8 v137, v103 offset:2304
	v_lshl_or_b32 v53, v56, 16, v55
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v133, v132, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v59, v103 offset:2048
	ds_load_u8 v60, v103 offset:2816
	ds_load_u8 v63, v103 offset:2560
	ds_load_u8 v133, v103 offset:5376
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v135, v134, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[43:44], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[41:42], v[17:24] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v53, v103 offset:19712
	ds_load_u8 v54, v103 offset:19456
	v_lshl_or_b32 v55, v132, 16, v62
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v62, v103 offset:5120
	ds_load_u8 v132, v103 offset:5888
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[43:44], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v43, v103 offset:20224
	ds_load_u8 v44, v103 offset:19968
	ds_load_u8 v55, v103 offset:18688
	ds_load_u8 v56, v103 offset:18432
	ds_load_u8 v134, v103 offset:19200
	ds_load_u8 v135, v103 offset:18944
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v60, v63, v60, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v54, v103 offset:7168
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v56, v103 offset:7680
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v135, v103 offset:6400
	ds_load_u8 v139, v103 offset:3072
	v_perm_b32 v42, v58, v57, 0xc0c0004
	v_perm_b32 v58, v59, v137, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v44, v43, 16, v53
	v_lshl_or_b32 v43, v134, 16, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:4352
	ds_load_u8 v137, v103 offset:7936
	ds_load_u8 v53, v103 offset:6144
	ds_load_u8 v55, v103 offset:6912
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[47:48], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v139, v138, 0xc0c0004
	ds_load_u8 v138, v103 offset:5632
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v134, v103 offset:21760
	ds_load_u8 v139, v103 offset:21504
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v41, v60, 16, v58
	ds_load_u8 v58, v103 offset:4608
	ds_load_u8 v60, v103 offset:7424
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v43, v103 offset:22272
	ds_load_u8 v44, v103 offset:22016
	ds_load_u8 v45, v103 offset:20736
	ds_load_u8 v46, v103 offset:20480
	ds_load_u8 v47, v103 offset:21248
	ds_load_u8 v48, v103 offset:20992
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v41, v62, v133, 0xc0c0004
	ds_load_u8 v62, v103 offset:6656
	ds_load_u8 v63, v103 offset:4864
	ds_load_u8 v59, v103 offset:4096
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v42, v138, v132, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v133, v139, v134, 0xc0c0004
	ds_load_u8 v132, v103 offset:23808
	ds_load_u8 v134, v103 offset:22528
	ds_load_u8 v138, v103 offset:23296
	ds_load_u8 v139, v103 offset:23040
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v42, v42, 16, v41
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v133
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v58, v58, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v43, v46, 16, v45
	ds_load_u8 v59, v103 offset:23552
	ds_load_u8 v63, v103 offset:24320
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v41, v58, 16, v57
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v57, v103 offset:24064
	ds_load_u8 v58, v103 offset:22784
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[51:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v43, v53, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[51:52], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v41, v54, v60, 0xc0c0004
	v_perm_b32 v42, v56, v137, 0xc0c0004
	v_perm_b32 v44, v62, v55, 0xc0c0004
	ds_load_u8 v55, v103 offset:9472
	ds_load_u8 v62, v103 offset:9984
	v_lshl_or_b32 v46, v42, 16, v41
	v_lshl_or_b32 v45, v44, 16, v43
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v124 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v47, v59, v132, 0xc0c0004
	v_perm_b32 v59, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v57, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v57, v134, v58, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v58, v103 offset:9216
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v48, v48, 16, v47
	v_lshl_or_b32 v47, v59, 16, v57
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:9728
	ds_load_u8 v59, v103 offset:8448
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v103 offset:8192
	ds_load_u8 v46, v103 offset:8960
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v103 offset:8704
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v42, v103 offset:25856
	ds_load_u8 v43, v103 offset:25600
	ds_load_u8 v47, v103 offset:26368
	ds_load_u8 v48, v103 offset:26112
	ds_load_u8 v63, v103 offset:24832
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v58, v55, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v55, v103 offset:24576
	ds_load_u8 v58, v103 offset:25344
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v57, v57, v62, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v45, v59, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:25088
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v41, v46, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v43, v42, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v46, v57, 16, v44
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v57, v103 offset:11520
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v125 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v48, v47, 16, v62
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v59, v103 offset:12032
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v55, v55, v63, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v63, v103 offset:11264
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v47, v58, 16, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v55, v103 offset:11776
	ds_load_u8 v58, v103 offset:10496
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v103 offset:10240
	ds_load_u8 v46, v103 offset:11008
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v103 offset:10752
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v42, v103 offset:27904
	ds_load_u8 v43, v103 offset:27648
	ds_load_u8 v47, v103 offset:28416
	ds_load_u8 v48, v103 offset:28160
	ds_load_u8 v62, v103 offset:26880
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v63, v57, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v57, v103 offset:26624
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v55, v59, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:27392
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v45, v58, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v58, v103 offset:27136
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v41, v46, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v43, v42, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v46, v55, 16, v44
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v55, v103 offset:13568
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v126 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v48, v47, 16, v63
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v59, v103 offset:14080
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v57, v57, v62, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v62, v103 offset:13312
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v47, v58, 16, v57
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v57, v103 offset:13824
	ds_load_u8 v58, v103 offset:12544
	ds_load_u8 v45, v103 offset:12288
	ds_load_u8 v46, v103 offset:13056
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v103 offset:12800
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v42, v103 offset:29952
	ds_load_u8 v43, v103 offset:29696
	ds_load_u8 v47, v103 offset:30464
	ds_load_u8 v48, v103 offset:30208
	ds_load_u8 v63, v103 offset:28928
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v62, v55, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v55, v103 offset:28672
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v57, v59, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:29440
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v62, v43, v42, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v45, v45, v58, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v41, v41, v46, 0xc0c0004
	v_lshl_or_b32 v46, v57, 16, v44
	ds_load_u8 v57, v103 offset:15616
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v48, v47, 16, v62
	ds_load_u8 v62, v103 offset:30720
	ds_load_u8 v58, v103 offset:29184
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v127 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v59, v103 offset:16128
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v55, v55, v63, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v63, v103 offset:15360
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v103 offset:14336
	ds_load_u8 v46, v103 offset:15104
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v47, v58, 16, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v55, v103 offset:15872
	ds_load_u8 v58, v103 offset:14592
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v103 offset:14848
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v42, v103 offset:32000
	ds_load_u8 v43, v103 offset:31744
	ds_load_u8 v44, v103 offset:32512
	ds_load_u8 v47, v103 offset:32256
	ds_load_u8 v48, v103 offset:30976
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v63, v57, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v55, v55, v59, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v45, v58, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v63, v41, v46, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v59, v103 offset:31488
	ds_load_u8 v58, v103 offset:31232
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v132, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v47, v44, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v128 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v46, v55, 16, v57
	v_lshl_or_b32 v45, v63, 16, v45
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v62, v48, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v132
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[41:42], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v47, v58, 16, v62
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v33, v130, v33
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v131, v106, v108
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v136, v106, v107
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v18, v129, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v140, v131, s[8:11], 0 offen
	buffer_load_u16 v133, v131, s[8:11], 0 offen offset:4
	buffer_load_u16 v141, v131, s[8:11], 0 offen offset:8
	buffer_load_u16 v142, v131, s[8:11], 0 offen offset:12
	buffer_load_u16 v143, v131, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v129, v17
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0xa
	buffer_load_u16 v54, v136, s[8:11], 0 offen offset:24
	buffer_load_u16 v56, v136, s[8:11], 0 offen offset:16
	buffer_load_u16 v49, v131, s[8:11], 0 offen offset:24
	buffer_load_u16 v50, v131, s[8:11], 0 offen offset:20
	buffer_load_u16 v51, v131, s[8:11], 0 offen offset:16
	buffer_load_u16 v52, v136, s[8:11], 0 offen
	buffer_load_u16 v131, v136, s[8:11], 0 offen offset:12
	buffer_load_u16 v144, v136, s[8:11], 0 offen offset:20
	buffer_load_u16 v145, v136, s[8:11], 0 offen offset:28
	buffer_load_u16 v53, v136, s[8:11], 0 offen offset:8
	buffer_load_u16 v60, v136, s[8:11], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v48, 16, v140
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v42, 16, v49
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v44, 16, v51
	v_lshlrev_b32_e32 v41, 16, v143
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v33, v48 :: v_dual_lshlrev_b32 v43, 16, v50
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v129, v9
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v37, v130, v37
	v_mul_f32_e32 v21, v129, v21
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v28, v130, v28 :: v_dual_add_nc_u32 v107, s42, v107
	v_dual_mul_f32 v31, v130, v31 :: v_dual_add_nc_u32 v108, s42, v108
	v_dual_mul_f32 v26, v130, v26 :: v_dual_add_nc_u32 v109, 2, v109
	v_dual_mul_f32 v29, v130, v29 :: v_dual_add_nc_u32 v110, 2, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v20, v129, v20 :: v_dual_add_nc_u32 v111, s43, v111
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v27, v130, v27 :: v_dual_add_nc_u32 v112, s43, v112
	v_dual_mul_f32 v12, v129, v12 :: v_dual_add_nc_u32 v113, s43, v113
	v_dual_mul_f32 v25, v130, v25 :: v_dual_add_nc_u32 v114, s43, v114
	v_dual_mul_f32 v10, v129, v10 :: v_dual_add_nc_u32 v115, s43, v115
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v19, v129, v19 :: v_dual_add_nc_u32 v116, s43, v116
	v_dual_mul_f32 v24, v129, v24 :: v_dual_add_nc_u32 v117, s43, v117
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v11, v129, v11 :: v_dual_add_nc_u32 v118, s43, v118
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v130, v40
	v_mul_f32_e32 v39, v130, v39
	v_mul_f32_e32 v38, v130, v38
	v_mul_f32_e32 v36, v130, v36
	v_mul_f32_e32 v35, v130, v35
	v_mul_f32_e32 v34, v130, v34
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v32, v130, v32
	v_dual_mul_f32 v30, v130, v30 :: v_dual_mul_f32 v23, v129, v23
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v22, v129, v22
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v16, v129, v16
	v_dual_mul_f32 v15, v129, v15 :: v_dual_lshlrev_b32 v46, 16, v141
	v_dual_mul_f32 v14, v129, v14 :: v_dual_lshlrev_b32 v47, 16, v133
	v_dual_mul_f32 v13, v129, v13 :: v_dual_lshlrev_b32 v50, 16, v54
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v37, v44 :: v_dual_lshlrev_b32 v45, 16, v142
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v72, v35, v46 :: v_dual_lshlrev_b32 v49, 16, v145
	v_dual_fmac_f32 v76, v39, v42 :: v_dual_lshlrev_b32 v51, 16, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v69, v36, v45 :: v_dual_lshlrev_b32 v54, 16, v56
	v_dual_fmac_f32 v96, v20, v45 :: v_dual_lshlrev_b32 v55, 16, v131
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v94, v18, v47 :: v_dual_lshlrev_b32 v53, 16, v53
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v75, v38, v43 :: v_dual_lshlrev_b32 v56, 16, v60
	v_dual_fmac_f32 v73, v40, v41 :: v_dual_lshlrev_b32 v52, 16, v52
	v_fmac_f32_e32 v71, v34, v47
	v_dual_fmac_f32 v93, v17, v48 :: v_dual_fmac_f32 v86, v22, v43
	v_dual_fmac_f32 v95, v19, v46 :: v_dual_fmac_f32 v88, v24, v41
	v_dual_fmac_f32 v85, v21, v44 :: v_dual_fmac_f32 v92, v15, v50
	v_dual_fmac_f32 v87, v23, v42 :: v_dual_fmac_f32 v100, v10, v56
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v101, v9, v52 :: v_dual_fmac_f32 v82, v27, v53
	v_dual_fmac_f32 v99, v11, v53 :: v_dual_fmac_f32 v90, v13, v54
	v_dual_fmac_f32 v97, v12, v55 :: v_dual_fmac_f32 v84, v25, v52
	v_dual_fmac_f32 v89, v14, v51 :: v_dual_fmac_f32 v78, v29, v54
	v_dual_fmac_f32 v91, v16, v49 :: v_dual_fmac_f32 v80, v31, v50
	v_fmac_f32_e32 v83, v26, v56
	v_fmac_f32_e32 v77, v28, v55
	v_fmac_f32_e32 v79, v30, v51
	v_fmac_f32_e32 v81, v32, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v98
.LBB0_7:                                ; %Flow339
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v3, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v100
	v_dual_mul_f32 v13, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v77
	v_dual_mul_f32 v15, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	v_dual_mul_f32 v3, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v89
	v_mul_f32_e32 v10, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v16, 0xbfb8aa3b, v79 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v3, 0xbfb8aa3b, v97
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, 0x600, v1, v67
.Ltmp22:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v84
	v_ldexp_f32 v4, v5, v4
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v99
	v_ldexp_f32 v6, v7, v6
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v11, 0xbfb8aa3b, v92
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v97
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v7, null, v4, v4, v101
	v_div_scale_f32 v27, vcc_lo, v101, v4, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v5, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v18, v7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v3, v3, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v8, null, v6, v6, v100
	v_and_b32_e32 v2, 0x1f0, v0
	v_div_scale_f32 v28, s0, v100, v6, v100
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v19, v8
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v5, v5, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v25, -v7, v18, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v83
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v21, null, v3, v3, v99
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v18, v25, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v9, v21
	v_fma_f32 v26, -v8, v19, 1.0
	v_div_scale_f32 v30, s2, v99, v3, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v19, v26, v19 :: v_dual_mul_f32 v26, v27, v18
	v_fma_f32 v25, -v21, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v29, v28, v19
	v_fmac_f32_e32 v9, v25, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v7, v26, v27
	v_fma_f32 v31, -v8, v29, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_fmac_f32 v26, v25, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v29, v31, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v32, null, v5, v5, v97
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v7, -v7, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v8, v29, v28
	v_rcp_f32_e32 v31, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v90
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v18, v26
	s_mov_b32 vcc_lo, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v8, v8, v19, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v7, v4, v101
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v8, v6, v100
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v8, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v32, v31, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v92
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, s0, v97, v5, v97
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v31, v6, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v8, v8, v13
	v_exp_f32_e32 v13, v19
	v_exp_f32_e32 v6, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v19, 1.0, v8 :: v_dual_mul_f32 v8, v25, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v33, v30, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v91
	v_ldexp_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v34, -v21, v33, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v6, v6, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v11, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v12, null, v19, v19, v90
	v_dual_fmac_f32 v33, v34, v9 :: v_dual_add_f32 v18, 1.0, v6
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v12
	v_fma_f32 v21, -v21, v33, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v6, v11, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v18, v18, v89
	v_div_fmas_f32 v9, v21, v9, v33
	v_fma_f32 v21, -v32, v8, v25
	v_div_scale_f32 v11, null, v13, v13, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v3, v9, v3, v99
	v_dual_fmac_f32 v8, v21, v31 :: v_dual_add_f32 v21, 1.0, v6
	v_fma_f32 v6, -v12, v26, 1.0
	v_rcp_f32_e32 v27, v11
	v_div_scale_f32 v33, s1, v92, v13, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v9, -v32, v8, v25
	v_rcp_f32_e32 v25, v10
	v_fmac_f32_e32 v26, v6, v26
	v_div_scale_f32 v28, null, v21, v21, v91
	v_div_scale_f32 v32, s0, v89, v18, v89
	v_div_scale_f32 v36, s2, v91, v21, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v6, -v10, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v6, v25
	v_mul_f32_e32 v34, v32, v25
	v_div_fmas_f32 v8, v9, v31, v8
	v_div_scale_f32 v29, vcc_lo, v90, v19, v90
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v94, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v8, v5, v97
	v_fma_f32 v8, -v11, v27, 1.0
	v_dual_mul_f32 v31, v29, v26 :: v_dual_mul_f32 v6, v96, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v8, v27
	v_fma_f32 v8, -v28, v30, 1.0
	v_fma_f32 v5, -v12, v31, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v35, v33, v27 :: v_dual_fmac_f32 v30, v8, v30
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v8, v95, v3 :: v_dual_fmac_f32 v31, v5, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v3, -v10, v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v11, v35, v33
	v_mul_f32_e32 v37, v36, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v12, v31, v29
	v_dual_fmac_f32 v34, v3, v25 :: v_dual_fmac_f32 v35, v5, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v28, v37, v36
	v_div_fmas_f32 v5, v7, v26, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v10, v34, v32
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v3, v30
	v_fma_f32 v3, -v11, v35, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v25, v34
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v10, -v28, v37, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v3, v3, v27, v35
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v7, v18, v89
	v_div_fmas_f32 v11, v10, v30, v37
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v93, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v3, v13, v92
	v_div_fixup_f32 v3, v11, v21, v91
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v82
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v5, v19, v90
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_ldexp_f32 v11, v12, v11
	v_exp_f32_e32 v18, v20
	v_ldexp_f32 v12, v19, v13
	v_exp_f32_e32 v20, v24
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v79
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v17, v18, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_ldexp_f32 v18, v20, v23
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v24, v24
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v22, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v15, null, v12, v12, v83
	v_div_scale_f32 v20, null, v11, v11, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v16, v19, v16
	v_ldexp_f32 v19, v24, v23
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v14, v20
	v_rcp_f32_e32 v25, v15
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v80
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, vcc_lo, v84, v11, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v33, null, v19, v19, v81
	v_fma_f32 v26, -v20, v14, 1.0
	v_div_scale_f32 v27, null, v13, v13, v82
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v33
	v_fma_f32 v28, -v15, v25, 1.0
	v_fmac_f32_e32 v14, v26, v14
	v_rcp_f32_e32 v26, v27
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v4, v87, v4 :: v_dual_fmac_f32 v25, v28, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, s0, v83, v12, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v21, v22, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v22, v29, v14
	v_fma_f32 v39, -v33, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v27, v26, 1.0
	v_fma_f32 v30, -v20, v22, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, s4, v81, v19, v81
	v_mul_f32_e32 v23, v28, v25
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v3, v88, v3 :: v_dual_fmac_f32 v22, v30, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v26, v24, v26
	v_div_scale_f32 v24, s1, v82, v13, v82
	v_mul_f32_e32 v42, v39, v35
	v_fma_f32 v31, -v15, v23, v28
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v86, v7 :: v_dual_mul_f32 v30, v24, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v20, -v20, v22, v29
	v_fmac_f32_e32 v23, v31, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v31, null, v17, v17, v77
	v_div_fmas_f32 v14, v20, v14, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v15, v23, v28
	v_fma_f32 v28, -v27, v30, v24
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v20, null, v18, v18, v78
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v30, v28, v26
	v_div_fmas_f32 v15, v15, v25, v23
	v_rcp_f32_e32 v25, v20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v23, -v27, v30, v24
	v_fma_f32 v22, -v31, v29, 1.0
	v_div_scale_f32 v24, null, v16, v16, v79
	v_div_fixup_f32 v15, v15, v12, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v26, v30
	v_fmac_f32_e32 v29, v22, v29
	v_div_scale_f32 v22, s0, v77, v17, v77
	v_rcp_f32_e32 v27, v24
	v_fma_f32 v26, -v20, v25, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v32, v22, v29
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, s1, v78, v18, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v31, v32, v22
	v_fma_f32 v34, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v26, v25
	v_fmac_f32_e32 v32, v36, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v20, v38, v26
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s2, v79, v16, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v31, v32, v22
	v_fmac_f32_e32 v38, v36, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v34, v27
	v_div_fmas_f32 v22, v22, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v38, v26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v31, -v24, v40, v34
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v26, -v33, v42, v39
	v_div_fmas_f32 v20, v20, v25, v38
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v31, v27
	v_div_scale_f32 v28, null, v21, v21, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v24, v40, v34
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v27, v40
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v27, v85, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v14, v11, v84
	v_div_fixup_f32 v14, v20, v18, v78
	v_fma_f32 v37, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v70, v5
	v_mul_f32_e32 v14, v74, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v42, v26, v35
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, |v10|, |v9|, |v8|
.Ltmp24:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, s3, v80, v21, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v33, v42, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v23, v13, v82
	v_mul_f32_e32 v41, v37, v30
	v_div_fixup_f32 v13, v24, v16, v79
	v_div_fixup_f32 v16, v22, v17, v77
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v17, |v4|, |v3|
.Ltmp26:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v72, v23
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v36, -v28, v41, v37
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v75, v13 :: v_dual_lshlrev_b32 v24, 7, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v41, v36, v30
	v_fma_f32 v25, -v28, v41, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v30, v41
	s_mov_b32 vcc_lo, s4
	s_mov_b32 s4, 0x76543210
	v_div_fmas_f32 v26, v26, v35, v42
	v_div_fixup_f32 v12, v25, v21, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v26, v19, v81
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v71, v15
	v_mul_f32_e32 v15, v69, v16
.Ltmp27:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v16, |v6|, |v27|, |v7|
.Ltmp28:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v76, v12
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v21, |v20|, |v19|, |v18|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v22, |v15|, |v14|, |v13|
	v_max3_f32 v16, v5, v16, v17
.Ltmp30:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v73, v11
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v5, 3, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v23, |v12|, |v11|
	v_max3_f32 v17, v21, v22, v23
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v21, v16, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v23, 2, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v22, v17, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v25, v5, v23
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v16, v16, v21
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v21, v64, 2, v5
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v22
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v22, 0, v24, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v21, v21, v23, 0
	ds_store_b64 v22, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[16:17], v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v22, v17
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v22, v22 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v22
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v17, v17, v22
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v16, v16, v21 :: v_dual_max_f32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v21, v16 :: v_dual_mov_b32 v22, v17
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v21 :: v_dual_max_f32 v17, v17, v22
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v21, v16 :: v_dual_add_nc_u32 v22, 0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v16, v21
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v21 :: v_dual_add_nc_u32 v21, 0, v23
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v21, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[16:17], v22
.Ltmp56:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v16, 0x2b8cbccc, v16 :: v_dual_max_f32 v17, 0x2b8cbccc, v17
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v16, 0x40e00000, v16
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v24, v23
	v_rcp_f32_e32 v23, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v21, v21, v22, v24
	v_div_fixup_f32 v16, v21, 0x40e00000, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v25, v23, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v22, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v23, v21, v23
	v_div_scale_f32 v21, vcc_lo, v17, 0x40e00000, v17
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v16, v16, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v22, v21, v23
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v24, 0xffff0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v25, v22, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v28, null, v24, v24, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v22, v26, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v29, null, v24, v24, v8
	v_rcp_f32_e32 v26, v28
	v_div_scale_f32 v35, null, v24, v24, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v25, v22, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v25, null, v24, v24, v9
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v39, null, v24, v24, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v23, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v28, v26, 1.0
	v_rcp_f32_e32 v23, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v17, v21, 0x40e00000, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v26, v22, v26
	v_rcp_f32_e32 v21, v29
	v_div_scale_f32 v22, vcc_lo, v10, v24, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v31, v17, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v25, v23, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v22, v26
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v31, v17, v31, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v33, -v29, v21, 1.0
	v_fma_f32 v34, -v28, v32, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, v33, v21 :: v_dual_fmac_f32 v32, v34, v26
	v_div_scale_f32 v33, s1, v8, v24, v8
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, s0, v9, v24, v9
	v_mul_f32_e32 v34, v33, v21
	v_fma_f32 v22, -v28, v32, v22
	v_fma_f32 v28, -v35, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v30, v23
	v_div_fmas_f32 v22, v22, v26, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v28, v37
	v_fma_f32 v17, -v25, v36, v30
	v_div_scale_f32 v26, s2, v6, v24, v6
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v10, v22, v24, v10
	v_fmac_f32_e32 v36, v17, v23
	v_fma_f32 v17, -v29, v34, v33
	v_mul_f32_e32 v28, v26, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v25, v36, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v17, v21
	v_rcp_f32_e32 v17, v39
	v_fma_f32 v32, -v35, v28, v26
	v_div_fmas_f32 v23, v25, v23, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v29, v34, v33
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v28, v32, v37
	v_div_scale_f32 v29, null, v24, v24, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v21, v25, v21, v34
	v_fma_f32 v30, -v39, v17, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v23, v24, v9
	v_fma_f32 v23, -v35, v28, v26
	v_div_fixup_f32 v8, v21, v24, v8
	v_fmac_f32_e32 v17, v30, v17
	v_div_scale_f32 v30, s0, v27, v24, v27
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v25, v29
	v_div_fmas_f32 v23, v23, v37, v28
	v_mul_f32_e32 v21, v30, v17
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v26, null, v24, v24, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v6, v23, v24, v6
	v_fma_f32 v32, -v39, v21, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v33, v26
	v_fma_f32 v22, -v29, v25, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v21, v32, v17
	v_div_scale_f32 v32, null, v24, v24, v3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v23, -v39, v21, v30
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v26, v33, 1.0
	v_div_fmas_f32 v17, v23, v17, v21
	v_div_scale_f32 v21, null, v38, v38, v20
	v_div_scale_f32 v23, s0, v4, v24, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v17, v17, v24, v27
	v_fma_f32 v27, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v35, v27, v35
	v_div_scale_f32 v27, s2, v3, v24, v3
	v_fmac_f32_e32 v25, v22, v25
	v_div_scale_f32 v22, s1, v7, v24, v7
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, s1, v20, v38, v20
	v_mul_f32_e32 v28, v22, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v29, v28, v22
	v_fmac_f32_e32 v28, v30, v25
	v_rcp_f32_e32 v30, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v29, v28, v22
	v_div_fmas_f32 v22, v22, v25, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v21, v30, 1.0
	v_dual_fmac_f32 v33, v34, v33 :: v_dual_mul_f32 v28, v27, v35
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v7, v22, v24, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v30, v36, v30 :: v_dual_mul_f32 v29, v23, v33
	v_div_scale_f32 v34, null, v38, v38, v19
	v_div_scale_f32 v36, null, v38, v38, v18
	v_fma_f32 v25, -v26, v29, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v39, v30
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v29, v25, v33
	v_fma_f32 v25, -v32, v28, v27
	v_fma_f32 v22, -v26, v29, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v28, v25, v35
	v_fma_f32 v23, -v21, v42, v39
	v_fma_f32 v40, -v34, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v36, v41, 1.0
	v_fma_f32 v27, -v32, v28, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v23, v30
	v_div_fmas_f32 v22, v22, v33, v29
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v33, null, v38, v38, v11
	v_div_fmas_f32 v27, v27, v35, v28
	v_div_scale_f32 v28, null, v38, v38, v15
	v_div_fixup_f32 v4, v22, v24, v4
	v_fma_f32 v21, -v21, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v27, v24, v3
	v_rcp_f32_e32 v32, v28
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v22, null, v38, v38, v14
	v_div_fmas_f32 v21, v21, v30, v42
	v_rcp_f32_e32 v35, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v20, v21, v38, v20
	v_fma_f32 v24, -v28, v32, 1.0
	v_fmac_f32_e32 v41, v26, v41
	v_div_scale_f32 v26, s0, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v32, v24, v32
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s3, v19, v38, v19
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v24, null, v38, v38, v13
	v_mul_f32_e32 v25, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v27, v24
	v_fma_f32 v23, -v34, v25, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v23, v37
	v_mul_f32_e32 v23, v26, v41
	v_fma_f32 v29, -v34, v25, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v36, v23, v26
	v_fma_f32 v34, -v24, v27, 1.0
	v_fma_f32 v40, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v29, v37, v25
	v_fmac_f32_e32 v23, v30, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, s3, v11, v38, v11
	v_fma_f32 v21, -v36, v23, v26
	v_div_fixup_f32 v19, v25, v38, v19
	v_div_scale_f32 v25, null, v38, v38, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v41, v23
	v_div_scale_f32 v26, vcc_lo, v15, v38, v15
	v_rcp_f32_e32 v23, v22
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v21, v38, v18
	v_mul_f32_e32 v30, v26, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v36, -v28, v30, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v21, -v22, v23, 1.0
	v_fma_f32 v37, -v25, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v30, v36, v32 :: v_dual_fmac_f32 v23, v21, v23
	v_div_scale_f32 v21, s0, v14, v38, v14
	v_fma_f32 v26, -v28, v30, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v21, v23
	v_div_fmas_f32 v26, v26, v32, v30
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v36, -v22, v39, v21
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v39, v36, v23
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s2, v12, v38, v12
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s1, v13, v38, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v29
	v_fma_f32 v21, -v22, v39, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v36, -v25, v42, v37
	v_mul_f32_e32 v41, v34, v27
	v_div_fmas_f32 v21, v21, v23, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v40, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v24, v41, v34
	v_div_fixup_f32 v14, v21, v38, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v6
	v_and_b32_e32 v6, 15, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v41, v28, v27 :: v_dual_and_b32 v10, 15, v17
	v_fma_f32 v22, -v33, v43, v40
	v_div_fixup_f32 v15, v26, v38, v15
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v4, v4
	v_med3_f32 v3, v3, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v23, -v24, v41, v34
	v_fmac_f32_e32 v43, v22, v35
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v23, v23, v27, v41
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v13, v23, v38, v13
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v18
	v_and_b32_e32 v18, 15, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v42, v36, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v20
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v25, v42, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v29, v42
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v12, v22, v38, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v27, 7, v65
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v7
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v8, 15, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v9, 15, v21
	v_and_b32_e32 v21, 15, v14
	v_and_b32_e32 v19, 15, v23
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s21, 0xffff
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v25, v12
	v_and_b32_e32 v12, 15, v4
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v1, v1, v4
	v_lshlrev_b32_e32 v4, 7, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v33, v43, v40
	v_div_fmas_f32 v24, v24, v35, v43
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v65
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v24, v38, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v13
	v_and_b32_e32 v13, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 11, v0
	v_and_b32_e32 v15, 0x60, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x3000, v3
	v_and_or_b32 v4, 0x3600, v4, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xad_u32 v15, v4, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v11
	v_and_b32_e32 v11, 15, v22
	v_and_b32_e32 v22, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v14, v3, v27, v1
	ds_store_b128 v14, v[6:9]
	ds_store_b128 v14, v[17:20] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v15
	ds_load_b128 v[6:9], v15 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v24, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[10:13]
	ds_store_b128 v14, v[21:24] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v15
	ds_load_b128 v[17:20], v15 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v14.h, 0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v14.l, v16.h
	v_mov_b16_e32 v15.l, v31.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v15.h, v14.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v6, 4, v1
	v_lshl_or_b32 v2, v7, 4, v2
	v_lshl_or_b32 v7, v8, 4, v3
	v_lshl_or_b32 v8, v9, 4, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v3, s34, v66
	v_lshl_or_b32 v1, s33, 7, v5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v20, 4, v13
	v_lshl_or_b32 v9, v17, 4, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v3, s0, v[1:2]
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v7, v14, v15, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v18, 4, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v2.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v19, 4, v12
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v7, 0, 16
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v11.l
	v_lshlrev_b16 v2.l, 8, v10.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v9.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	s_mov_b32 s0, s20
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v14, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp57:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 147
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13424
; TotalNumSgprs: 46
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
