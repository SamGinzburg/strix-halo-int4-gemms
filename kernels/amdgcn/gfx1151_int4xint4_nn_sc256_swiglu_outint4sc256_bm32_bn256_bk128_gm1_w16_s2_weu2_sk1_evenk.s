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
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v48, 15, v0
	v_lshlrev_b32_e32 v76, 2, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 31
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
	s_ashr_i32 s16, s8, 31
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
	s_xor_b32 s17, s4, s16
	s_sub_i32 s28, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s28, s6
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s18, 0xff
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
.LBB0_3:                                ; %Flow285
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v46, 0x1f0, v0
	v_lshrrev_b32_e32 v45, 4, v0
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v47, 4, v48
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v43, 0x1e0, v0
	v_dual_mov_b32 v53, 0 :: v_dual_and_b32 v44, 16, v0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	s_mov_b32 s36, 0
	.loc	1 185 24 is_stmt 1              ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v46
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_and_b32_e32 v2, 56, v2
	v_lshrrev_b32_e32 v4, 2, v0
	v_lshlrev_b32_e32 v1, 2, v48
	v_lshlrev_b32_e32 v5, 6, v48
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s31, s3, 6
	v_xor_b32_e32 v2, v2, v3
	v_and_b32_e32 v4, 56, v4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s21, s18, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v82, s21, v3
	v_lshl_or_b32 v9, v48, 10, v2
	v_and_b32_e32 v2, 56, v76
	v_xor_b32_e32 v8, v76, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s22, s16, 9
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_lshl_or_b32 v6, v43, 5, v2
	v_or_b32_e32 v14, v5, v2
	s_add_i32 s2, s2, s0
	v_mov_b32_e32 v69, 0
	s_ashr_i32 s33, s2, 8
	v_xor_b32_e32 v2, v6, v4
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v4, s31, v1
	s_lshl_b32 s20, s17, 8
	v_mov_b32_e32 v71, 0
	v_sub_nc_u32_e32 v81, s21, v1
	v_or_b32_e32 v21, v2, v5
	v_or_b32_e32 v2, s31, v3
	v_add_nc_u32_e32 v6, 64, v4
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v4
	v_lshl_or_b32 v4, s17, 9, v43
	v_lshlrev_b32_e32 v3, 2, v45
	v_add_nc_u32_e32 v5, 64, v2
	v_cmp_gt_i32_e64 s0, 0x80, v2
	v_cmp_gt_i32_e64 s1, 0x80, v6
	v_add_nc_u32_e32 v2, s30, v48
	v_lshl_add_u32 v6, s29, 1, v4
	v_lshl_or_b32 v33, s3, 7, v3
	v_cmp_gt_i32_e64 s2, 0x80, v5
	v_lshrrev_b32_e32 v5, 3, v44
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v7, 16, v2
	v_subrev_nc_u32_e32 v84, s22, v6
	v_mul_lo_u32 v6, s33, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v2, 0x81, v33
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v83, 2, v5
	v_mul_lo_u32 v5, s33, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s29, v2, s[20:21]
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v7, s30, v45
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, 0x82, v33
	s_lshl_b32 s3, s16, 8
	v_lshlrev_b32_e32 v86, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[41:42], null, s21, v7, v[1:2]
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, 0x83, v33
	v_subrev_nc_u32_e32 v88, s3, v2
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v5, 0x80, v33
	v_mad_u64_u32 v[1:2], null, s29, v1, s[20:21]
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v87, 1, v6
	v_mad_u64_u32 v[2:3], null, s29, v3, s[20:21]
	v_or_b32_e32 v6, 2, v33
	v_subrev_nc_u32_e32 v85, s22, v4
	v_mad_u64_u32 v[3:4], null, s29, v33, s[20:21]
	v_or_b32_e32 v7, 3, v33
	v_mad_u64_u32 v[4:5], null, s29, v5, s[20:21]
	v_mad_u64_u32 v[5:6], null, s29, v6, s[20:21]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[6:7], null, s29, v7, s[20:21]
	v_subrev_nc_u32_e32 v89, s3, v1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v1, s29, v3
	v_xor_b32_e32 v10, 0x88, v9
	v_xor_b32_e32 v11, 0x110, v9
	v_xor_b32_e32 v12, 0x198, v9
	v_xor_b32_e32 v13, 0x220, v9
	v_xor_b32_e32 v15, 0x2a8, v9
	v_xor_b32_e32 v16, 0x330, v9
	v_xor_b32_e32 v17, 0x3b8, v9
	v_xor_b32_e32 v18, 8, v14
	v_xor_b32_e32 v19, 16, v14
	v_xor_b32_e32 v20, 24, v14
	v_xor_b32_e32 v22, 32, v14
	v_xor_b32_e32 v23, 40, v14
	v_xor_b32_e32 v24, 48, v14
	v_xor_b32_e32 v25, 56, v14
	v_xor_b32_e32 v26, 8, v21
	v_xor_b32_e32 v27, 16, v21
	v_xor_b32_e32 v28, 24, v21
	v_xor_b32_e32 v29, 32, v21
	v_xor_b32_e32 v30, 40, v21
	v_xor_b32_e32 v31, 48, v21
	v_xor_b32_e32 v32, 56, v21
	v_subrev_nc_u32_e32 v90, s3, v2
	v_subrev_nc_u32_e32 v91, s3, v4
	v_subrev_nc_u32_e32 v92, s3, v3
	v_subrev_nc_u32_e32 v93, s3, v5
	v_subrev_nc_u32_e32 v94, s3, v1
	v_subrev_nc_u32_e32 v95, s3, v6
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v96, 0, v8
	v_mov_b32_e32 v1, s36
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v97, 0, v9
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v98, 0, v10
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v99, 0, v11
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v100, 0, v12
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v101, 0, v13
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v102, 0, v15
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v103, 0, v16
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v104, 0, v17
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v105, 0, v14
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v106, 0, v18
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v107, 0, v19
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v108, 0, v20
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v109, 0, v22
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v110, 0, v23
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v111, 0, v24
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v112, 0, v25
	v_add_nc_u32_e32 v113, 0, v21
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v114, 0, v26
	v_add_nc_u32_e32 v115, 0, v27
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v116, 0, v28
	v_add_nc_u32_e32 v117, 0, v29
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v118, 0, v30
	v_add_nc_u32_e32 v119, 0, v31
	v_add_nc_u32_e32 v120, 0, v32
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_mov_b32_e32 v8, s43
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s34, s29, 2
	s_lshl_b32 s35, s29, 8
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s6
	s_mov_b32 s25, s7
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v121, v87, s[16:19], 0 offen
	buffer_load_u16 v122, v86, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s31, v82
	v_cmp_lt_i32_e64 s4, s31, v81
	s_add_i32 s6, s31, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s33, s33, -1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s6, v81
	v_cmp_lt_i32_e64 s6, s6, v82
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v13, s31, v41
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v47, v92
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v47, v93
	.loc	1 228 43 is_stmt 1              ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v11, v47, v94
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v12, v47, v95
	.loc	1 220 34 is_stmt 1              ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v14, v47, v91
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v15, v47, v90
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v16, 64, v13
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v17, 0x80000000, v10, s3
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v18, 0x80000000, v11, s3
	v_cndmask_b32_e64 v21, 0x80000000, v12, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v25, 0x80000000, v13, s4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s6, s2
	s_and_b32 s4, s5, s1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v123, 0x80000000, v14, s3
	v_cndmask_b32_e64 v124, 0x80000000, v15, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v26, 0x80000000, v16, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v17, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v18, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v25, v25, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s31, 0x80
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v125, v26, s[20:23], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s33, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v26, v13, v9, 0x5010400
	v_perm_b32 v27, v14, v10, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(2)
	v_perm_b32 v33, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v34, v24, v20, 0x5010400
	v_perm_b32 v35, v24, v20, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v19, 8, v26
	v_and_b16 v9.l, 0xff, v26.l
	v_lshrrev_b32_e32 v20, 24, v26
	v_and_b16 v9.h, 0xff, v26.h
	v_lshrrev_b32_e32 v26, 8, v27
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v28, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v32, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v96, v25 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v24, 8, v13
	v_lshrrev_b32_e32 v25, 24, v13
	v_and_b16 v11.l, 0xff, v27.l
	v_lshrrev_b32_e32 v36, 24, v27
	v_lshlrev_b16 v18.h, 8, v19.l
	v_lshlrev_b16 v19.l, 8, v20.l
	v_lshlrev_b16 v20.l, 8, v26.l
	v_perm_b32 v29, v16, v12, 0x5010400
	v_perm_b32 v30, v16, v12, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v31, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v27.h
	v_lshrrev_b32_e32 v27, 8, v14
	v_lshrrev_b32_e32 v37, 24, v14
	v_lshrrev_b32_e32 v38, 8, v28
	v_and_b16 v13.l, 0xff, v28.l
	v_lshrrev_b32_e32 v39, 24, v28
	v_and_b16 v13.h, 0xff, v28.h
	v_lshrrev_b32_e32 v28, 8, v15
	v_or_b16 v9.h, v9.h, v19.l
	v_lshlrev_b16 v19.l, 8, v24.l
	v_lshlrev_b16 v19.h, 8, v25.l
	v_or_b16 v11.l, v11.l, v20.l
	v_lshlrev_b16 v20.l, 8, v36.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v14.l, 0xff, v15.l
	v_lshrrev_b32_e32 v40, 24, v15
	v_and_b16 v14.h, 0xff, v15.h
	v_lshrrev_b32_e32 v126, 8, v29
	v_and_b16 v15.l, 0xff, v29.l
	v_lshrrev_b32_e32 v127, 24, v29
	v_and_b16 v15.h, 0xff, v29.h
	v_lshrrev_b32_e32 v29, 8, v30
	v_and_b16 v16.l, 0xff, v30.l
	v_lshrrev_b32_e32 v128, 24, v30
	v_and_b16 v16.h, 0xff, v30.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v30, 8, v31
	v_and_b16 v17.l, 0xff, v31.l
	v_lshrrev_b32_e32 v129, 24, v31
	v_and_b16 v17.h, 0xff, v31.h
	v_lshrrev_b32_e32 v31, 8, v21
	v_and_b16 v18.l, 0xff, v21.l
	v_lshrrev_b32_e32 v130, 24, v21
	v_lshrrev_b32_e32 v131, 8, v32
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v10.l, v10.l, v19.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v19.l, 0xff, v32.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v10.h, v10.h, v19.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v132, 24, v32
	v_and_b16 v19.h, 0xff, v32.h
	v_lshrrev_b32_e32 v32, 8, v22
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v11.h, v11.h, v20.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v20.l, 0xff, v22.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v20.h, 8, v27.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v27, 24, v22
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v21.l, 8, v37.l
	v_lshlrev_b16 v22.l, 8, v28.l
	v_or_b16 v9.l, v9.l, v18.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v18.h, 0xff, v21.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v21.h, 8, v39.l
	v_or_b16 v12.h, v12.h, v21.l
	v_lshlrev_b16 v21.l, 8, v38.l
	v_or_b16 v14.l, v14.l, v22.l
	v_lshlrev_b16 v22.l, 8, v40.l
	v_or_b16 v12.l, v12.l, v20.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v20.h, 0xff, v22.h
	v_lshrrev_b32_e32 v36, 8, v33
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v13.l, v13.l, v21.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v21.l, 0xff, v33.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v13.h, v13.h, v21.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v37, 24, v33
	v_and_b16 v21.h, 0xff, v33.h
	v_lshrrev_b32_e32 v33, 8, v23
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v14.h, v14.h, v22.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v22.l, 0xff, v23.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v22.h, 8, v126.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v38, 24, v23
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v23.l, 8, v127.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v24.l, 8, v30.l
	v_lshrrev_b32_e32 v39, 8, v34
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v15.l, v15.l, v22.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v22.h, 0xff, v23.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v15.h, v15.h, v23.l
	v_lshlrev_b16 v23.l, 8, v29.l
	v_lshlrev_b16 v23.h, 8, v128.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v40, 24, v34
	v_or_b16 v17.l, v17.l, v24.l
	v_lshlrev_b16 v24.l, 8, v129.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v16.l, v16.l, v23.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v23.l, 0xff, v34.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v16.h, v16.h, v23.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v23.h, 0xff, v34.h
	v_lshrrev_b32_e32 v34, 8, v35
	v_lshlrev_b16 v24.h, 8, v31.l
	v_lshrrev_b32_e32 v31, 24, v35
	v_or_b16 v17.h, v17.h, v24.l
	v_and_b16 v24.l, 0xff, v35.l
	v_lshlrev_b16 v25.l, 8, v130.l
	v_or_b16 v18.l, v18.l, v24.h
	v_and_b16 v24.h, 0xff, v35.h
	v_lshlrev_b16 v25.h, 8, v131.l
	v_lshlrev_b16 v26.l, 8, v132.l
	v_lshlrev_b16 v26.h, 8, v32.l
	v_lshlrev_b16 v27.l, 8, v27.l
	v_lshlrev_b16 v27.h, 8, v36.l
	v_lshlrev_b16 v28.l, 8, v37.l
	v_lshlrev_b16 v28.h, 8, v33.l
	v_lshlrev_b16 v29.l, 8, v38.l
	v_lshlrev_b16 v29.h, 8, v39.l
	v_lshlrev_b16 v30.l, 8, v40.l
	v_lshlrev_b16 v30.h, 8, v34.l
	v_lshlrev_b16 v31.l, 8, v31.l
	v_or_b16 v18.h, v18.h, v25.l
	v_or_b16 v19.l, v19.l, v25.h
	v_or_b16 v19.h, v19.h, v26.l
	v_or_b16 v20.l, v20.l, v26.h
	v_or_b16 v20.h, v20.h, v27.l
	v_or_b16 v21.l, v21.l, v27.h
	v_or_b16 v21.h, v21.h, v28.l
	v_or_b16 v22.l, v22.l, v28.h
	v_or_b16 v22.h, v22.h, v29.l
	v_or_b16 v23.l, v23.l, v29.h
	v_or_b16 v23.h, v23.h, v30.l
	v_or_b16 v24.l, v24.l, v30.h
	v_or_b16 v24.h, v24.h, v31.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v97, v9
	ds_store_b16_d16_hi v97, v9 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v97, v17 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v98, v10
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v97, v17 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v98, v10 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v98, v18 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v99, v11
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v98, v18 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v99, v11 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v99, v19 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v100, v12
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v99, v19 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v100, v12 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v100, v20 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v101, v13
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v100, v20 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v101, v13 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v101, v21 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v102, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v101, v21 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v102, v14 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v102, v22 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v103, v15
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v102, v22 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v103, v15 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v103, v23 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v104, v16
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v103, v23 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v104, v16 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v104, v24 offset:16384
	ds_store_b16_d16_hi v104, v24 offset:16448
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[126:129], v105 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[130:133], v113 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[134:137], v106 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[138:141], v114 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[142:145], v107 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[130:131], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[130:131], v[128:129], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[128:129], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v115 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v108 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[134:135], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[138:139], v[136:137], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[134:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[140:141], v[136:137], v[25:32] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[138:141], v124, s[24:27], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[142:143], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[144:145], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[142:143], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[144:145], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v116 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[134:137], v109 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v117 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v110 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[134:135], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[136:137], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[134:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[136:137], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v118 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[134:137], v111 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v119 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v112 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[134:135], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[136:137], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[134:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[136:137], v[25:32] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[134:137], v123, s[24:27], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v120 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v132, v47, v88
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v133, v47, v89
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[130:131], v[17:24] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[130:131], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v127, v140, v136, 0x5010400
	v_perm_b32 v126, v140, v136, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v136, 0x80000000, v133, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v131, v138, v134, 0x5010400
	v_perm_b32 v130, v138, v134, 0x7030602
	v_perm_b32 v129, v139, v135, 0x5010400
	v_perm_b32 v128, v139, v135, 0x7030602
	v_perm_b32 v124, v141, v137, 0x5010400
	v_perm_b32 v123, v141, v137, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_clause 0x1
	buffer_load_b128 v[132:135], v132, s[24:27], 0 offen
	buffer_load_b128 v[136:139], v136, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v96, v125 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v125, 8, v131
	v_and_b16 v125.h, 0xff, v131.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v125.l, 8, v125.l
	v_or_b16 v125.l, v125.h, v125.l
	v_and_b16 v125.h, 0xff, v131.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v136, v132, 0x5010400
	v_perm_b32 v136, v136, v132, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v132, 24, v131
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v141, v137, v133, 0x5010400
	v_perm_b32 v137, v137, v133, 0x7030602
	v_perm_b32 v142, v138, v134, 0x5010400
	v_lshrrev_b32_e32 v133, 24, v136
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v131.l, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v130
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v138, v138, v134, 0x7030602
	v_lshrrev_b32_e32 v134, 24, v141
	v_lshlrev_b16 v133.l, 8, v133.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v125.h, v125.h, v131.l
	v_lshrrev_b32_e32 v131, 8, v130
	v_and_b16 v131.h, 0xff, v130.l
	v_and_b16 v130.l, 0xff, v130.h
	v_lshlrev_b16 v130.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v129
	v_lshlrev_b16 v131.l, 8, v131.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v134.l, 8, v134.l
	v_perm_b32 v143, v139, v135, 0x5010400
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v130.l, v130.l, v130.h
	v_lshlrev_b16 v130.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v129
	v_or_b16 v131.l, v131.h, v131.l
	v_and_b16 v131.h, 0xff, v129.l
	v_and_b16 v129.l, 0xff, v129.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v139, v139, v135, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v129.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v128
	v_or_b16 v130.h, v131.h, v130.h
	v_and_b16 v131.h, 0xff, v128.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v135, 24, v137
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v129.l, v129.l, v129.h
	v_lshlrev_b16 v129.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v128
	v_and_b16 v128.l, 0xff, v128.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v135.l, 8, v135.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v129.h, v131.h, v129.h
	v_lshlrev_b16 v128.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v127
	v_and_b16 v131.h, 0xff, v127.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v128.l, v128.l, v128.h
	v_lshlrev_b16 v128.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v127
	v_and_b16 v127.l, 0xff, v127.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v128.h, v131.h, v128.h
	v_lshlrev_b16 v127.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v126
	v_and_b16 v131.h, 0xff, v126.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v127.l, v127.l, v127.h
	v_lshlrev_b16 v127.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v126
	v_and_b16 v126.l, 0xff, v126.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v127.h, v131.h, v127.h
	v_lshlrev_b16 v126.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v124
	v_and_b16 v131.h, 0xff, v124.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v126.l, v126.l, v126.h
	v_lshlrev_b16 v126.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v124
	v_and_b16 v124.l, 0xff, v124.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v126.h, v131.h, v126.h
	v_lshlrev_b16 v124.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 8, v123
	v_and_b16 v131.h, 0xff, v123.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v124.l, v124.l, v124.h
	v_lshlrev_b16 v124.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v123
	v_and_b16 v123.l, 0xff, v123.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v124.h, v131.h, v124.h
	v_lshlrev_b16 v123.h, 8, v132.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v132, 8, v140
	v_and_b16 v131.h, 0xff, v140.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v123.l, v123.l, v123.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v123.h, 8, v132.l
	v_lshrrev_b32_e32 v132, 24, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v123.h, v131.h, v123.h
	v_and_b16 v131.h, 0xff, v140.h
	v_lshlrev_b16 v132.l, 8, v132.l
	v_lshrrev_b32_e32 v140, 24, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v131.h, v131.h, v132.l
	v_lshrrev_b32_e32 v132, 8, v136
	v_and_b16 v132.h, 0xff, v136.l
	v_lshlrev_b16 v132.l, 8, v132.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v132.l, v132.h, v132.l
	v_and_b16 v132.h, 0xff, v136.h
	v_lshrrev_b32_e32 v136, 24, v142
	v_or_b16 v132.h, v132.h, v133.l
	v_lshrrev_b32_e32 v133, 8, v141
	v_and_b16 v133.h, 0xff, v141.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v136.l, 8, v136.l
	v_lshlrev_b16 v133.l, 8, v133.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v133.l, v133.h, v133.l
	v_and_b16 v133.h, 0xff, v141.h
	v_or_b16 v133.h, v133.h, v134.l
	v_lshrrev_b32_e32 v134, 8, v137
	v_and_b16 v134.h, 0xff, v137.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v134.l, 8, v134.l
	v_or_b16 v134.l, v134.h, v134.l
	v_and_b16 v134.h, 0xff, v137.h
	v_lshrrev_b32_e32 v137, 24, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v134.h, v134.h, v135.l
	v_lshrrev_b32_e32 v135, 8, v142
	v_and_b16 v135.h, 0xff, v142.l
	v_lshlrev_b16 v137.l, 8, v137.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v97, v125
	ds_store_b16_d16_hi v97, v125 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v97, v123 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v98, v131
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v97, v131 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v98, v130 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v98, v132 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v99, v130
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v98, v132 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v99, v129 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v99, v133 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v100, v129
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v99, v133 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v100, v128 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v100, v134 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v101, v128
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v100, v134 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v101, v127 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v135.l, 8, v135.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v135.l, v135.h, v135.l
	v_and_b16 v135.h, 0xff, v142.h
	v_or_b16 v135.h, v135.h, v136.l
	v_lshrrev_b32_e32 v136, 8, v138
	v_and_b16 v136.h, 0xff, v138.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v136.l, 8, v136.l
	v_or_b16 v136.l, v136.h, v136.l
	v_and_b16 v136.h, 0xff, v138.h
	v_lshrrev_b32_e32 v138, 24, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v136.h, v136.h, v137.l
	v_lshrrev_b32_e32 v137, 8, v143
	v_and_b16 v137.h, 0xff, v143.l
	v_lshlrev_b16 v138.l, 8, v138.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v137.l, 8, v137.l
	v_or_b16 v137.l, v137.h, v137.l
	v_and_b16 v137.h, 0xff, v143.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v137.h, v137.h, v138.l
	v_lshrrev_b32_e32 v138, 8, v139
	v_and_b16 v138.h, 0xff, v139.l
	v_lshlrev_b16 v139.l, 8, v140.l
	v_lshlrev_b16 v138.l, 8, v138.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v138.l, v138.h, v138.l
	v_and_b16 v138.h, 0xff, v139.h
	v_or_b16 v138.h, v138.h, v139.l
	ds_store_b16 v101, v135 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v102, v127
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v101, v135 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v102, v126 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v102, v136 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v103, v126
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v102, v136 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v103, v124 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v103, v137 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v104, v124
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v103, v137 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v104, v123 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v104, v138 offset:16384
	ds_store_b16_d16_hi v104, v138 offset:16448
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[123:126], v105 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[127:130], v113 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[131:134], v106 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[127:128], v[125:126], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[125:126], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v114 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[127:130], v107 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[133:134], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[133:134], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v115 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[131:134], v108 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[127:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[129:130], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v116 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[127:130], v109 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[133:134], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[133:134], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v117 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[131:134], v110 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[127:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[129:130], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v118 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[127:130], v111 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[133:134], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[133:134], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v119 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[131:134], v112 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[127:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[129:130], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v120 offset1:32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[133:134], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[133:134], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v15, v121, v15 :: v_dual_mul_f32 v32, v122, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v22, v121, v22 :: v_dual_add_nc_u32 v139, v83, v85
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v127, v139, s[8:11], 0 offen
	buffer_load_u16 v128, v139, s[8:11], 0 offen offset:4
	buffer_load_u16 v129, v139, s[8:11], 0 offen offset:8
	buffer_load_u16 v130, v139, s[8:11], 0 offen offset:12
	buffer_load_u16 v135, v139, s[8:11], 0 offen offset:16
	buffer_load_u16 v136, v139, s[8:11], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v21, v121, v21 :: v_dual_add_nc_u32 v140, v83, v84
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x9
	buffer_load_u16 v123, v139, s[8:11], 0 offen offset:24
	buffer_load_u16 v124, v139, s[8:11], 0 offen offset:28
	buffer_load_u16 v125, v140, s[8:11], 0 offen
	buffer_load_u16 v126, v140, s[8:11], 0 offen offset:4
	buffer_load_u16 v131, v140, s[8:11], 0 offen offset:8
	buffer_load_u16 v132, v140, s[8:11], 0 offen offset:12
	buffer_load_u16 v133, v140, s[8:11], 0 offen offset:16
	buffer_load_u16 v134, v140, s[8:11], 0 offen offset:20
	buffer_load_u16 v137, v140, s[8:11], 0 offen offset:24
	buffer_load_u16 v138, v140, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
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
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v39, v122, v39 :: v_dual_add_nc_u32 v84, s34, v84
	v_dual_mul_f32 v40, v122, v40 :: v_dual_add_nc_u32 v85, s34, v85
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v25, v122, v25 :: v_dual_add_nc_u32 v90, s35, v90
	v_dual_mul_f32 v26, v122, v26 :: v_dual_add_nc_u32 v91, s35, v91
	v_dual_mul_f32 v27, v122, v27 :: v_dual_add_nc_u32 v94, s35, v94
	v_dual_mul_f32 v28, v122, v28 :: v_dual_add_nc_u32 v95, s35, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v33, v122, v33
	v_mul_f32_e32 v34, v122, v34
	v_mul_f32_e32 v35, v122, v35
	v_mul_f32_e32 v36, v122, v36
	v_mul_f32_e32 v37, v122, v37
	v_mul_f32_e32 v38, v122, v38
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v31, v122, v31 :: v_dual_mul_f32 v16, v121, v16
	v_dual_mul_f32 v30, v122, v30 :: v_dual_mul_f32 v13, v121, v13
	v_dual_mul_f32 v29, v122, v29 :: v_dual_mul_f32 v14, v121, v14
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v23, v121, v23 :: v_dual_add_nc_u32 v86, 2, v86
	v_dual_mul_f32 v24, v121, v24 :: v_dual_add_nc_u32 v87, 2, v87
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v121, v9 :: v_dual_add_nc_u32 v88, s35, v88
	v_dual_mul_f32 v10, v121, v10 :: v_dual_add_nc_u32 v89, s35, v89
	v_dual_mul_f32 v11, v121, v11 :: v_dual_add_nc_u32 v92, s35, v92
	v_dual_mul_f32 v12, v121, v12 :: v_dual_add_nc_u32 v93, s35, v93
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v121, v17
	v_mul_f32_e32 v18, v121, v18
	v_mul_f32_e32 v19, v121, v19
	v_mul_f32_e32 v20, v121, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v122, 16, v128
	v_lshlrev_b32_e32 v121, 16, v127
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v128, 16, v130
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v50, v34, v122 :: v_dual_lshlrev_b32 v127, 16, v129
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v72, v17, v121 :: v_dual_lshlrev_b32 v129, 16, v135
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v49, v33, v121 :: v_dual_lshlrev_b32 v124, 16, v124
	v_dual_fmac_f32 v73, v18, v122 :: v_dual_lshlrev_b32 v130, 16, v136
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v42, v36, v128 :: v_dual_lshlrev_b32 v133, 16, v133
	v_dual_fmac_f32 v74, v19, v127 :: v_dual_lshlrev_b32 v125, 16, v125
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v51, v35, v127 :: v_dual_lshlrev_b32 v136, 16, v138
	v_dual_fmac_f32 v75, v20, v128 :: v_dual_lshlrev_b32 v126, 16, v126
	v_fmac_f32_e32 v53, v37, v129
	v_dual_fmac_f32 v52, v40, v124 :: v_dual_lshlrev_b32 v135, 16, v137
	v_fmac_f32_e32 v64, v21, v129
	v_dual_fmac_f32 v55, v39, v123 :: v_dual_lshlrev_b32 v132, 16, v132
	v_dual_fmac_f32 v67, v23, v123 :: v_dual_lshlrev_b32 v134, 16, v134
	v_fmac_f32_e32 v54, v38, v130
	v_fmac_f32_e32 v66, v22, v130
	v_dual_fmac_f32 v68, v24, v124 :: v_dual_fmac_f32 v79, v10, v126
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v80, v9, v125 :: v_dual_fmac_f32 v61, v27, v131
	v_dual_fmac_f32 v63, v25, v125 :: v_dual_fmac_f32 v62, v26, v126
	v_dual_fmac_f32 v77, v12, v132 :: v_dual_fmac_f32 v78, v11, v131
	v_dual_fmac_f32 v65, v13, v133 :: v_dual_fmac_f32 v56, v28, v132
	v_fmac_f32_e32 v69, v14, v134
	v_dual_fmac_f32 v71, v15, v135 :: v_dual_fmac_f32 v70, v16, v136
	v_dual_fmac_f32 v57, v29, v133 :: v_dual_fmac_f32 v58, v30, v134
	v_dual_fmac_f32 v59, v31, v135 :: v_dual_fmac_f32 v60, v32, v136
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v76
.LBB0_7:                                ; %._crit_edge
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v79
	v_dual_mul_f32 v12, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v56
	v_dual_mul_f32 v14, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_dual_mul_f32 v2, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v69
	v_mul_f32_e32 v9, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v15, 0xbfb8aa3b, v58 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s0
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v6, v6
	v_mul_f32_e32 v2, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
.Ltmp22:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, 0x600, v1, v47
.Ltmp23:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_ldexp_f32 v3, v4, v3
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v78
	v_ldexp_f32 v5, v6, v5
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v10, 0xbfb8aa3b, v71
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v2, v8
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v6, null, v3, v3, v80
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v4, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, vcc_lo, v80, v3, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v17, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v2, v2, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v7, null, v5, v5, v79
	v_div_scale_f32 v27, s0, v79, v5, v79
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v18, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v4, v4, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v6, v17, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v2, 1.0, v2
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_fmac_f32 v17, v24, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v2, v2, v78
	v_fma_f32 v25, -v7, v18, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v31, null, v4, v4, v77
	v_rcp_f32_e32 v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v18, v25, v18 :: v_dual_mul_f32 v25, v26, v17
	v_div_scale_f32 v29, s2, v78, v2, v78
	v_fma_f32 v24, -v20, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v8, v24, v8
	v_fma_f32 v24, -v6, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v25, v24, v17 :: v_dual_mul_f32 v28, v27, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v6, v25, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v7, v28, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0, 0x42800000, s1
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v17, v25
	v_fmac_f32_e32 v28, v30, v18
	v_rcp_f32_e32 v30, v31
	s_mov_b32 vcc_lo, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v69
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v6, v3, v80
	v_fma_f32 v7, -v7, v28, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v18, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v7, v5, v79
	v_fma_f32 v5, -v31, v30, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v7, v24
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v30, v5, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v5, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v7, v7, v12
	v_exp_f32_e32 v12, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v70
	v_ldexp_f32 v5, v5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v12, v12, v17
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v24, s0, v77, v4, v77
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v18, v18, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v7, v24, v30 :: v_dual_mul_f32 v32, v29, v8
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v5, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v25, v11
	v_div_scale_f32 v9, null, v17, v17, v69
	v_fma_f32 v33, -v20, v32, v29
	v_div_scale_f32 v10, null, v12, v12, v71
	v_fmac_f32_e32 v32, v33, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v10
	v_fma_f32 v20, -v20, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v20, v8, v32
	v_fma_f32 v20, -v31, v7, v24
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v32, s1, v71, v12, v71
	v_div_fixup_f32 v2, v8, v2, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v7, v20, v30 :: v_dual_add_f32 v20, 1.0, v5
	v_fma_f32 v5, -v11, v25, 1.0
	v_fma_f32 v8, -v31, v7, v24
	v_rcp_f32_e32 v24, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, v20, v20, v70
	v_fmac_f32_e32 v25, v5, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v7, v8, v30, v7
	v_div_scale_f32 v28, vcc_lo, v65, v18, v65
	v_rcp_f32_e32 v29, v27
	v_div_scale_f32 v31, s0, v69, v17, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v5, -v9, v24, 1.0
	v_div_fixup_f32 v4, v7, v4, v77
	v_fma_f32 v7, -v10, v26, 1.0
	v_mul_f32_e32 v30, v28, v25
	v_div_scale_f32 v35, s2, v70, v20, v70
	v_fmac_f32_e32 v24, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, v7, v26
	v_fma_f32 v7, -v27, v29, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v75, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v4, -v11, v30, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v33, v31, v24 :: v_dual_mul_f32 v34, v32, v26
	v_fmac_f32_e32 v29, v7, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v74, v2 :: v_dual_fmac_f32 v30, v4, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v2, -v9, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v10, v34, v32
	v_mul_f32_e32 v36, v35, v29
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v73, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v11, v30, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v2, v24 :: v_dual_fmac_f32 v34, v4, v26
	v_fma_f32 v2, -v27, v36, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v6, v25, v30
	v_fma_f32 v6, -v9, v33, v31
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v36, v2, v29
	v_fma_f32 v2, -v10, v34, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v24, v33
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v9, -v27, v36, v35
	v_div_fmas_f32 v2, v2, v26, v34
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v6, v17, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v9, v29, v36
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v72, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v2, v12, v71
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v67, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v2, v10, v20, v70
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v11, v11
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v4, v18, v65
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v17, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_ldexp_f32 v10, v11, v10
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v57 :: v_dual_add_f32 v10, 1.0, v10
	v_ldexp_f32 v16, v17, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v19, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v60
	v_ldexp_f32 v17, v19, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v10, v10, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v66, v6 :: v_dual_add_f32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v13, v19
	v_fma_f32 v25, -v19, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v25, v13 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v62
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v18, v12
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v12, v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v14, null, v11, v11, v62
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v59
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, null, v12, v12, v61
	v_rcp_f32_e32 v24, v14
	v_div_scale_f32 v28, vcc_lo, v63, v10, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v21, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v25, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v15, v18, v15
	v_ldexp_f32 v18, v23, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v27, -v14, v24, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v20, v21, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v21, v28, v13
	v_fma_f32 v23, -v26, v25, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v32, null, v18, v18, v60
	v_fma_f32 v29, -v19, v21, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v23, v25
	v_div_scale_f32 v23, s1, v61, v12, v61
	v_rcp_f32_e32 v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v2, v68, v2 :: v_dual_fmac_f32 v21, v29, v13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v29, v23, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v19, -v19, v21, v28
	v_fma_f32 v38, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v19, v13, v21
	v_div_scale_f32 v19, null, v17, v17, v57
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v60, v18, v60
	v_fmac_f32_e32 v24, v27, v24
	v_div_scale_f32 v27, s0, v62, v11, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v38, v34
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v22, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v14, v22, v27
	v_fmac_f32_e32 v22, v30, v24
	v_div_scale_f32 v30, null, v16, v16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v14, v22, v27
	v_fma_f32 v27, -v26, v29, v23
	v_rcp_f32_e32 v28, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v24, v22
	v_fmac_f32_e32 v29, v27, v25
	v_rcp_f32_e32 v24, v19
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v14, v11, v62
	v_fma_f32 v22, -v26, v29, v23
	v_div_scale_f32 v23, null, v15, v15, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v30, v28, 1.0
	v_div_fmas_f32 v22, v22, v25, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v23
	v_fma_f32 v25, -v19, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, s1, v57, v17, v57
	v_fma_f32 v33, -v23, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v37, v25, v24
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v33, s2, v58, v15, v58
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v39, v33, v26
	v_div_fixup_f32 v22, v22, v12, v61
	v_fmac_f32_e32 v28, v21, v28
	v_div_scale_f32 v21, s0, v56, v16, v56
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v31, v21, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v30, v31, v21
	v_fmac_f32_e32 v31, v35, v28
	v_fma_f32 v35, -v19, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v30, v31, v21
	v_fmac_f32_e32 v37, v35, v24
	v_fma_f32 v30, -v23, v39, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v28, v31
	v_fma_f32 v19, -v19, v37, v25
	v_fma_f32 v25, -v32, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v39, v30, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v41, v25, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, v20, v20, v59
	v_fma_f32 v23, -v23, v39, v33
	v_div_fmas_f32 v19, v19, v24, v37
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v25, -v32, v41, v38
	v_div_fmas_f32 v23, v23, v26, v39
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v26, v64, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v13, v10, v63
	v_div_fixup_f32 v13, v19, v17, v57
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v51, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v12, v23, v15, v58
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v23, 7, v48
.Ltmp25:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v49, v4
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v36, -v27, v29, 1.0
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, |v9|, |v8|, |v7|
.Ltmp27:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v12, v54, v12 :: v_dual_mul_f32 v13, v53, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v36, s3, v59, v20, v59
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v29
	v_fma_f32 v35, -v27, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v35, v29
	v_fma_f32 v24, -v27, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v29, v40
	s_mov_b32 vcc_lo, s4
	s_mov_b32 s4, 0x76543210
	v_div_fmas_f32 v25, v25, v34, v41
	v_div_fixup_f32 v11, v24, v20, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v25, v18, v60
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v18, v50, v14 :: v_dual_mul_f32 v11, v55, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v15, v21, v16, v56
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v16, |v3|, |v2|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v20, |v19|, |v18|, |v17|
.Ltmp29:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v42, v15
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v15, |v5|, |v26|, |v6|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v21, |v14|, |v13|, |v12|
	v_max3_f32 v15, v4, v15, v16
.Ltmp31:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v52, v10
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 3, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v22, |v11|, |v10|
	v_max3_f32 v16, v20, v21, v22
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v20, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v22, 2, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v21, v16, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v24, v4, v22
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v20
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v20, v43, 2, v4
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v21
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v21, 0, v23, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v20, v20, v22, 0
	ds_store_b64 v21, v[15:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v21, v16
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v16, v21
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v16, v16, v21
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v15, v15, v20 :: v_dual_max_f32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v20, v15 :: v_dual_add_nc_u32 v21, 0, v4
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v15, v15, v20 :: v_dual_add_nc_u32 v20, 0, v22
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v20, v[15:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v21
.Ltmp59:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v15, 0x2b8cbccc, v15 :: v_dual_max_f32 v16, 0x2b8cbccc, v16
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v15, 0x40e00000, v15
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	v_rcp_f32_e32 v22, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v23
	v_div_fixup_f32 v15, v20, 0x40e00000, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v24, v22, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v21, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v22, v20, v22
	v_div_scale_f32 v20, vcc_lo, v16, 0x40e00000, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v15, v15, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v21, v20, v22
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v24, v21, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v23, v23, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v21, v25, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v28, null, v23, v23, v7
	v_rcp_f32_e32 v25, v27
	v_div_scale_f32 v34, null, v23, v23, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v24, v21, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v24, null, v23, v23, v8
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, null, v23, v23, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v22, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v27, v25, 1.0
	v_rcp_f32_e32 v22, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v16, v20, 0x40e00000, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v21, v25
	v_rcp_f32_e32 v20, v28
	v_div_scale_f32 v21, vcc_lo, v9, v23, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v30, v16, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v24, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v21, v25
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v30, v16, v30, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v28, v20, 1.0
	v_fma_f32 v33, -v27, v31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v32, v20 :: v_dual_fmac_f32 v31, v33, v25
	v_div_scale_f32 v32, s1, v7, v23, v7
	v_fmac_f32_e32 v22, v29, v22
	v_div_scale_f32 v29, s0, v8, v23, v8
	v_mul_f32_e32 v33, v32, v20
	v_fma_f32 v21, -v27, v31, v21
	v_fma_f32 v27, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v29, v22
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0xffff0000, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v25, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v27, v36
	v_fma_f32 v16, -v24, v35, v29
	v_div_scale_f32 v25, s2, v5, v23, v5
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v21, v23, v9
	v_fmac_f32_e32 v35, v16, v22
	v_fma_f32 v16, -v28, v33, v32
	v_mul_f32_e32 v27, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v24, v35, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v16, v20
	v_rcp_f32_e32 v16, v38
	v_fma_f32 v31, -v34, v27, v25
	v_fmac_f32_e32 v27, v31, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v38, v16, 1.0
	v_fmac_f32_e32 v16, v29, v16
	v_div_fmas_f32 v22, v24, v22, v35
	v_fma_f32 v24, -v28, v33, v32
	v_div_scale_f32 v28, null, v23, v23, v6
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v29, s0, v26, v23, v26
	v_div_fmas_f32 v20, v24, v20, v33
	v_rcp_f32_e32 v24, v28
	v_div_fixup_f32 v8, v22, v23, v8
	v_fma_f32 v22, -v34, v27, v25
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v20, v23, v7
	v_mul_f32_e32 v20, v29, v16
	v_div_scale_f32 v25, null, v23, v23, v3
	v_div_fmas_f32 v22, v22, v36, v27
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v21, -v28, v24, 1.0
	v_fma_f32 v31, -v38, v20, v29
	v_rcp_f32_e32 v32, v25
	v_div_fixup_f32 v5, v22, v23, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, s1, v6, v23, v6
	v_fmac_f32_e32 v20, v31, v16
	v_div_scale_f32 v31, null, v23, v23, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v27, v21, v24
	v_fma_f32 v33, -v25, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v38, v20, v29
	v_rcp_f32_e32 v34, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v28, v27, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v16, v22, v16, v20
	v_div_scale_f32 v20, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v29, v24
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v16, v23, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v29, v20
	v_fma_f32 v26, -v31, v34, 1.0
	v_fma_f32 v21, -v28, v27, v21
	v_div_scale_f32 v22, s0, v3, v23, v3
	v_div_scale_f32 v38, s1, v19, v37, v19
	v_fmac_f32_e32 v34, v26, v34
	v_div_scale_f32 v26, s2, v2, v23, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v20, v29, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v29, v35, v29
	v_div_fmas_f32 v21, v21, v24, v27
	v_dual_mul_f32 v27, v26, v34 :: v_dual_fmac_f32 v32, v33, v32
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v38, v29
	v_div_fixup_f32 v6, v21, v23, v6
	v_div_scale_f32 v33, null, v37, v37, v18
	v_mul_f32_e32 v28, v22, v32
	v_div_scale_f32 v35, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v25, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v40, v35
	v_fmac_f32_e32 v28, v24, v32
	v_fma_f32 v24, -v31, v27, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v33, v36, 1.0
	v_fma_f32 v21, -v25, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v24, v34
	v_fma_f32 v22, -v20, v41, v38
	v_fma_f32 v25, -v35, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v31, v27, v26
	v_fmac_f32_e32 v41, v22, v29
	v_div_fmas_f32 v21, v21, v32, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v32, null, v37, v37, v10
	v_div_fmas_f32 v26, v26, v34, v27
	v_div_scale_f32 v27, null, v37, v37, v14
	v_div_fixup_f32 v3, v21, v23, v3
	v_fma_f32 v20, -v20, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v2, v26, v23, v2
	v_rcp_f32_e32 v31, v27
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v21, null, v37, v37, v13
	v_div_fmas_f32 v20, v20, v29, v41
	v_rcp_f32_e32 v34, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v19, v20, v37, v19
	v_fma_f32 v23, -v27, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v31, v23, v31
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s3, v18, v37, v18
	v_fmac_f32_e32 v40, v25, v40
	v_div_scale_f32 v25, s0, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, v39, v36
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v23, null, v37, v37, v12
	v_fma_f32 v22, -v33, v24, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v23
	v_fmac_f32_e32 v24, v22, v36
	v_mul_f32_e32 v22, v25, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v33, v24, v39
	v_fma_f32 v29, -v35, v22, v25
	v_fma_f32 v39, -v32, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v23, v26, 1.0
	v_div_fmas_f32 v24, v28, v36, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v29, v40
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v39, v34
	v_div_scale_f32 v39, s3, v10, v37, v10
	v_fma_f32 v20, -v35, v22, v25
	v_div_fixup_f32 v18, v24, v37, v18
	v_div_scale_f32 v24, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v40, v22
	v_div_scale_f32 v25, vcc_lo, v14, v37, v14
	v_rcp_f32_e32 v22, v21
	v_rcp_f32_e32 v28, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v20, v37, v17
	v_mul_f32_e32 v29, v25, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v27, v29, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v21, v22, 1.0
	v_fma_f32 v36, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v29, v35, v31 :: v_dual_fmac_f32 v22, v20, v22
	v_div_scale_f32 v20, s0, v13, v37, v13
	v_fma_f32 v25, -v27, v29, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v20, v22
	v_div_fmas_f32 v25, v25, v31, v29
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v35, -v21, v38, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v14, v25, v37, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v35, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v21, v38, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v42, v39, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v22, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v2, v2, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v36, s2, v11, v37, v11
	v_div_fixup_f32 v13, v20, v37, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v20, v5
	v_and_b32_e32 v5, 15, v9
	v_and_b32_e32 v9, 15, v16
	v_and_b32_e32 v16, 15, v19
	v_and_b32_e32 v19, 15, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v26, v33, v26 :: v_dual_mul_f32 v41, v36, v28
	v_div_scale_f32 v33, s1, v12, v37, v12
	v_fma_f32 v21, -v32, v42, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v24, v41, v36
	v_mul_f32_e32 v40, v33, v26
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v42, v21, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v2, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v35, v28
	v_fma_f32 v27, -v23, v40, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v14, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v24, v41, v36
	v_fmac_f32_e32 v40, v27, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 0x60, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v23, v40, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v26, v40
	s_mov_b32 vcc_lo, s2
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v26, 7, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v28, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v22, v37, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v17
	v_and_b32_e32 v7, 15, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v21, v37, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v22
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	s_mov_b32 s2, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v24, v11
	v_and_b32_e32 v11, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v1, v1, v3
	v_lshlrev_b32_e32 v3, 7, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v23, -v32, v42, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v23, v23, v34, v42
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v20
	v_and_b32_e32 v20, 15, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v10, v23, v37, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v12
	v_and_b32_e32 v12, 15, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 11, v0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v13.h, 0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v13.l, v15.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x3000, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v10
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v21, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v2, v26, v1
	v_xad_u32 v2, v3, v46, 0
	ds_store_b128 v1, v[5:8]
	ds_store_b128 v1, v[16:19] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v2
	ds_load_b128 v[16:19], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[9:12]
	ds_store_b128 v1, v[20:23] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[20:23], v2 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v30.h
	v_mov_b16_e32 v2.h, v13.h
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v3, s30, v45
	v_lshl_or_b32 v1, s28, 7, v4
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v3, s0, v[1:2]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v18, 4, v7
	v_lshl_or_b32 v8, v19, 4, v8
	v_lshl_or_b32 v6, v17, 4, v6
	v_lshl_or_b32 v5, v16, 4, v5
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v13, v2, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v7.l
	v_lshlrev_b16 v1.l, 8, v8.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v11, v22, 4, v11
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v23, 4, v12
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v6, v0, 31, s30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v5.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v20, 4, v9
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v6, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v21, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v9.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s28, 1
	v_cndmask_b32_e32 v1, v7, v13, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_mov_b32 s0, s12
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp60:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
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
		.amdhsa_next_free_vgpr 146
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
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 146
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
; codeLenInByte = 12204
; TotalNumSgprs: 46
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 146
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
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
    .vgpr_count:     146
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
