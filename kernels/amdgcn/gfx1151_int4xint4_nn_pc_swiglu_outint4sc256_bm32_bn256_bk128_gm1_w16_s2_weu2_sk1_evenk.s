	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v92, 15, v0
	v_lshrrev_b32_e32 v89, 4, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v91, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v90, 0x1e0, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b32_e32 v21, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v88, 4, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v93, 1, v90
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v54, 0, v21
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s7, 31
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
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s8, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s5
	s_mul_hi_u32 s9, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s10, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s10
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s8, s10, s8
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s11, s4, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s8
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s12, s11
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s14, 0, s12
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v1, 2, v92
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s9, s4, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s13, s[0:1], 0x38
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s14, s9
	s_mul_hi_u32 s8, s9, s14
	s_abs_i32 s14, s2
	s_add_i32 s9, s9, s8
	s_xor_b32 s8, s2, s11
	s_mul_hi_u32 s15, s14, s9
	s_ashr_i32 s16, s8, 31
	s_mul_i32 s9, s15, s12
	s_add_i32 s17, s15, 1
	s_sub_i32 s14, s14, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[8:9], s[6:7]
	s_sub_i32 s18, s14, s12
	s_cmp_ge_u32 s14, s12
	s_cselect_b32 s6, s17, s15
	s_cselect_b32 s7, s18, s14
	s_add_i32 s14, s6, 1
	s_cmp_ge_u32 s7, s12
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s14, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s12, s13, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s6, s6, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s20, s25, 1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s24, s6, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s6, s13, s12
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s11, s24, s11
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s21, s6, 1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[9:10], null, s20, v89, v[88:89]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s11
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v2, s21, v89
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s10
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s10, s3, 6
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s26, s2, 5
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s27, s24, 8
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s26, s21
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s11, s20, s10
	v_lshl_add_u32 v52, s25, 6, v9
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s13, 1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v11, v2, v1, s2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s2, -1, 0
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s11, s27, s11
	s_mov_b32 s6, 0x7ffffffe
	v_add_nc_u32_e32 v2, s11, v9
	v_add_nc_u32_e32 v3, s11, v52
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s10, v11
	.loc	1 154 22 is_stmt 0              ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	s_mov_b32 s10, s6
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v4, s25, v2
	v_add_nc_u32_e32 v5, s25, v3
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v3, s2
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e64 v10, 0x80000000, v4, s2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s11, s7
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e64 v16, 0x80000000, v5, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v20, v1, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v6, s[8:11], 0 offen
	buffer_load_b128 v[12:15], v10, s[8:11], 0 offen
	buffer_load_b128 v[16:19], v16, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v10, 2, v0
	s_mov_b32 s10, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s13, 0x81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v10, 56, v10
	v_xor_b32_e32 v10, v91, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v53, 0, v10
	v_or_b32_e32 v10, v93, v92
	s_waitcnt vmcnt(4)
	ds_store_b32 v53, v20 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v54, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v54, v[5:8] offset:8192
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v54, v[12:15] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v54, v[16:19] offset:24576
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v1, 56, v91
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v132, v93, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshl_or_b32 v56, v92, 6, v1
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v36, 0x100, v132
	v_or_b32_e32 v37, 0x200, v132
	v_or_b32_e32 v38, 0x300, v132
	v_or_b32_e32 v39, 0x400, v132
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v58, 8, v56
	v_xor_b32_e32 v60, 16, v56
	v_xor_b32_e32 v62, 24, v56
	v_xor_b32_e32 v57, 32, v56
	v_xor_b32_e32 v59, 40, v56
	v_xor_b32_e32 v61, 48, v56
	v_xor_b32_e32 v63, 56, v56
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v40, 0x500, v132
	v_or_b32_e32 v41, 0x600, v132
	v_or_b32_e32 v42, 0x700, v132
	v_or_b32_e32 v43, 0x800, v132
	v_or_b32_e32 v44, 0x900, v132
	v_or_b32_e32 v45, 0xa00, v132
	v_or_b32_e32 v46, 0xb00, v132
	v_or_b32_e32 v47, 0xc00, v132
	v_or_b32_e32 v48, 0xd00, v132
	v_or_b32_e32 v49, 0xe00, v132
	v_or_b32_e32 v50, 0xf00, v132
	v_or_b32_e32 v51, 0x1000, v132
	v_or_b32_e32 v116, 0x1100, v132
	v_or_b32_e32 v117, 0x1200, v132
	v_or_b32_e32 v118, 0x1300, v132
	v_or_b32_e32 v119, 0x1400, v132
	v_or_b32_e32 v120, 0x1500, v132
	v_or_b32_e32 v122, 0x1600, v132
	v_or_b32_e32 v125, 0x1700, v132
	v_or_b32_e32 v129, 0x1800, v132
	v_or_b32_e32 v133, 0x1900, v132
	v_or_b32_e32 v134, 0x1a00, v132
	v_or_b32_e32 v135, 0x1b00, v132
	v_or_b32_e32 v136, 0x1c00, v132
	v_or_b32_e32 v137, 0x1d00, v132
	v_or_b32_e32 v138, 0x1e00, v132
	v_or_b32_e32 v139, 0x1f00, v132
	v_or_b32_e32 v128, 0x2000, v132
	v_or_b32_e32 v127, 0x2100, v132
	v_or_b32_e32 v124, 0x2200, v132
	v_or_b32_e32 v123, 0x2300, v132
	v_or_b32_e32 v131, 0x2400, v132
	v_or_b32_e32 v130, 0x2500, v132
	v_or_b32_e32 v121, 0x2600, v132
	v_or_b32_e32 v126, 0x2700, v132
	v_or_b32_e32 v113, 0x2800, v132
	v_or_b32_e32 v108, 0x2900, v132
	v_or_b32_e32 v111, 0x2a00, v132
	v_or_b32_e32 v110, 0x2b00, v132
	v_or_b32_e32 v115, 0x2c00, v132
	v_or_b32_e32 v114, 0x2d00, v132
	v_or_b32_e32 v109, 0x2e00, v132
	v_or_b32_e32 v112, 0x2f00, v132
	v_or_b32_e32 v105, 0x3000, v132
	v_or_b32_e32 v104, 0x3100, v132
	v_or_b32_e32 v102, 0x3200, v132
	v_or_b32_e32 v101, 0x3300, v132
	v_or_b32_e32 v107, 0x3400, v132
	v_or_b32_e32 v106, 0x3500, v132
	v_or_b32_e32 v100, 0x3600, v132
	v_or_b32_e32 v103, 0x3700, v132
	v_or_b32_e32 v99, 0x3800, v132
	v_or_b32_e32 v98, 0x3900, v132
	v_or_b32_e32 v95, 0x3a00, v132
	v_or_b32_e32 v94, 0x3b00, v132
	v_or_b32_e32 v97, 0x3c00, v132
	v_or_b32_e32 v96, 0x3d00, v132
	v_or_b32_e32 v140, 0x3e00, v132
	v_or_b32_e32 v141, 0x3f00, v132
	s_load_b256 s[12:19], s[0:1], 0x10
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_mov_b32 s0, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v11, v4
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v4
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v10, v4
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v52, v4 :: v_dual_mov_b32 v35, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v4 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v22, v6
	v_dual_mov_b32 v15, v4 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v14, v4 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v13, v4 :: v_dual_mov_b32 v30, v6
	v_dual_mov_b32 v12, v4 :: v_dual_mov_b32 v23, v7
	v_mov_b32_e32 v55, v4
	v_dual_mov_b32 v54, v4 :: v_dual_mov_b32 v21, v5
	v_mov_b32_e32 v53, v4
	v_mov_b32_e32 v19, v4
	v_dual_mov_b32 v18, v4 :: v_dual_mov_b32 v33, v9
	v_mov_b32_e32 v17, v4
	v_dual_mov_b32 v16, v4 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v29, v5
	v_mov_b32_e32 v20, v4
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v28, v4
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
	s_load_b256 s[12:19], s[0:1], 0x10
	s_mov_b32 s0, 0
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v12, 0 :: v_dual_lshlrev_b32 v91, 2, v0
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s21, s21, 63
	v_add_nc_u32_e32 v55, 0, v10
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s1, s21, 6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, v12 :: v_dual_and_b32 v1, 56, v91
	v_sub_nc_u32_e64 v64, s1, 2 clamp
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v19, v12
	v_lshl_or_b32 v56, v92, 6, v1
	v_mov_b32_e32 v21, v12
	v_mov_b32_e32 v23, v12
	v_mov_b32_e32 v24, v12
	v_mov_b32_e32 v25, v12
	v_xor_b32_e32 v58, 8, v56
	v_xor_b32_e32 v60, 16, v56
	v_xor_b32_e32 v62, 24, v56
	v_xor_b32_e32 v57, 32, v56
	v_xor_b32_e32 v59, 40, v56
	v_xor_b32_e32 v61, 48, v56
	v_xor_b32_e32 v63, 56, v56
	v_dual_mov_b32 v18, v12 :: v_dual_add_nc_u32 v65, 0, v56
	v_dual_mov_b32 v13, v12 :: v_dual_add_nc_u32 v66, 0, v58
	v_dual_mov_b32 v20, v12 :: v_dual_add_nc_u32 v67, 0, v60
	v_dual_mov_b32 v15, v12 :: v_dual_add_nc_u32 v68, 0, v62
	v_dual_mov_b32 v22, v12 :: v_dual_add_nc_u32 v69, 0, v57
	v_dual_mov_b32 v17, v12 :: v_dual_add_nc_u32 v70, 0, v59
	v_mov_b32_e32 v26, v12
	v_mov_b32_e32 v27, v12
	v_mov_b32_e32 v1, v12
	v_mov_b32_e32 v2, v12
	v_mov_b32_e32 v3, v12
	v_mov_b32_e32 v4, v12
	v_mov_b32_e32 v5, v12
	v_mov_b32_e32 v6, v12
	v_mov_b32_e32 v7, v12
	v_mov_b32_e32 v8, v12
	v_mov_b32_e32 v28, v12
	v_mov_b32_e32 v29, v12
	v_mov_b32_e32 v30, v12
	v_mov_b32_e32 v31, v12
	v_mov_b32_e32 v32, v12
	v_mov_b32_e32 v33, v12
	v_mov_b32_e32 v34, v12
	v_mov_b32_e32 v35, v12
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.Ltmp13:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_add_i32 s1, s0, 1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v94, 0, v61
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s21, s1, s3
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v98, 0, v63
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_lshl_b32 s21, s21, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_cmp_ne_u32_e32 vcc_lo, s0, v64
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s22, s21, s20
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v36, s21, v11
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s21, s22, s27
	s_mov_b32 s0, s1
	v_add_nc_u32_e32 v37, s21, v9
	v_add_nc_u32_e32 v40, s21, v52
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s21, s21, s25
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v71, v36, s[4:7], 0 offen
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v44, s21, v9
	v_add_nc_u32_e32 v48, s21, v52
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x3
	buffer_load_b128 v[36:39], v37, s[8:11], 0 offen
	buffer_load_b128 v[40:43], v40, s[8:11], 0 offen
	buffer_load_b128 v[44:47], v44, s[8:11], 0 offen
	buffer_load_b128 v[48:51], v48, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[72:75], v65 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[76:79], v66 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v80, v55 offset:1280
	ds_load_u8 v81, v55 offset:1792
	ds_load_u8 v82, v55 offset:1536
	ds_load_u8 v83, v55 offset:1024
	ds_load_u8 v84, v55 offset:256
	ds_load_u8 v85, v55 offset:768
	ds_load_u8 v86, v55 offset:512
	ds_load_u8 v87, v55
	ds_load_u8 v95, v55 offset:3328
	ds_load_u8 v96, v55 offset:3840
	ds_load_u8 v97, v55 offset:3584
	ds_load_u8 v99, v55 offset:3072
	ds_load_u8 v100, v55 offset:2304
	ds_load_u8 v101, v55 offset:2816
	ds_load_u8 v102, v55 offset:2560
	ds_load_u8 v103, v55 offset:2048
	ds_load_u8 v104, v55 offset:5376
	ds_load_u8 v105, v55 offset:5888
	ds_load_u8 v106, v55 offset:5632
	ds_load_u8 v107, v55 offset:5120
	ds_load_u8 v108, v55 offset:4352
	ds_load_u8 v109, v55 offset:4864
	ds_load_u8 v110, v55 offset:4608
	ds_load_u8 v111, v55 offset:4096
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v112, v55 offset:17664
	ds_load_u8 v113, v55 offset:18176
	ds_load_u8 v114, v55 offset:17920
	ds_load_u8 v115, v55 offset:17408
	ds_load_u8 v116, v55 offset:16640
	ds_load_u8 v117, v55 offset:17152
	ds_load_u8 v118, v55 offset:16896
	ds_load_u8 v119, v55 offset:16384
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v120, v55 offset:7424
	ds_load_u8 v121, v55 offset:7936
	ds_load_u8 v122, v55 offset:7680
	ds_load_u8 v123, v55 offset:7168
	ds_load_u8 v124, v55 offset:6400
	ds_load_u8 v125, v55 offset:6912
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v80, v83, v80, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v82, v87, v84, 0xc0c0004
	v_perm_b32 v83, v86, v85, 0xc0c0004
	ds_load_u8 v126, v55 offset:6656
	ds_load_u8 v84, v55 offset:9472
	ds_load_u8 v85, v55 offset:9984
	v_lshl_or_b32 v81, v81, 16, v80
	v_lshl_or_b32 v80, v83, 16, v82
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v82, v115, v112, 0xc0c0004
	v_perm_b32 v83, v114, v113, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v86, v55 offset:9728
	ds_load_u8 v87, v55 offset:9216
	ds_load_u8 v112, v55 offset:8448
	ds_load_u8 v113, v55 offset:8960
	ds_load_u8 v115, v55 offset:8704
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v119, v116, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	v_lshl_or_b32 v83, v83, 16, v82
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[28:35], v[80:81], v[74:75], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[72:73], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v80, v55 offset:19968
	ds_load_u8 v81, v55 offset:19456
	v_lshl_or_b32 v82, v116, 16, v114
	ds_load_u8 v114, v55 offset:19712
	ds_load_u8 v116, v55 offset:20224
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v117, v55 offset:8192
	ds_load_u8 v127, v55 offset:6144
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v133, v55 offset:30976
	ds_load_u8 v139, v55 offset:30720
	v_wmma_i32_16x16x16_iu4 v[12:19], v[82:83], v[72:73], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[82:83], v[74:75], v[20:27] neg_lo:[1,1,0]
	ds_load_u8 v74, v55 offset:18688
	ds_load_u8 v75, v55 offset:19200
	ds_load_u8 v82, v55 offset:18944
	ds_load_u8 v83, v55 offset:18432
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v118, v55 offset:11520
	ds_load_u8 v119, v55 offset:12032
	v_perm_b32 v72, v99, v95, 0xc0c0004
	v_perm_b32 v73, v97, v96, 0xc0c0004
	v_perm_b32 v97, v103, v100, 0xc0c0004
	v_perm_b32 v100, v102, v101, 0xc0c0004
	v_perm_b32 v102, v106, v105, 0xc0c0004
	v_perm_b32 v105, v110, v109, 0xc0c0004
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v95, v55 offset:11776
	ds_load_u8 v99, v55 offset:10496
	ds_load_u8 v101, v55 offset:11008
	v_lshl_or_b32 v72, v100, 16, v97
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v81, v81, v114, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v80, v80, v116, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v97, v55 offset:10752
	ds_load_u8 v100, v55 offset:10240
	ds_load_u8 v114, v55 offset:13568
	ds_load_u8 v116, v55 offset:14080
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v82, v82, v75, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v74, v83, v74, 0xc0c0004
	v_lshl_or_b32 v75, v80, 16, v81
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v83, v55 offset:13824
	ds_load_u8 v128, v55 offset:13312
	ds_load_u8 v96, v55 offset:11264
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v74, v82, 16, v74
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v82, v107, v104, 0xc0c0004
	v_perm_b32 v104, v111, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[76:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[72:73], v[78:79], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v72, v55 offset:12800
	ds_load_u8 v73, v55 offset:12288
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v108, v55 offset:21760
	ds_load_u8 v109, v55 offset:22272
	ds_load_u8 v111, v55 offset:20736
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v107, v55 offset:14848
	v_lshl_or_b32 v103, v102, 16, v82
	v_lshl_or_b32 v102, v105, 16, v104
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v82, v55 offset:22016
	ds_load_u8 v110, v55 offset:21504
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v104, v123, v120, 0xc0c0004
	v_perm_b32 v105, v122, v121, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v120, v55 offset:21248
	ds_load_u8 v122, v55 offset:20992
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v80, v55 offset:12544
	ds_load_u8 v81, v55 offset:13056
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[74:75], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[74:75], v[78:79], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v74, v55 offset:15616
	ds_load_u8 v75, v55 offset:16128
	ds_load_u8 v76, v55 offset:15872
	ds_load_u8 v77, v55 offset:15360
	ds_load_u8 v78, v55 offset:14592
	ds_load_u8 v79, v55 offset:15104
	v_perm_b32 v121, v127, v124, 0xc0c0004
	v_perm_b32 v123, v126, v125, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v124, v55 offset:20480
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v106, v55 offset:14336
	v_perm_b32 v84, v87, v84, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v87, v55 offset:24064
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v100, v55 offset:25856
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v97, v97, v101, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v101, v55 offset:26368
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v105, v105, 16, v104
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v126, v110, v108, 0xc0c0004
	ds_load_u8 v110, v55 offset:26880
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v104, v123, 16, v121
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v121, v55 offset:23808
	ds_load_u8 v123, v55 offset:24320
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v80, v73, v80, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v73, v55 offset:24832
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v75, v55 offset:24576
	v_perm_b32 v120, v122, v120, 0xc0c0004
	ds_load_u8 v122, v55 offset:26624
	ds_load_u8 v125, v55 offset:26112
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v85, v86, v85, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v86, v55 offset:23552
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v112, v117, v112, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v117, v55 offset:22784
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v113, v115, v113, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v115, v55 offset:23296
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v96, v96, v118, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v118, v55 offset:23040
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v95, v95, v119, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v119, v55 offset:22528
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v83, v83, v116, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v116, v55 offset:25600
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v81, v72, v81, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v72, v55 offset:25344
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v77, v77, v74, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v74, v55 offset:25088
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v78, v106, v78, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v106, v55 offset:27904
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v79, v107, v79, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v107, v55 offset:28416
	v_perm_b32 v82, v82, v109, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v101, v125, v101, 0xc0c0004
	v_perm_b32 v125, v75, v73, 0xc0c0004
	ds_load_u8 v73, v55 offset:28928
	ds_load_u8 v75, v55 offset:28672
	ds_load_u8 v108, v55 offset:28160
	ds_load_u8 v109, v55 offset:27648
	v_perm_b32 v87, v87, v123, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v118, v118, v115, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v119, v119, v117, 0xc0c0004
	ds_load_u8 v117, v55 offset:29952
	ds_load_u8 v115, v55 offset:30208
	ds_load_u8 v123, v55 offset:30464
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v100, v116, v100, 0xc0c0004
	ds_load_u8 v116, v55 offset:29696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v127, v74, v72, 0xc0c0004
	ds_load_u8 v72, v55 offset:29440
	ds_load_u8 v74, v55 offset:29184
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v114, v128, v114, 0xc0c0004
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_perm_b32 v124, v124, v111, 0xc0c0004
	ds_load_u8 v111, v55 offset:27392
	v_perm_b32 v86, v86, v121, 0xc0c0004
	ds_load_u8 v121, v55 offset:27136
	ds_load_u8 v135, v55 offset:31488
	ds_load_u8 v137, v55 offset:31232
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v129, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v128, v109, v106, 0xc0c0004
	ds_load_u8 v106, v55 offset:32000
	ds_load_u8 v107, v55 offset:32256
	ds_load_u8 v109, v55 offset:32512
	ds_load_u8 v108, v55 offset:31744
	v_perm_b32 v132, v75, v73, 0xc0c0004
	v_perm_b32 v122, v122, v110, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v123, v115, v123, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v110, v81, 16, v80
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v115, v82, 16, v126
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v116, v117, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v134, v74, v72, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[72:75], v67 offset0:64 offset1:66
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v117, v87, 16, v86
	v_lshl_or_b32 v116, v118, 16, v119
	v_lshl_or_b32 v119, v101, 16, v100
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v121, v111, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v111, v83, 16, v114
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[80:83], v69 offset0:64 offset1:66
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v114, v120, 16, v124
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v137, v135, 0xc0c0004
	v_lshl_or_b32 v118, v127, 16, v125
	v_lshl_or_b32 v121, v129, 16, v128
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v138, v107, v109, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v136, v108, v106, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v106, v113, 16, v112
	v_lshl_or_b32 v113, v76, 16, v77
	v_lshl_or_b32 v112, v79, 16, v78
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[76:79], v68 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v107, v85, 16, v84
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[84:87], v70 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v109, v95, 16, v96
	v_lshl_or_b32 v108, v97, 16, v99
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_perm_b32 v99, v139, v133, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[94:97], v94 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[102:103], v[74:75], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[114:115], v[72:73], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[114:115], v[74:75], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v100, 16, v99
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[98:101], v98 offset0:64 offset1:66
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v120, v130, 16, v122
	v_lshl_or_b32 v123, v123, 16, v131
	v_lshl_or_b32 v122, v134, 16, v132
	v_lshl_or_b32 v125, v138, 16, v136
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[104:105], v[76:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[104:105], v[78:79], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[116:117], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[116:117], v[78:79], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v53, v71 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v54, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v54, v[40:43] offset:8192
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v54, v[44:47] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v54, v[48:51] offset:24576
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[106:107], v[82:83], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[118:119], v[80:81], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[118:119], v[82:83], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[108:109], v[86:87], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[120:121], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[120:121], v[86:87], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[110:111], v[96:97], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[122:123], v[94:95], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[122:123], v[96:97], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[112:113], v[100:101], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[124:125], v[98:99], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[124:125], v[100:101], v[20:27] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_vccnz .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v36, 0x100, v10
	v_or_b32_e32 v37, 0x200, v10
	v_or_b32_e32 v38, 0x300, v10
	v_or_b32_e32 v39, 0x400, v10
	v_or_b32_e32 v40, 0x500, v10
	v_or_b32_e32 v41, 0x600, v10
	v_or_b32_e32 v42, 0x700, v10
	v_or_b32_e32 v43, 0x800, v10
	v_or_b32_e32 v44, 0x900, v10
	v_or_b32_e32 v45, 0xa00, v10
	v_or_b32_e32 v46, 0xb00, v10
	v_or_b32_e32 v47, 0xc00, v10
	v_or_b32_e32 v48, 0xd00, v10
	v_or_b32_e32 v49, 0xe00, v10
	v_or_b32_e32 v50, 0xf00, v10
	v_or_b32_e32 v51, 0x1000, v10
	v_or_b32_e32 v116, 0x1100, v10
	v_or_b32_e32 v117, 0x1200, v10
	v_or_b32_e32 v118, 0x1300, v10
	v_or_b32_e32 v119, 0x1400, v10
	v_or_b32_e32 v120, 0x1500, v10
	v_or_b32_e32 v122, 0x1600, v10
	v_or_b32_e32 v125, 0x1700, v10
	v_or_b32_e32 v129, 0x1800, v10
	v_or_b32_e32 v133, 0x1900, v10
	v_or_b32_e32 v134, 0x1a00, v10
	v_or_b32_e32 v135, 0x1b00, v10
	v_or_b32_e32 v136, 0x1c00, v10
	v_or_b32_e32 v137, 0x1d00, v10
	v_or_b32_e32 v138, 0x1e00, v10
	v_or_b32_e32 v139, 0x1f00, v10
	v_or_b32_e32 v128, 0x2000, v10
	v_or_b32_e32 v127, 0x2100, v10
	v_or_b32_e32 v124, 0x2200, v10
	v_or_b32_e32 v123, 0x2300, v10
	v_or_b32_e32 v131, 0x2400, v10
	v_or_b32_e32 v130, 0x2500, v10
	v_or_b32_e32 v121, 0x2600, v10
	v_or_b32_e32 v126, 0x2700, v10
	v_or_b32_e32 v113, 0x2800, v10
	v_or_b32_e32 v108, 0x2900, v10
	v_or_b32_e32 v111, 0x2a00, v10
	v_or_b32_e32 v110, 0x2b00, v10
	v_or_b32_e32 v115, 0x2c00, v10
	v_or_b32_e32 v114, 0x2d00, v10
	v_or_b32_e32 v109, 0x2e00, v10
	v_or_b32_e32 v112, 0x2f00, v10
	v_or_b32_e32 v105, 0x3000, v10
	v_or_b32_e32 v104, 0x3100, v10
	v_or_b32_e32 v102, 0x3200, v10
	v_or_b32_e32 v101, 0x3300, v10
	v_or_b32_e32 v107, 0x3400, v10
	v_or_b32_e32 v106, 0x3500, v10
	v_or_b32_e32 v100, 0x3600, v10
	v_or_b32_e32 v103, 0x3700, v10
	v_or_b32_e32 v99, 0x3800, v10
	v_or_b32_e32 v98, 0x3900, v10
	v_or_b32_e32 v95, 0x3a00, v10
	v_or_b32_e32 v94, 0x3b00, v10
	v_or_b32_e32 v97, 0x3c00, v10
	v_or_b32_e32 v96, 0x3d00, v10
	v_or_b32_e32 v140, 0x3e00, v10
	v_or_b32_e32 v141, 0x3f00, v10
	v_dual_mov_b32 v55, v8 :: v_dual_mov_b32 v54, v7
	v_dual_mov_b32 v53, v6 :: v_dual_mov_b32 v52, v5
	v_mov_b32_e32 v132, v10
.LBB0_7:                                ; %Flow326
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v10, 0, 1, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v5, 0, v56
	v_add_nc_u32_e32 v6, 0, v58
	v_add_nc_u32_e32 v7, 0, v60
	v_add_nc_u32_e32 v8, 0, v62
	v_and_b32_e32 v9, 0x1f0, v0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_cmp_ne_u32_e64 s0, 1, v10
	v_add_nc_u32_e32 v10, 0, v140
	v_add_nc_u32_e32 v146, 0, v43
	v_add_nc_u32_e32 v153, 0, v42
	v_add_nc_u32_e32 v149, 0, v41
	v_add_nc_u32_e32 v154, 0, v40
	v_add_nc_u32_e32 v155, 0, v39
	v_add_nc_u32_e32 v151, 0, v38
	v_add_nc_u32_e32 v152, 0, v37
	v_add_nc_u32_e32 v150, 0, v36
	v_mov_b32_e32 v40, v52
	v_mov_b32_e32 v39, v4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v41, v53 :: v_dual_mov_b32 v42, v54
	v_mov_b32_e32 v43, v55
	v_mov_b32_e32 v38, v3
	ds_load_2addr_stride64_b64 v[84:87], v5 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[80:83], v6 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[72:75], v7 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[64:67], v8 offset0:64 offset1:66
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v5, 0, v57
	v_dual_mov_b32 v37, v2 :: v_dual_add_nc_u32 v6, 0, v59
	v_add_nc_u32_e32 v7, 0, v61
	v_add_nc_u32_e32 v8, 0, v63
	v_add_nc_u32_e32 v11, 0, v141
	v_add_nc_u32_e32 v140, 0, v119
	v_add_nc_u32_e32 v119, 0, v51
	v_add_nc_u32_e32 v145, 0, v50
	v_add_nc_u32_e32 v141, 0, v49
	v_add_nc_u32_e32 v147, 0, v48
	v_add_nc_u32_e32 v148, 0, v47
	v_add_nc_u32_e32 v143, 0, v46
	v_add_nc_u32_e32 v144, 0, v45
	v_add_nc_u32_e32 v142, 0, v44
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	ds_load_2addr_stride64_b64 v[76:79], v5 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[68:71], v6 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[60:63], v7 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[56:59], v8 offset0:64 offset1:66
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v96, 0, v96
	v_dual_mov_b32 v46, v30 :: v_dual_add_nc_u32 v97, 0, v97
	v_dual_mov_b32 v47, v31 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v44, v28 :: v_dual_add_nc_u32 v95, 0, v95
	v_dual_mov_b32 v45, v29 :: v_dual_add_nc_u32 v98, 0, v98
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v132, 0, v132
	v_mov_b32_e32 v48, v32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v36, v154
	ds_load_u8 v37, v155
	v_dual_mov_b32 v7, v54 :: v_dual_mov_b32 v8, v55
	v_dual_mov_b32 v5, v52 :: v_dual_mov_b32 v6, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v153
	ds_load_u8 v38, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v37, 16, v36
	ds_load_u8 v36, v150
	ds_load_u8 v37, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v151
	ds_load_u8 v38, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v37, 16, v36
	v_dual_mov_b32 v43, v8 :: v_dual_mov_b32 v42, v7
	v_dual_mov_b32 v41, v6 :: v_dual_mov_b32 v40, v5
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	ds_load_u8 v5, v147
	ds_load_u8 v6, v148
	v_wmma_i32_16x16x16_iu4 v[36:43], v[156:157], v[84:85], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v145
	ds_load_u8 v7, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v142
	ds_load_u8 v7, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	ds_load_u8 v7, v143
	ds_load_u8 v8, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v120
	ds_load_u8 v8, v140
	v_wmma_i32_16x16x16_iu4 v[36:43], v[5:6], v[80:81], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v125
	ds_load_u8 v44, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v44, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v8, 16, v7
	ds_load_u8 v7, v116
	ds_load_u8 v44, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v44, v7, 0xc0c0004
	ds_load_u8 v44, v118
	ds_load_u8 v45, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v44, 16, v7
	ds_load_u8 v44, v137
	ds_load_u8 v45, v136
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[72:73], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v139
	ds_load_u8 v46, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v45, 16, v44
	ds_load_u8 v44, v133
	ds_load_u8 v45, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v135
	ds_load_u8 v46, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v45, 16, v44
	ds_load_u8 v44, v130
	ds_load_u8 v45, v131
	v_wmma_i32_16x16x16_iu4 v[36:43], v[158:159], v[64:65], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v126
	ds_load_u8 v46, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v45, 16, v44
	ds_load_u8 v44, v127
	ds_load_u8 v45, v128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v123
	ds_load_u8 v46, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v45, 16, v44
	ds_load_u8 v44, v114
	ds_load_u8 v45, v115
	v_wmma_i32_16x16x16_iu4 v[36:43], v[160:161], v[76:77], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v112
	ds_load_u8 v46, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v45, 16, v44
	ds_load_u8 v44, v108
	ds_load_u8 v45, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v110
	ds_load_u8 v46, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v45, 16, v44
	ds_load_u8 v44, v106
	ds_load_u8 v45, v107
	v_wmma_i32_16x16x16_iu4 v[36:43], v[162:163], v[68:69], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v103
	ds_load_u8 v46, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v45, 16, v44
	ds_load_u8 v44, v104
	ds_load_u8 v45, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v101
	ds_load_u8 v46, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v45, 16, v44
	ds_load_u8 v44, v96
	ds_load_u8 v45, v97
	v_wmma_i32_16x16x16_iu4 v[36:43], v[164:165], v[60:61], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v11
	ds_load_u8 v46, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v45, 16, v44
	ds_load_u8 v44, v98
	ds_load_u8 v45, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v94
	ds_load_u8 v46, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v166, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[44:51], v[156:157], v[86:87], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[166:167], v[56:57], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[5:6], v[82:83], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[74:75], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[158:159], v[66:67], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[160:161], v[78:79], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[162:163], v[70:71], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[164:165], v[62:63], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[166:167], v[58:59], v[44:51] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v1, v154 offset:16384
	ds_load_u8 v2, v155 offset:16384
	ds_load_u8 v3, v153 offset:16384
	ds_load_u8 v4, v132 offset:16384
	ds_load_u8 v5, v151 offset:16384
	ds_load_u8 v6, v152 offset:16384
	ds_load_u8 v7, v149 offset:16384
	ds_load_u8 v8, v150 offset:16384
	ds_load_u8 v28, v147 offset:16384
	ds_load_u8 v29, v148 offset:16384
	ds_load_u8 v30, v145 offset:16384
	ds_load_u8 v31, v146 offset:16384
	ds_load_u8 v32, v143 offset:16384
	ds_load_u8 v33, v144 offset:16384
	ds_load_u8 v34, v141 offset:16384
	ds_load_u8 v35, v142 offset:16384
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v7, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v4, v8, 0xc0c0004
	v_perm_b32 v4, v6, v5, 0xc0c0004
	ds_load_u8 v5, v120 offset:16384
	ds_load_u8 v6, v140 offset:16384
	ds_load_u8 v7, v125 offset:16384
	ds_load_u8 v8, v119 offset:16384
	ds_load_u8 v52, v118 offset:16384
	ds_load_u8 v53, v117 offset:16384
	ds_load_u8 v54, v122 offset:16384
	ds_load_u8 v55, v116 offset:16384
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v4, 16, v3
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v34, v30, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v31, v35, 0xc0c0004
	v_perm_b32 v29, v33, v32, 0xc0c0004
	ds_load_u8 v30, v137 offset:16384
	ds_load_u8 v31, v136 offset:16384
	ds_load_u8 v32, v139 offset:16384
	ds_load_u8 v33, v133 offset:16384
	ds_load_u8 v34, v129 offset:16384
	ds_load_u8 v35, v135 offset:16384
	ds_load_u8 v116, v134 offset:16384
	ds_load_u8 v117, v138 offset:16384
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[86:87], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v29, 16, v28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[80:81], v[12:19] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v54, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v8, v55, 0xc0c0004
	v_perm_b32 v8, v53, v52, 0xc0c0004
	ds_load_u8 v28, v130 offset:16384
	ds_load_u8 v29, v131 offset:16384
	ds_load_u8 v52, v126 offset:16384
	ds_load_u8 v53, v127 offset:16384
	ds_load_u8 v54, v128 offset:16384
	ds_load_u8 v55, v123 offset:16384
	ds_load_u8 v84, v124 offset:16384
	ds_load_u8 v85, v121 offset:16384
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[82:83], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v8, 16, v7
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v31, v30, 0xc0c0004
	ds_load_u8 v30, v114 offset:16384
	ds_load_u8 v31, v115 offset:16384
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v117, v32, 0xc0c0004
	v_perm_b32 v32, v116, v35, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[72:73], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[74:75], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v34, v33, 0xc0c0004
	ds_load_u8 v33, v112 offset:16384
	ds_load_u8 v34, v113 offset:16384
	ds_load_u8 v35, v110 offset:16384
	ds_load_u8 v72, v111 offset:16384
	ds_load_u8 v73, v109 offset:16384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v7, v32, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v29, v85, v52, 0xc0c0004
	v_perm_b32 v52, v84, v55, 0xc0c0004
	ds_load_u8 v53, v108 offset:16384
	v_wmma_i32_16x16x16_iu4 v[12:19], v[7:8], v[64:65], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[7:8], v[66:67], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v29, 16, v28
	v_lshl_or_b32 v28, v52, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v106 offset:16384
	ds_load_u8 v32, v107 offset:16384
	ds_load_u8 v52, v103 offset:16384
	ds_load_u8 v54, v104 offset:16384
	ds_load_u8 v55, v105 offset:16384
	ds_load_u8 v64, v101 offset:16384
	ds_load_u8 v65, v102 offset:16384
	ds_load_u8 v80, v100 offset:16384
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[78:79], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v73, v33, 0xc0c0004
	ds_load_u8 v73, v96 offset:16384
	ds_load_u8 v81, v97 offset:16384
	ds_load_u8 v11, v11 offset:16384
	ds_load_u8 v84, v98 offset:16384
	ds_load_u8 v85, v99 offset:16384
	ds_load_u8 v86, v94 offset:16384
	ds_load_u8 v87, v95 offset:16384
	ds_load_u8 v10, v10 offset:16384
	v_lshl_or_b32 v2, v33, 16, v30
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v34, v53, 0xc0c0004
	v_perm_b32 v34, v72, v35, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v65, v64, 0xc0c0004
	v_lshl_or_b32 v1, v34, 16, v1
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v80, v52, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v85, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[68:69], v[12:19] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v6, 16, v5
	v_perm_b32 v5, v81, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v10, v11, 0xc0c0004
	v_perm_b32 v8, v87, v86, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[70:71], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[60:61], v[12:19] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v8, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[62:63], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[56:57], v[12:19] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[58:59], v[20:27] neg_lo:[1,1,0]
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v52 :: v_dual_mov_b32 v41, v53
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	v_dual_mov_b32 v42, v54 :: v_dual_mov_b32 v43, v55
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
.LBB0_12:                               ; %._crit_edge11
	.loc	1 169 22 is_stmt 1              ; generate_amdgcn.py:169:22
	v_or_b32_e32 v2, s26, v92
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_or_b32 v1, v89, 1, v93
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s20, s12
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v4, 12, v1
	v_or_b32_e32 v5, 10, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v10, 32, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v6, 8, v1
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 2, v1
	v_or_b32_e32 v11, 4, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v28, v2, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s27, v1
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s0, s27, s25
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v29, s27, v8
	v_or_b32_e32 v30, s27, v11
	v_or_b32_e32 v31, s27, v7
	v_or_b32_e32 v32, s27, v6
	v_or_b32_e32 v33, s27, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v34, s27, v4
	v_or_b32_e32 v35, s27, v3
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v8, s0, v8, 1
	v_add_lshl_u32 v11, s0, v11, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v52, v2, s[20:23], 0 offen
	v_lshlrev_b32_e32 v2, 1, v29
	v_lshlrev_b32_e32 v29, 1, v30
	v_lshlrev_b32_e32 v30, 1, v31
	v_lshlrev_b32_e32 v31, 1, v32
	v_lshlrev_b32_e32 v32, 1, v33
	v_lshlrev_b32_e32 v33, 1, v34
	v_lshlrev_b32_e32 v34, 1, v35
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v3, s0, v3, 1
	s_clause 0x7
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v35, v1, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v53, v5, s[20:23], 0 offen
	buffer_load_u16 v54, v4, s[20:23], 0 offen
	buffer_load_u16 v55, v3, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt lgkmcnt(0)
	s_clause 0x6
	buffer_load_u16 v56, v2, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v50
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v43, v48
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v37
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
.Ltmp16:
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v5, 16, v28
	v_lshlrev_b32_e32 v28, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v58, v28, v35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v35, v5, v35 :: v_dual_lshlrev_b32 v10, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v61, v28, v10 :: v_dual_lshlrev_b32 v50, 16, v7
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v49, 16, v8
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v57, v28, v50
	v_dual_mul_f32 v50, v5, v50 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v8, 16, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v60, v28, v49
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v48, 16, v52
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v52, 16, v53
	v_lshlrev_b32_e32 v51, 16, v6
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v6, 16, v31
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v62, v28, v8 :: v_dual_lshlrev_b32 v53, 16, v54
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v34, v28, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v64, v28, v6 :: v_dual_lshlrev_b32 v7, 16, v32
	v_mul_f32_e32 v66, v28, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v33, v28, v53 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v52, v5, v52 :: v_dual_mul_f32 v63, v28, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v65, v28, v30 :: v_dual_lshlrev_b32 v54, 16, v55
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v55, 16, v56
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v56, v28, v51
	v_mul_f32_e32 v59, v28, v11
	v_dual_mul_f32 v32, v28, v54 :: v_dual_mul_f32 v11, v5, v11
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v31, v28, v48
	v_mul_f32_e32 v48, v5, v48
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v49, v5, v49
	v_mul_f32_e32 v54, v5, v54
	v_mul_f32_e32 v53, v5, v53
	v_mul_f32_e32 v51, v5, v51
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v30, v5, v30 :: v_dual_mul_f32 v21, v60, v21
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v20, v58, v20 :: v_dual_mul_f32 v27, v32, v27
	v_dual_mul_f32 v24, v56, v24 :: v_dual_mul_f32 v13, v49, v13
	v_dual_mul_f32 v26, v33, v26 :: v_dual_mul_f32 v33, v35, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v28, v28, v55 :: v_dual_mul_f32 v25, v34, v25
	v_mul_f32_e32 v29, v5, v29
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v31, v31, v44
	.loc	1 175 13 is_stmt 1              ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v22, v59, v22 :: v_dual_mul_f32 v23, v57, v23
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v32, v48, v36 :: v_dual_mul_f32 v19, v54, v19
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v14, v11, v14 :: v_dual_mul_f32 v17, v52, v17
	v_dual_mul_f32 v34, v50, v15 :: v_dual_mul_f32 v35, v51, v16
	v_dual_mul_f32 v18, v53, v18 :: v_dual_mul_f32 v41, v62, v41
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v30, v30, v39 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v24
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v16, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v19
	v_dual_mul_f32 v44, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v55, v5, v55
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v28, v28, v45 :: v_dual_mul_f32 v11, v66, v46
	v_mul_f32_e32 v36, v65, v47
	v_dual_mul_f32 v12, v64, v43 :: v_dual_mul_f32 v29, v29, v38
	v_dual_mul_f32 v42, v63, v42 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v27
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v38, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v22
	v_dual_mul_f32 v46, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v14
	v_mul_f32_e32 v47, 0xbfb8aa3b, v34
	v_dual_mul_f32 v52, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v16
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v40, v61, v40 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v23
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	v_cndmask_b32_e64 v44, 0, 0x42800000, s2
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	v_cndmask_b32_e64 v16, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v53
	v_dual_mul_f32 v54, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v43
	v_cndmask_b32_e64 v15, 0, 0x42800000, s7
	v_cndmask_b32_e64 v49, 0, 0x42800000, s9
	v_cndmask_b32_e64 v53, 0, 0x42800000, s13
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v20
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v26
	v_dual_mul_f32 v48, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v43, 0, 0x42800000, s3
	v_mul_f32_e32 v50, 0xbfb8aa3b, v13
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v27
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v14
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v17
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v16, v16
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v54
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v50
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s6
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v38, 0, 0x42800000, s5
	v_cndmask_b32_e64 v50, 0, 0x42800000, s8
	v_cndmask_b32_e64 v48, 0, 0x42800000, s10
	v_cndmask_b32_e64 v47, 0, 0x42800000, s11
	v_cndmask_b32_e64 v54, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v44, v44, v57
	v_ldexp_f32 v39, v39, v59
	v_ldexp_f32 v16, v16, v61
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v37, v55, v37
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v35
	v_ldexp_f32 v45, v45, v56
	v_ldexp_f32 v15, v15, v62
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v33
	v_ldexp_f32 v49, v49, v64
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v56, 1.0, v16
	v_dual_add_f32 v16, 1.0, v39 :: v_dual_add_f32 v39, 1.0, v44
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v46, v46, v55
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v55, 1.0, v15
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v48, v48
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v59, null, v39, v39, v20
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v52
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s11
	v_exp_f32_e32 v54, v54
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v83, v59
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s14
	v_ldexp_f32 v43, v43, v58
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s12
	v_ldexp_f32 v38, v38, v60
	v_ldexp_f32 v50, v50, v63
	v_ldexp_f32 v48, v48, v65
	v_ldexp_f32 v47, v47, v66
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v44, 1.0, v46
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v18 :: v_dual_add_f32 v15, 1.0, v43
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v43, 1.0, v45
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v54, v54, v67
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_add_f32 v45, 1.0, v47
	v_dual_add_f32 v46, 1.0, v48 :: v_dual_add_f32 v47, 1.0, v49
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v100, -v59, v83, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v48, 1.0, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v50, null, v44, v44, v21
	v_div_scale_f32 v57, null, v43, v43, v22
	v_div_scale_f32 v61, null, v15, v15, v23
	v_div_scale_f32 v75, null, v47, v47, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v50
	v_fmac_f32_e32 v83, v100, v83
	v_div_scale_f32 v73, null, v48, v48, v13
	v_div_scale_f32 v63, null, v16, v16, v24
	v_rcp_f32_e32 v82, v57
	v_div_scale_f32 v65, null, v38, v38, v25
	v_div_scale_f32 v67, null, v56, v56, v26
	v_rcp_f32_e32 v84, v61
	v_rcp_f32_e32 v94, v73
	v_rcp_f32_e32 v95, v75
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v49, 1.0, v54
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v77, null, v46, v46, v33
	v_rcp_f32_e32 v85, v63
	v_div_scale_f32 v71, null, v55, v55, v27
	v_rcp_f32_e32 v86, v65
	v_rcp_f32_e32 v87, v67
	v_fma_f32 v98, -v50, v81, 1.0
	v_div_scale_f32 v79, null, v45, v45, v34
	v_rcp_f32_e32 v96, v77
	v_fma_f32 v99, -v57, v82, 1.0
	v_rcp_f32_e32 v93, v71
	v_fma_f32 v101, -v61, v84, 1.0
	v_fma_f32 v106, -v73, v94, 1.0
	v_fma_f32 v107, -v75, v95, 1.0
	v_fmac_f32_e32 v81, v98, v81
	v_div_scale_f32 v54, vcc_lo, v21, v44, v21
	v_div_scale_f32 v58, s1, v22, v43, v22
	v_rcp_f32_e32 v97, v79
	v_fma_f32 v102, -v63, v85, 1.0
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v60, s2, v20, v39, v20
	v_div_scale_f32 v62, s3, v23, v15, v23
	v_div_scale_f32 v76, s9, v14, v47, v14
	v_fma_f32 v103, -v65, v86, 1.0
	v_fma_f32 v104, -v67, v87, 1.0
	v_fmac_f32_e32 v84, v101, v84
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_fmac_f32 v95, v107, v95
	v_mul_f32_e32 v98, v54, v81
	v_fma_f32 v108, -v77, v96, 1.0
	v_fmac_f32_e32 v85, v102, v85
	v_dual_mul_f32 v99, v58, v82 :: v_dual_mul_f32 v100, v60, v83
	v_div_scale_f32 v64, s4, v24, v16, v24
	v_fma_f32 v105, -v71, v93, 1.0
	v_div_scale_f32 v66, s5, v25, v38, v25
	v_dual_fmac_f32 v86, v103, v86 :: v_dual_fmac_f32 v87, v104, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v101, v62, v84 :: v_dual_mul_f32 v102, v64, v85
	v_mul_f32_e32 v107, v76, v95
	v_fma_f32 v110, -v50, v98, v54
	v_div_scale_f32 v70, s6, v26, v56, v26
	v_div_scale_f32 v78, s10, v33, v46, v33
	v_fma_f32 v109, -v79, v97, 1.0
	v_fmac_f32_e32 v96, v108, v96
	v_fma_f32 v111, -v57, v99, v58
	v_div_scale_f32 v72, s7, v27, v55, v27
	v_fmac_f32_e32 v93, v105, v93
	v_fma_f32 v112, -v59, v100, v60
	v_mul_f32_e32 v103, v66, v86
	v_fma_f32 v113, -v61, v101, v62
	v_fmac_f32_e32 v98, v110, v81
	v_div_scale_f32 v74, s8, v13, v48, v13
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v104, v70, v87
	v_dual_mul_f32 v105, v72, v93 :: v_dual_mul_f32 v108, v78, v96
	v_fmac_f32_e32 v99, v111, v82
	v_fma_f32 v114, -v63, v102, v64
	v_fmac_f32_e32 v100, v112, v83
	v_fma_f32 v115, -v65, v103, v66
	v_fmac_f32_e32 v101, v113, v84
	v_fma_f32 v50, -v50, v98, v54
	v_div_scale_f32 v80, s11, v34, v45, v34
	v_mul_f32_e32 v106, v74, v94
	v_fma_f32 v116, -v67, v104, v70
	v_fma_f32 v54, -v57, v99, v58
	v_dual_fmac_f32 v102, v114, v85 :: v_dual_fmac_f32 v103, v115, v86
	v_fma_f32 v117, -v71, v105, v72
	v_fma_f32 v57, -v59, v100, v60
	v_div_fmas_f32 v50, v50, v81, v98
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v109, v80, v97
	v_fma_f32 v118, -v73, v106, v74
	v_fma_f32 v58, -v61, v101, v62
	v_dual_fmac_f32 v104, v116, v87 :: v_dual_fmac_f32 v105, v117, v93
	v_div_fmas_f32 v54, v54, v82, v99
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v119, -v75, v107, v76
	v_fma_f32 v59, -v63, v102, v64
	v_div_fmas_f32 v57, v57, v83, v100
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v120, -v77, v108, v78
	v_fma_f32 v60, -v65, v103, v66
	v_dual_fmac_f32 v106, v118, v94 :: v_dual_fmac_f32 v107, v119, v95
	v_div_fixup_f32 v21, v50, v44, v21
	v_div_fmas_f32 v44, v58, v84, v101
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v121, -v79, v109, v80
	v_fma_f32 v61, -v67, v104, v70
	v_div_fixup_f32 v22, v54, v43, v22
	v_div_fmas_f32 v43, v59, v85, v102
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v62, -v71, v105, v72
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_fmac_f32 v109, v121, v97
	v_div_fixup_f32 v20, v57, v39, v20
	v_div_fmas_f32 v39, v60, v86, v103
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v63, -v73, v106, v74
	v_div_fixup_f32 v23, v44, v15, v23
	v_div_fmas_f32 v44, v61, v87, v104
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v64, -v75, v107, v76
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v15, v11, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v22, v62, v93, v105
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v65, -v77, v108, v78
	v_div_fixup_f32 v11, v43, v16, v24
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v16, v31, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v39, v38, v25
	v_div_fmas_f32 v24, v63, v94, v106
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v66, -v79, v109, v80
	v_div_fixup_f32 v25, v44, v56, v26
	v_div_fmas_f32 v26, v64, v95, v107
	s_mov_b32 vcc_lo, s10
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v11, v12, v11 :: v_dual_mul_f32 v12, v42, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v20, v65, v96, v108
	s_mov_b32 vcc_lo, s11
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v52, v52
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v22, v22, v55, v27
	v_div_fmas_f32 v27, v66, v97, v109
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s14
	v_exp_f32_e32 v53, v53
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v24, v24, v48, v13
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v13, v41, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v25, v26, v47, v14
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v14, v40, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v22, v27, v45, v34
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v27, v51
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v20, v46, v33
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v33, v52, v69
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v22, v30, v22
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	v_ldexp_f32 v26, v53, v68
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v20, v32, v20 :: v_dual_mul_f32 v25, v29, v25
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v27, v27, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v31, null, v49, v49, v35
	v_div_scale_f32 v30, null, v33, v33, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v38, null, v26, v26, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v31
	v_rcp_f32_e32 v40, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v29, null, v27, v27, v19
	v_rcp_f32_e32 v32, v38
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v7, v5, v7
	v_mul_f32_e32 v8, v5, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v42, v29
	s_mov_b32 s7, 0x76543210
	v_fma_f32 v39, -v31, v34, 1.0
	v_fma_f32 v43, -v30, v40, 1.0
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v3, v7, v3 :: v_dual_mul_f32 v2, v8, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v41, -v38, v32, 1.0
	v_fma_f32 v45, -v29, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, s2, v19, v27, v19
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s1, v18, v33, v18
	v_mul_f32_e32 v51, v45, v42
	v_fmac_f32_e32 v32, v41, v32
	v_div_scale_f32 v41, s0, v17, v26, v17
	v_fmac_f32_e32 v34, v39, v34
	v_div_scale_f32 v39, vcc_lo, v35, v49, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v41, v32
	v_mul_f32_e32 v48, v43, v40
	v_mul_f32_e32 v44, v39, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v31, v44, v39
	v_fmac_f32_e32 v44, v46, v34
	v_fma_f32 v46, -v38, v47, v41
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v10, v5, v10
	v_mul_f32_e32 v5, v5, v6
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v50, -v30, v48, v43
	v_fma_f32 v6, -v31, v44, v39
	v_fma_f32 v31, -v29, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v5, v4
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v6, v6, v34, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v51, v31, v42
	v_fmac_f32_e32 v47, v46, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v1, v10, v1
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v6, v6, v49, v35
	v_fma_f32 v29, -v29, v51, v45
	v_fma_f32 v34, -v38, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v34, v32, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v7, v31, v26, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_mul_f32 v7, v3, v7
	v_fma_f32 v30, -v30, v48, v43
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v3, v36, v23
	v_dual_mul_f32 v6, v4, v6 :: v_dual_lshlrev_b32 v23, 7, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v30, v30, v40, v48
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v29, v29, v42, v51
	v_div_fixup_f32 v8, v30, v33, v18
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v18, v28, v21
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v21, |v13|, |v14|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v5, v29, v27, v19
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v3|, |v11|, |v12|
.Ltmp20:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v17, v1, v5
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, |v16|, |v18|, |v15|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v5, v5, v19, v21
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v21, 2, v90
	v_permlanex16_b32 v19, v5, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v10, v37, v24 :: v_dual_max_f32 v19, v19, v19
	v_mul_f32_e32 v8, v2, v8
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, |v20|, |v10|, |v25|
	v_max3_f32 v2, |v22|, |v6|, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v19
	v_max_f32_e64 v4, |v8|, |v17|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v1, v2, v4
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v1, 3, v92
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v24, v1, v21
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v19, 0, v23, v24
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v2, v4
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v90, 2, v1
	ds_store_b64 v19, v[4:5]
	v_xad_u32 v2, v2, v21, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v19, v5
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v19, v19, v19
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v5, v19
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v5
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v19 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v4 :: v_dual_max_f32 v2, v2, v5
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v5, v4, v19 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v5 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v2, v4 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v5, v5, v19 :: v_dual_add_nc_u32 v2, 0, v21
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v19, 0, v1
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v19
.Ltmp44:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v2, v4, v4
	v_max_f32_e32 v4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v21, v5
	v_rcp_f32_e32 v23, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v24, -v5, v21, 1.0
	v_fma_f32 v26, -v19, v23, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v24, v21
	v_div_scale_f32 v27, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v24, s0, v4, 0x40e00000, v4
	v_dual_fmac_f32 v23, v26, v23 :: v_dual_mul_f32 v26, v27, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v24, v23
	v_fma_f32 v29, -v5, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v19, v28, v24
	v_fmac_f32_e32 v26, v29, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v30, v23
	v_fma_f32 v5, -v5, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v28, v24
	v_div_fmas_f32 v5, v5, v21, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v23, v28
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v19, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v5, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v19, v4, 16, 1
	v_add3_u32 v23, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v4, v19, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0xffff0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0xffff0000, v24
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v28, null, v4, v4, v25
	v_div_scale_f32 v29, s1, v25, v4, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v40, null, v5, v5, v16
	v_rcp_f32_e32 v45, v28
	v_div_scale_f32 v42, null, v5, v5, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v51, v40
	v_div_scale_f32 v41, null, v5, v5, v18
	v_rcp_f32_e32 v52, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v28, v45, 1.0
	v_fma_f32 v61, -v40, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v55, v45
	v_fmac_f32_e32 v51, v61, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v29, v45
	v_div_scale_f32 v19, null, v4, v4, v20
	v_div_scale_f32 v32, null, v4, v4, v6
	v_div_scale_f32 v26, null, v4, v4, v10
	v_div_scale_f32 v30, null, v4, v4, v22
	v_rcp_f32_e32 v43, v19
	v_div_scale_f32 v34, null, v4, v4, v7
	v_rcp_f32_e32 v47, v32
	v_rcp_f32_e32 v44, v26
	v_rcp_f32_e32 v46, v30
	v_div_scale_f32 v36, null, v4, v4, v8
	v_rcp_f32_e32 v48, v34
	v_div_scale_f32 v38, null, v4, v4, v17
	v_fma_f32 v53, -v19, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v36
	v_fma_f32 v57, -v32, v47, 1.0
	v_div_scale_f32 v21, vcc_lo, v20, v4, v20
	v_fma_f32 v54, -v26, v44, 1.0
	v_fma_f32 v56, -v30, v46, 1.0
	v_dual_fmac_f32 v43, v53, v43 :: v_dual_and_b32 v2, 16, v0
	v_fmac_f32_e32 v47, v57, v47
	v_div_scale_f32 v33, s3, v6, v4, v6
	v_rcp_f32_e32 v50, v38
	v_fma_f32 v58, -v34, v48, 1.0
	v_div_scale_f32 v27, s0, v10, v4, v10
	v_fmac_f32_e32 v44, v54, v44
	v_dual_fmac_f32 v46, v56, v46 :: v_dual_mul_f32 v53, v21, v43
	v_div_scale_f32 v31, s2, v22, v4, v22
	v_fma_f32 v59, -v36, v49, 1.0
	v_dual_fmac_f32 v48, v58, v48 :: v_dual_mul_f32 v57, v33, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v61, -v19, v53, v21
	v_mul_f32_e32 v54, v27, v44
	v_div_scale_f32 v37, s5, v8, v4, v8
	v_fma_f32 v60, -v38, v50, 1.0
	v_fmac_f32_e32 v49, v59, v49
	v_fma_f32 v65, -v32, v57, v33
	v_dual_mul_f32 v56, v31, v46 :: v_dual_fmac_f32 v53, v61, v43
	v_fma_f32 v62, -v26, v54, v27
	v_fma_f32 v63, -v28, v55, v29
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_mul_f32 v59, v37, v49
	v_fmac_f32_e32 v57, v65, v47
	v_fma_f32 v64, -v30, v56, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v54, v62, v44 :: v_dual_fmac_f32 v55, v63, v45
	v_fma_f32 v19, -v19, v53, v21
	v_fma_f32 v67, -v36, v59, v37
	v_fmac_f32_e32 v56, v64, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v26, v54, v27
	v_fma_f32 v26, -v28, v55, v29
	v_div_fmas_f32 v19, v19, v43, v53
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v59, v67, v49
	v_fma_f32 v27, -v30, v56, v31
	v_div_fmas_f32 v21, v21, v44, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v32, v57, v33
	v_div_fmas_f32 v26, v26, v45, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v19, v19, v4, v20
	v_div_fmas_f32 v20, v27, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v35, s4, v7, v4, v7
	v_div_fixup_f32 v10, v21, v4, v10
	v_div_fmas_f32 v21, v28, v47, v57
	v_rcp_f32_e32 v28, v42
	v_div_scale_f32 v39, s6, v17, v4, v17
	v_div_fixup_f32 v20, v20, v4, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v6, v21, v4, v6
	v_div_scale_f32 v21, s0, v16, v5, v16
	v_mul_f32_e32 v58, v35, v48
	v_fma_f32 v22, -v41, v52, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v31, -v42, v28, 1.0
	v_div_fixup_f32 v25, v26, v4, v25
	v_fma_f32 v66, -v34, v58, v35
	v_fmac_f32_e32 v52, v22, v52
	v_div_scale_f32 v22, s1, v18, v5, v18
	v_fmac_f32_e32 v28, v31, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v66, v48
	v_mul_f32_e32 v60, v39, v50
	v_mul_f32_e32 v30, v22, v52
	v_div_scale_f32 v33, null, v5, v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v34, v58, v35
	v_fma_f32 v27, -v38, v60, v39
	v_div_scale_f32 v31, s2, v15, v5, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v26, v29, v48, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v29, v21, v51 :: v_dual_fmac_f32 v60, v27, v50
	s_mov_b32 vcc_lo, s5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v26, v4, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v27, -v40, v29, v21
	v_fma_f32 v26, -v36, v59, v37
	v_fma_f32 v32, -v38, v60, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v29, v27, v51
	v_fma_f32 v27, -v41, v30, v22
	v_div_fmas_f32 v26, v26, v49, v59
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v40, v29, v21
	v_fmac_f32_e32 v30, v27, v52
	v_div_fmas_f32 v32, v32, v50, v60
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v8, v26, v4, v8
	v_div_fmas_f32 v21, v21, v51, v29
	v_fma_f32 v22, -v41, v30, v22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v32, v4, v17
	v_div_scale_f32 v32, null, v5, v5, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v52, v30
	v_div_fixup_f32 v16, v21, v5, v16
	v_div_scale_f32 v21, null, v5, v5, v11
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v17, v22, v5, v18
	v_fma_f32 v22, -v33, v34, 1.0
	v_mul_f32_e32 v27, v31, v28
	v_rcp_f32_e32 v26, v21
	v_rcp_f32_e32 v36, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v34, v22, v34
	v_fma_f32 v29, -v42, v27, v31
	v_div_scale_f32 v22, null, v5, v5, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v27, v29, v28
	v_rcp_f32_e32 v29, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v32, v36, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v18, -v42, v27, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s3, v14, v5, v14
	v_div_fmas_f32 v18, v18, v28, v27
	v_div_scale_f32 v27, null, v5, v5, v13
	v_div_scale_f32 v28, vcc_lo, v3, v5, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v15, v18, v5, v15
	v_fma_f32 v18, -v21, v26, 1.0
	v_fma_f32 v35, -v22, v29, 1.0
	v_rcp_f32_e32 v30, v27
	v_mul_f32_e32 v31, v28, v34
	v_mul_f32_e32 v43, v40, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v29, v35, v29
	v_div_scale_f32 v35, s1, v12, v5, v12
	v_fmac_f32_e32 v26, v18, v26
	v_div_scale_f32 v18, s0, v11, v5, v11
	v_fma_f32 v37, -v33, v31, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v35, v29
	v_fma_f32 v38, -v27, v30, 1.0
	v_mul_f32_e32 v39, v18, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v37, v34
	v_fma_f32 v37, -v21, v39, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v33, v31, v28
	v_fma_f32 v33, -v22, v41, v35
	v_fmac_f32_e32 v30, v38, v30
	v_div_scale_f32 v38, s2, v13, v5, v13
	v_fmac_f32_e32 v39, v37, v26
	v_fmac_f32_e32 v41, v33, v29
	v_div_fmas_f32 v28, v28, v34, v31
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v18, -v21, v39, v18
	v_fma_f32 v21, -v32, v43, v40
	v_mul_f32_e32 v42, v38, v30
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v22, v41, v35
	v_div_fmas_f32 v18, v18, v26, v39
	v_fmac_f32_e32 v43, v21, v36
	v_fma_f32 v37, -v27, v42, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v28, v5, v3
	v_fma_f32 v26, -v32, v43, v40
	v_fmac_f32_e32 v42, v37, v30
	v_div_fmas_f32 v22, v22, v29, v41
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v18, v5, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v27, v42, v38
	v_div_fixup_f32 v12, v22, v5, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v30, v42
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v26, v26, v36, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v13, v21, v5, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v26, v5, v14
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v19
	v_rndne_f32_e32 v19, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v20, v6
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v22, v15
	v_cvt_i32_f32_e32 v25, v3
	v_cvt_i32_f32_e32 v26, v11
	v_and_b32_e32 v6, 15, v19
	v_and_b32_e32 v11, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_lshlrev_b32_e32 v19, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v4
	v_cvt_i32_f32_e32 v27, v12
	v_cvt_i32_f32_e32 v29, v5
	v_and_b32_e32 v3, 15, v14
	v_and_b32_e32 v12, 15, v8
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v15, 15, v17
	v_and_b32_e32 v16, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0x3000, v7
	v_lshlrev_b32_e32 v22, 7, v0
	v_and_b32_e32 v25, 0x60, v19
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v18, 0x600, v91, v88
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v28, v13
	v_and_b32_e32 v13, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 7, v2
	v_xor_b32_e32 v8, v18, v8
	v_add_nc_u32_e32 v7, 0, v7
	v_and_or_b32 v22, 0x3600, v22, v25
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 15, v10
	v_and_b32_e32 v10, 15, v20
	v_and_b32_e32 v18, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v21, v8
	v_xad_u32 v22, v22, v9, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v21, 15, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[14:17] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v22
	ds_load_b128 v[14:17], v22 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v22
	ds_load_b128 v[18:21], v22 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.h, 0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.l, v23.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v12.l, v24.h
	v_mov_b16_e32 v12.h, v11.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v11, v12, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v14, 4, v3
	v_lshl_or_b32 v14, v15, 4, v4
	v_lshl_or_b32 v4, v16, 4, v5
	v_lshl_or_b32 v5, v17, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s24, 7, v1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v6, v18, 4, v7
	v_lshl_or_b32 v7, v19, 4, v8
	v_lshl_or_b32 v8, v20, 4, v9
	v_lshl_or_b32 v9, v21, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v10, s26, v89
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v1.l, 8, v5.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v9.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v10, s0, v[3:4]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s25, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v14.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v8.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v6.l
	v_lshlrev_b16 v2.l, 8, v7.l
	v_or_b16 v4.l, v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s24, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v6, v11, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp45:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 168
		.amdhsa_next_free_sgpr 28
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14448
; TotalNumSgprs: 30
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 30
; NumVGPRsForWavesPerEU: 168
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
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x8a DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x64 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6d:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x79:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x85:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
