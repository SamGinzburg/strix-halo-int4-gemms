	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v48, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v43, 15, v0
	v_lshrrev_b32_e32 v50, 1, v0
	v_lshlrev_b32_e32 v52, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v51, 2, v48
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
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
	s_sub_i32 s4, s2, s4
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
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_mul_hi_u32 s2, s9, s8
	s_xor_b32 s8, s4, s6
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s16, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s17, s2, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s18, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s28, s17, s16
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s28, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v3, 2, v48
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v49, 7, v0
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v45, 0x1f0, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v44, 0x100, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v46, 4, v43
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v47, 16, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v36, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v44
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v6, 56, v50
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v5, 3, v0
	v_and_b32_e32 v12, 56, v52
	v_lshrrev_b32_e32 v2, 3, v45
	v_lshlrev_b32_e32 v1, 3, v49
	v_lshlrev_b32_e32 v16, 5, v48
	v_xor_b32_e32 v6, v5, v6
	v_lshlrev_b32_e32 v5, 6, v43
	v_xor_b32_e32 v12, v12, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s30, v3, v43
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp18:
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s21, s18, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_xor_b32_e32 v7, v1, v2
	v_and_or_b32 v14, 0x438, v52, v5
	v_or3_b32 v12, v12, v16, v5
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v5, s3, v2
	v_sub_nc_u32_e32 v54, s21, v2
	v_add_nc_u32_e32 v2, 32, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v30, s3, v1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s31, s2, 8
.Ltmp24:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v34, s17, 9, v48
	v_mul_lo_u32 v2, s31, v2
	v_mul_lo_u32 v3, s31, v3
	v_add_nc_u32_e32 v33, 64, v30
	s_lshl_b32 s20, s16, 9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 3, v0
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v30, 3, v47
	v_subrev_nc_u32_e32 v56, s20, v34
	s_lshl_b32 s20, s17, 8
	v_add_nc_u32_e32 v32, 64, v5
	v_cmp_gt_i32_e64 s1, 0x80, v33
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v57, 1, v2
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v58, 1, v3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v33, 0x41, v5
	v_mad_u64_u32 v[2:3], null, s29, v5, s[20:21]
	v_lshl_or_b32 v7, v43, 10, v7
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v55, 2, v30
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v30, s30, v4
	v_mad_u64_u32 v[3:4], null, s29, v32, s[20:21]
	v_cmp_gt_i32_e64 s0, 0x80, v5
	v_mad_u64_u32 v[4:5], null, s29, v33, s[20:21]
	v_xor_b32_e32 v8, 0x88, v7
	v_sub_nc_u32_e32 v53, s21, v1
	v_mad_u64_u32 v[41:42], null, s21, v30, v[1:2]
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v1, s29, v2
	v_xor_b32_e32 v9, 0x110, v7
	v_xor_b32_e32 v10, 0x198, v7
	v_xor_b32_e32 v11, 0x220, v7
	v_xor_b32_e32 v13, 0x2a8, v7
	v_xor_b32_e32 v15, 0x330, v7
	v_xor_b32_e32 v17, 0x3b8, v7
	v_xor_b32_e32 v18, 8, v14
	v_xor_b32_e32 v19, 16, v14
	v_xor_b32_e32 v20, 24, v14
	v_xor_b32_e32 v16, 32, v14
	v_xor_b32_e32 v21, 40, v14
	v_xor_b32_e32 v22, 48, v14
	v_xor_b32_e32 v23, 56, v14
	v_xor_b32_e32 v24, 8, v12
	v_xor_b32_e32 v25, 16, v12
	v_xor_b32_e32 v26, 24, v12
	v_xor_b32_e32 v27, 32, v12
	v_xor_b32_e32 v28, 40, v12
	v_xor_b32_e32 v29, 48, v12
	v_xor_b32_e32 v31, 56, v12
	s_add_i32 s34, s3, 64
	s_lshl_b32 s3, s16, 8
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v68, 0, v6
	v_subrev_nc_u32_e32 v42, s3, v3
	v_subrev_nc_u32_e32 v59, s3, v4
	v_subrev_nc_u32_e32 v60, s3, v2
	v_subrev_nc_u32_e32 v62, s3, v1
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v69, 0, v7
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v70, 0, v8
	v_dual_mov_b32 v1, s36 :: v_dual_add_nc_u32 v72, 0, v9
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v74, 0, v10
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v76, 0, v11
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v78, 0, v13
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v80, 0, v15
	v_mov_b32_e32 v99, 0
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v81, 0, v17
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v82, 0, v14
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v83, 0, v18
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v84, 0, v19
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v86, 0, v20
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v88, 0, v16
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v90, 0, v21
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v92, 0, v22
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v94, 0, v23
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v95, 0, v12
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v96, 0, v24
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v97, 0, v25
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v98, 0, v26
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v100, 0, v27
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v102, 0, v28
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v104, 0, v29
	v_dual_mov_b32 v2, s37 :: v_dual_add_nc_u32 v111, 0, v31
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_mov_b32_e32 v5, s40
	v_cmp_gt_i32_e64 s2, 0x80, v32
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v63, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s33, s29, 1
	s_lshl_b32 s35, s29, 7
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
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s5, s34, 64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v11, s34, v41
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v54
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v46, v60
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s5, v53
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v46, v62
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v12, 64, v11
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s34, v53
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v13, 0x80000000, v10, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v17, 0x80000000, v12, s5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v120, v58, s[16:19], 0 offen
	buffer_load_u16 v119, v57, s[16:19], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v19, 0x80000000, v11, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[17:18], v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s34, v54
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[129:130], v19, s[20:23], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s31, s31, -1
	s_addk_i32 s34, 0x80
	v_add_nc_u32_e32 v57, 2, v57
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v58, 2, v58
	v_add_nc_u32_e32 v60, s35, v60
	v_add_nc_u32_e32 v62, s35, v62
	s_cmp_lg_u32 s31, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v20, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v21, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v22, v16, v12, 0x5010400
	v_perm_b32 v23, v16, v12, 0x7030602
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v68, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v16, 8, v19
	v_lshrrev_b32_e32 v17, 24, v19
	v_lshrrev_b32_e32 v18, 8, v13
	v_and_b16 v9.l, 0xff, v19.l
	v_and_b16 v9.h, 0xff, v19.h
	v_and_b16 v10.l, 0xff, v13.l
	v_lshrrev_b32_e32 v19, 24, v13
	v_and_b16 v10.h, 0xff, v13.h
	v_lshrrev_b32_e32 v24, 8, v20
	v_and_b16 v11.l, 0xff, v20.l
	v_lshrrev_b32_e32 v25, 24, v20
	v_and_b16 v11.h, 0xff, v20.h
	v_lshrrev_b32_e32 v20, 8, v14
	v_and_b16 v12.l, 0xff, v14.l
	v_lshrrev_b32_e32 v26, 24, v14
	v_and_b16 v12.h, 0xff, v14.h
	v_lshrrev_b32_e32 v27, 8, v21
	v_and_b16 v13.l, 0xff, v21.l
	v_lshrrev_b32_e32 v28, 24, v21
	v_and_b16 v13.h, 0xff, v21.h
	v_lshrrev_b32_e32 v21, 8, v15
	v_and_b16 v14.l, 0xff, v15.l
	v_lshrrev_b32_e32 v29, 24, v15
	v_and_b16 v14.h, 0xff, v15.h
	v_lshlrev_b16 v15.l, 8, v16.l
	v_lshlrev_b16 v15.h, 8, v17.l
	v_lshlrev_b16 v16.l, 8, v18.l
	v_lshrrev_b32_e32 v30, 8, v22
	v_lshrrev_b32_e32 v31, 24, v22
	v_or_b16 v9.l, v9.l, v15.l
	v_and_b16 v15.l, 0xff, v22.l
	v_or_b16 v9.h, v9.h, v15.h
	v_and_b16 v15.h, 0xff, v22.h
	v_or_b16 v10.l, v10.l, v16.l
	v_lshrrev_b32_e32 v22, 8, v23
	v_lshlrev_b16 v16.l, 8, v19.l
	v_lshlrev_b16 v16.h, 8, v24.l
	v_lshrrev_b32_e32 v24, 24, v23
	v_lshlrev_b16 v17.l, 8, v25.l
	v_lshlrev_b16 v17.h, 8, v20.l
	v_or_b16 v10.h, v10.h, v16.l
	v_and_b16 v16.l, 0xff, v23.l
	v_or_b16 v11.l, v11.l, v16.h
	v_and_b16 v16.h, 0xff, v23.h
	v_lshlrev_b16 v18.l, 8, v26.l
	v_lshlrev_b16 v18.h, 8, v27.l
	v_lshlrev_b16 v19.l, 8, v28.l
	v_lshlrev_b16 v19.h, 8, v21.l
	v_lshlrev_b16 v20.l, 8, v29.l
	v_lshlrev_b16 v20.h, 8, v30.l
	v_lshlrev_b16 v21.l, 8, v31.l
	v_lshlrev_b16 v21.h, 8, v22.l
	v_lshlrev_b16 v22.l, 8, v24.l
	v_or_b16 v11.h, v11.h, v17.l
	v_or_b16 v12.l, v12.l, v17.h
	v_or_b16 v12.h, v12.h, v18.l
	v_or_b16 v13.l, v13.l, v18.h
	v_or_b16 v13.h, v13.h, v19.l
	v_or_b16 v14.l, v14.l, v19.h
	v_or_b16 v14.h, v14.h, v20.l
	v_or_b16 v15.l, v15.l, v20.h
	v_or_b16 v15.h, v15.h, v21.l
	v_or_b16 v16.l, v16.l, v21.h
	v_or_b16 v16.h, v16.h, v22.l
	ds_store_b16 v69, v9
	ds_store_b16_d16_hi v69, v9 offset:64
	ds_store_b16 v70, v10
	ds_store_b16_d16_hi v70, v10 offset:64
	ds_store_b16 v72, v11
	ds_store_b16_d16_hi v72, v11 offset:64
	ds_store_b16 v74, v12
	ds_store_b16_d16_hi v74, v12 offset:64
	ds_store_b16 v76, v13
	ds_store_b16_d16_hi v76, v13 offset:64
	ds_store_b16 v78, v14
	ds_store_b16_d16_hi v78, v14 offset:64
	ds_store_b16 v80, v15
	ds_store_b16_d16_hi v80, v15 offset:64
	ds_store_b16 v81, v16
	ds_store_b16_d16_hi v81, v16 offset:64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[121:124], v82 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v95 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v83 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v96 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v84 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v97 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v86 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v98 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v88 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v100 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v90 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v102 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v92 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v104 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v94 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v111 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v121, v46, v42
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v122, v46, v59
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v42, s35, v42
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v121, 0x80000000, v121, s3
	v_cndmask_b32_e64 v125, 0x80000000, v122, s3
	s_clause 0x1
	buffer_load_b128 v[121:124], v121, s[24:27], 0 offen
	buffer_load_b128 v[125:128], v125, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v68, v[129:130] offset:16384
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v59, s35, v59
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v125, v121, 0x5010400
	v_perm_b32 v125, v125, v121, 0x7030602
	v_perm_b32 v132, v126, v122, 0x5010400
	v_perm_b32 v126, v126, v122, 0x7030602
	v_perm_b32 v133, v127, v123, 0x5010400
	v_lshrrev_b32_e32 v121, 8, v131
	v_and_b16 v121.h, 0xff, v131.l
	v_lshrrev_b32_e32 v122, 24, v131
	v_perm_b32 v127, v127, v123, 0x7030602
	v_lshrrev_b32_e32 v123, 24, v125
	v_lshlrev_b16 v121.l, 8, v121.l
	v_perm_b32 v134, v128, v124, 0x5010400
	v_lshlrev_b16 v122.l, 8, v122.l
	v_perm_b32 v135, v128, v124, 0x7030602
	v_lshlrev_b16 v123.l, 8, v123.l
	v_or_b16 v121.l, v121.h, v121.l
	v_and_b16 v121.h, 0xff, v131.h
	v_lshrrev_b32_e32 v124, 24, v132
	v_lshrrev_b32_e32 v128, 24, v127
	v_lshrrev_b32_e32 v129, 24, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v121.h, v121.h, v122.l
	v_lshrrev_b32_e32 v122, 8, v125
	v_and_b16 v122.h, 0xff, v125.l
	v_lshlrev_b16 v124.l, 8, v124.l
	v_lshlrev_b16 v129.l, 8, v129.l
	v_lshlrev_b16 v122.l, 8, v122.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v122.l, v122.h, v122.l
	v_and_b16 v122.h, 0xff, v125.h
	v_lshrrev_b32_e32 v125, 24, v126
	v_or_b16 v122.h, v122.h, v123.l
	v_lshrrev_b32_e32 v123, 8, v132
	v_and_b16 v123.h, 0xff, v132.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v125.l, 8, v125.l
	v_lshlrev_b16 v123.l, 8, v123.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v123.l, v123.h, v123.l
	v_and_b16 v123.h, 0xff, v132.h
	v_or_b16 v123.h, v123.h, v124.l
	v_lshrrev_b32_e32 v124, 8, v126
	v_and_b16 v124.h, 0xff, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v124.l, 8, v124.l
	v_or_b16 v124.l, v124.h, v124.l
	v_and_b16 v124.h, 0xff, v126.h
	v_lshrrev_b32_e32 v126, 24, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v124.h, v124.h, v125.l
	v_lshrrev_b32_e32 v125, 8, v133
	v_and_b16 v125.h, 0xff, v133.l
	v_lshlrev_b16 v126.l, 8, v126.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v125.l, 8, v125.l
	v_or_b16 v125.l, v125.h, v125.l
	v_and_b16 v125.h, 0xff, v133.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v125.h, v125.h, v126.l
	v_lshrrev_b32_e32 v126, 8, v127
	v_and_b16 v126.h, 0xff, v127.l
	v_lshlrev_b16 v127.l, 8, v128.l
	v_lshrrev_b32_e32 v128, 24, v134
	v_lshlrev_b16 v126.l, 8, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v126.l, v126.h, v126.l
	v_and_b16 v126.h, 0xff, v127.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v126.h, v126.h, v127.l
	v_lshrrev_b32_e32 v127, 8, v134
	v_and_b16 v127.h, 0xff, v134.l
	v_lshlrev_b16 v127.l, 8, v127.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v127.l, v127.h, v127.l
	v_and_b16 v127.h, 0xff, v134.h
	v_or_b16 v127.h, v127.h, v128.l
	v_lshrrev_b32_e32 v128, 8, v135
	v_and_b16 v128.h, 0xff, v135.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v128.l, v128.h, v128.l
	v_and_b16 v128.h, 0xff, v135.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v128.h, v128.h, v129.l
	ds_store_b16 v69, v121
	ds_store_b16_d16_hi v69, v121 offset:64
	ds_store_b16 v70, v122
	ds_store_b16_d16_hi v70, v122 offset:64
	ds_store_b16 v72, v123
	ds_store_b16_d16_hi v72, v123 offset:64
	ds_store_b16 v74, v124
	ds_store_b16_d16_hi v74, v124 offset:64
	ds_store_b16 v76, v125
	ds_store_b16_d16_hi v76, v125 offset:64
	ds_store_b16 v78, v126
	ds_store_b16_d16_hi v78, v126 offset:64
	ds_store_b16 v80, v127
	ds_store_b16_d16_hi v80, v127 offset:64
	ds_store_b16 v81, v128
	ds_store_b16_d16_hi v81, v128 offset:64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[121:124], v82 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v95 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v83 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v96 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v84 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v97 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v86 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v98 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v88 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v100 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v90 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v102 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v92 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v104 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v94 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v111 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[123:124], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v124, v34
	v_cvt_f32_i32_e32 v122, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v40, v17
	v_cvt_f32_i32_e32 v38, v19
	v_cvt_f32_i32_e32 v17, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v23, v55, v56
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v123, v33
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v39, v18
	v_cvt_f32_i32_e32 v18, v24
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v24, v23, s[8:11], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v19, 16, v120
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v20
	v_cvt_f32_i32_e32 v20, v22
	v_mul_f32_e32 v22, v19, v123
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v56, s33, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v61, v22, v24 :: v_dual_lshlrev_b32 v22, 16, v119
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v22, v40
	v_mul_f32_e32 v21, v22, v21
	v_mul_f32_e32 v20, v22, v20
	v_mul_f32_e32 v37, v22, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, v22, v18 :: v_dual_fmac_f32 v99, v40, v24
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v40, v23, s[8:11], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v19, v124
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v118, v24, v40
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v22, v39
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v39, v23, s[8:11], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v36, v19, v36
	v_mul_f32_e32 v35, v19, v35
	v_mul_f32_e32 v33, v19, v33
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v93, v24, v40 :: v_dual_mul_f32 v24, v19, v122
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v34, v19, v34
	v_mul_f32_e32 v25, v19, v25
	v_mul_f32_e32 v26, v19, v26
	v_mul_f32_e32 v27, v19, v27
	v_mul_f32_e32 v28, v19, v28
	v_mul_f32_e32 v29, v19, v29
	v_mul_f32_e32 v30, v19, v30
	v_mul_f32_e32 v31, v19, v31
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v117, v24, v39 :: v_dual_mul_f32 v24, v22, v38
	v_fmac_f32_e32 v91, v24, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v24, v23, s[8:11], 0 offen offset:12
	buffer_load_u16 v38, v23, s[8:11], 0 offen offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v39, v19, v121
	v_mul_f32_e32 v19, v19, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v37, v24 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_fmac_f32 v116, v39, v24 :: v_dual_fmac_f32 v115, v36, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v39, v23, s[8:11], 0 offen offset:20
	buffer_load_u16 v36, v23, s[8:11], 0 offen offset:256
	buffer_load_u16 v24, v23, s[8:11], 0 offen offset:24
	buffer_load_u16 v37, v23, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v22, v17
	v_mul_f32_e32 v9, v22, v9
	v_mul_f32_e32 v11, v22, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v87, v21, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v21, v23, s[8:11], 0 offen offset:260
	buffer_load_u16 v38, v23, s[8:11], 0 offen offset:264
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v22, v10
	v_mul_f32_e32 v12, v22, v12
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v114, v35, v39
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v35, v23, s[8:11], 0 offen offset:268
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v85, v20, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v20, v23, s[8:11], 0 offen offset:272
	buffer_load_u16 v39, v23, s[8:11], 0 offen offset:276
	buffer_load_u16 v32, v23, s[8:11], 0 offen offset:280
	buffer_load_u16 v23, v23, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v13, v22, v13
	v_mul_f32_e32 v14, v22, v14
	v_mul_f32_e32 v15, v22, v15
	v_mul_f32_e32 v16, v22, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v22, 16, v24
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v79, v17, v22 :: v_dual_lshlrev_b32 v36, 16, v36
	v_fmac_f32_e32 v112, v34, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v75, v9, v36
	v_fmac_f32_e32 v113, v33, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v37, 16, v38
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v18, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v110, v25, v36 :: v_dual_fmac_f32 v109, v26, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v38, 16, v39
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v108, v27, v37 :: v_dual_lshlrev_b32 v23, 16, v23
	v_dual_fmac_f32 v107, v28, v35 :: v_dual_fmac_f32 v106, v29, v20
	v_dual_fmac_f32 v105, v30, v38 :: v_dual_fmac_f32 v66, v13, v20
	v_fmac_f32_e32 v103, v31, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v101, v19, v23
	v_dual_fmac_f32 v73, v10, v21 :: v_dual_fmac_f32 v64, v15, v32
	v_fmac_f32_e32 v71, v11, v37
	v_fmac_f32_e32 v67, v12, v35
	v_fmac_f32_e32 v65, v14, v38
	v_fmac_f32_e32 v63, v16, v23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v19, v91, v91 :: v_dual_max_f32 v20, v89, v89
	v_dual_max_f32 v21, v87, v87 :: v_dual_max_f32 v22, v85, v85
	v_dual_max_f32 v3, v117, v117 :: v_dual_max_f32 v4, v116, v116
	v_dual_max_f32 v5, v115, v115 :: v_dual_max_f32 v6, v114, v114
	v_max_f32_e32 v7, v113, v113
	v_dual_max_f32 v15, v103, v103 :: v_dual_max_f32 v16, v101, v101
	v_dual_max_f32 v38, 0, v19 :: v_dual_max_f32 v39, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v40, 0, v22
	v_dual_max_f32 v19, v79, v79 :: v_dual_max_f32 v20, v77, v77
	v_dual_max_f32 v22, v75, v75 :: v_dual_max_f32 v23, v73, v73
	v_dual_max_f32 v24, v71, v71 :: v_dual_max_f32 v1, v61, v61
	v_max_f32_e32 v2, v118, v118
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, v112, v112 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v109, v109 :: v_dual_max_f32 v9, v110, v110
	v_dual_max_f32 v12, v107, v107 :: v_dual_max_f32 v11, v108, v108
	v_dual_max_f32 v13, v106, v106 :: v_dual_max_f32 v14, v105, v105
	v_max_f32_e32 v17, v99, v99
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, v93, v93
	v_dual_max_f32 v41, 0, v19 :: v_dual_max_f32 v42, 0, v20
	v_dual_max_f32 v53, 0, v22 :: v_dual_max_f32 v54, 0, v23
	v_max_f32_e32 v55, 0, v24
	v_dual_max_f32 v19, v67, v67 :: v_dual_max_f32 v20, v66, v66
	v_dual_max_f32 v22, v65, v65 :: v_dual_max_f32 v23, v64, v64
	v_dual_max_f32 v24, v63, v63 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v6, 0, v6
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_max_f32_e32 v16, 0, v16
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v56, 0, v19 :: v_dual_mul_f32 v37, v1, v1
	v_dual_max_f32 v57, 0, v20 :: v_dual_max_f32 v58, 0, v22
	v_dual_max_f32 v59, 0, v23 :: v_dual_max_f32 v60, 0, v24
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v35, v3, v3 :: v_dual_mul_f32 v36, v2, v2
	v_dual_mul_f32 v33, v5, v5 :: v_dual_mul_f32 v34, v4, v4
	v_dual_mul_f32 v31, v7, v7 :: v_dual_mul_f32 v32, v6, v6
	v_dual_mul_f32 v29, v9, v9 :: v_dual_mul_f32 v30, v8, v8
	v_dual_mul_f32 v27, v11, v11 :: v_dual_mul_f32 v28, v10, v10
	v_dual_mul_f32 v25, v13, v13 :: v_dual_mul_f32 v26, v12, v12
	v_dual_mul_f32 v23, v15, v15 :: v_dual_mul_f32 v24, v14, v14
	v_dual_mul_f32 v22, v16, v16 :: v_dual_mul_f32 v19, v18, v18
	v_dual_mul_f32 v20, v17, v17 :: v_dual_mul_f32 v15, v40, v40
	v_dual_mul_f32 v18, v38, v38 :: v_dual_mul_f32 v7, v57, v57
	v_dual_mul_f32 v17, v39, v39 :: v_dual_mul_f32 v16, v21, v21
	v_dual_mul_f32 v13, v42, v42 :: v_dual_mul_f32 v14, v41, v41
	v_dual_mul_f32 v11, v54, v54 :: v_dual_mul_f32 v12, v53, v53
	v_mul_f32_e32 v5, v59, v59
	v_dual_mul_f32 v10, v55, v55 :: v_dual_mov_b32 v1, v52
	v_dual_mul_f32 v8, v56, v56 :: v_dual_mov_b32 v3, v51
	v_mul_f32_e32 v6, v58, v58
	v_mul_f32_e32 v4, v60, v60
	v_mov_b32_e32 v2, v50
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v36, v36
	v_dual_max_f32 v21, v37, v37 :: v_dual_max_f32 v40, v20, v20
	v_max3_f32 v38, v34, v33, v32
	v_max3_f32 v41, v28, v27, v26
	v_max3_f32 v42, v25, v24, v23
	v_max_f32_e32 v9, v21, v9
	v_max3_f32 v21, v31, v30, v29
	s_mov_b32 s0, 0x76543210
	v_dual_max_f32 v39, v19, v19 :: v_dual_and_b32 v2, 0xf0, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_max3_f32 v9, v9, v35, v38
	v_max3_f32 v38, v41, v42, v22
	v_max3_f32 v50, v11, v10, v8
	v_max3_f32 v51, v7, v6, v5
	v_max3_f32 v41, v14, v13, v12
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v9, v21, v38
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v39, v40, v39
	v_max3_f32 v40, v17, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v38, v9, v38
	v_max3_f32 v39, v39, v18, v40
	v_max3_f32 v40, v50, v51, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v21, v39, v41, v40
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v40, 4, v49
	v_and_b32_e32 v41, 8, v0
	v_permlanex16_b32 v39, v21, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v48, 3, v40
	v_xor_b32_e32 v40, v40, v2
	v_lshl_add_u32 v48, v49, 8, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v2, v42, v2
	v_add3_u32 v9, v48, v40, v41
	v_lshrrev_b32_e32 v40, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v21, v39
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v2, 0, v41, v2
	ds_store_b64 v9, v[38:39]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[38:39], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v38
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v38, v38 :: v_dual_max_f32 v38, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_mov_b32 v9, v39
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v39, v41, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v21, v2
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v39, v3, v40
	v_mov_b32_e32 v21, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v21, v2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v9, v38, v9 :: v_dual_mov_b32 v2, v21
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v38, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v41, v2, v2
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v9, v9, v38 :: v_dual_lshlrev_b32 v2, 3, v43
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v38, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v42, v38, v38
	v_max_f32_e32 v38, v21, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_max_f32_e32 v39, v9, v42
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v9, 0, v2, v40
	ds_store_b64 v3, v[38:39]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[38:39], v9
.Ltmp49:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v3, v38, v38
	v_max_f32_e32 v9, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v48, vcc_lo, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v21
	v_fma_f32 v41, -v21, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_max_f32_e32 v9, 0x2b8cbccc, v9
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v42, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v40
	v_mul_f32_e32 v42, v48, v39
	v_fma_f32 v50, -v21, v42, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v50, v39
	v_div_scale_f32 v41, s0, v9, 0x40e00000, v9
	v_fma_f32 v21, -v21, v42, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v41, v40
	v_div_fmas_f32 v21, v21, v39, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v38, v49, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v39.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v21, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v51, v40
	v_fma_f32 v38, -v38, v49, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v40, v49
	v_div_fixup_f32 v21, v38, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.h, v39.h
	v_mov_b16_e32 v9.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v39.l, v21.h
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v39
	v_add3_u32 v9, v3, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v21, v38, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v39, null, v38, v38, v37
	v_div_scale_f32 v41, null, v38, v38, v36
	v_div_scale_f32 v50, null, v38, v38, v34
	v_rcp_f32_e32 v70, v39
	v_div_scale_f32 v48, null, v38, v38, v35
	v_div_scale_f32 v54, null, v38, v38, v32
	v_div_scale_f32 v56, null, v38, v38, v31
	v_div_scale_f32 v64, null, v38, v38, v27
	v_div_scale_f32 v68, null, v38, v38, v25
	v_rcp_f32_e32 v71, v41
	v_rcp_f32_e32 v73, v50
	v_div_scale_f32 v52, null, v38, v38, v33
	v_div_scale_f32 v58, null, v38, v38, v30
	v_rcp_f32_e32 v72, v48
	v_div_scale_f32 v60, null, v38, v38, v29
	v_rcp_f32_e32 v75, v54
	v_rcp_f32_e32 v76, v56
	v_rcp_f32_e32 v80, v64
	v_rcp_f32_e32 v82, v68
	v_fma_f32 v84, -v39, v70, 1.0
	v_div_scale_f32 v66, null, v38, v38, v26
	v_rcp_f32_e32 v74, v52
	v_rcp_f32_e32 v77, v58
	v_rcp_f32_e32 v78, v60
	v_div_scale_f32 v40, vcc_lo, v37, v38, v37
	v_fma_f32 v85, -v41, v71, 1.0
	v_fma_f32 v87, -v50, v73, 1.0
	v_fmac_f32_e32 v70, v84, v70
	v_rcp_f32_e32 v81, v66
	v_div_scale_f32 v62, null, v38, v38, v28
	v_fma_f32 v86, -v48, v72, 1.0
	v_div_scale_f32 v42, s0, v36, v38, v36
	v_fma_f32 v89, -v54, v75, 1.0
	v_fma_f32 v90, -v56, v76, 1.0
	v_fma_f32 v94, -v64, v80, 1.0
	v_fma_f32 v96, -v68, v82, 1.0
	v_fmac_f32_e32 v71, v85, v71
	v_dual_fmac_f32 v73, v87, v73 :: v_dual_mul_f32 v84, v40, v70
	v_fma_f32 v88, -v52, v74, 1.0
	v_div_scale_f32 v49, s1, v35, v38, v35
	v_rcp_f32_e32 v79, v62
	v_fma_f32 v91, -v58, v77, 1.0
	v_fmac_f32_e32 v72, v86, v72
	v_div_scale_f32 v51, s2, v34, v38, v34
	v_fma_f32 v92, -v60, v78, 1.0
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_and_b32 v21, 0xffff0000, v3
	v_div_scale_f32 v55, s4, v32, v38, v32
	v_div_scale_f32 v57, s5, v31, v38, v31
	v_div_scale_f32 v65, s9, v27, v38, v27
	v_fmac_f32_e32 v76, v90, v76
	v_dual_fmac_f32 v82, v96, v82 :: v_dual_mul_f32 v85, v42, v71
	v_fma_f32 v96, -v39, v84, v40
	v_fmac_f32_e32 v75, v89, v75
	v_div_scale_f32 v53, s3, v33, v38, v33
	v_fma_f32 v95, -v66, v81, 1.0
	v_dual_fmac_f32 v74, v88, v74 :: v_dual_fmac_f32 v77, v91, v77
	v_mul_f32_e32 v86, v49, v72
	v_div_scale_f32 v61, s7, v29, v38, v29
	v_dual_fmac_f32 v78, v92, v78 :: v_dual_mul_f32 v87, v51, v73
	v_mul_f32_e32 v90, v57, v76
	v_mul_f32_e32 v94, v65, v80
	v_fma_f32 v97, -v41, v85, v42
	v_dual_fmac_f32 v84, v96, v70 :: v_dual_mul_f32 v89, v55, v75
	v_dual_fmac_f32 v81, v95, v81 :: v_dual_mul_f32 v88, v53, v74
	v_div_scale_f32 v59, s6, v30, v38, v30
	v_fma_f32 v93, -v62, v79, 1.0
	v_fma_f32 v98, -v48, v86, v49
	v_mul_f32_e32 v92, v61, v78
	v_fma_f32 v99, -v50, v87, v51
	v_fma_f32 v106, -v64, v94, v65
	v_fmac_f32_e32 v85, v97, v71
	v_fma_f32 v100, -v52, v88, v53
	v_dual_fmac_f32 v79, v93, v79 :: v_dual_fmac_f32 v86, v98, v72
	v_mul_f32_e32 v91, v59, v77
	v_fma_f32 v101, -v54, v89, v55
	v_fma_f32 v39, -v39, v84, v40
	v_fmac_f32_e32 v87, v99, v73
	v_div_scale_f32 v63, s8, v28, v38, v28
	v_fma_f32 v102, -v56, v90, v57
	v_fmac_f32_e32 v94, v106, v80
	v_fma_f32 v40, -v41, v85, v42
	v_fmac_f32_e32 v88, v100, v74
	v_fma_f32 v103, -v58, v91, v59
	v_fma_f32 v41, -v48, v86, v49
	v_fmac_f32_e32 v89, v101, v75
	v_div_fmas_f32 v39, v39, v70, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v67, s10, v26, v38, v26
	v_fma_f32 v104, -v60, v92, v61
	v_fma_f32 v42, -v50, v87, v51
	v_dual_mul_f32 v93, v63, v79 :: v_dual_fmac_f32 v90, v102, v76
	v_div_fmas_f32 v40, v40, v71, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v52, v88, v53
	v_fmac_f32_e32 v91, v103, v77
	v_div_fmas_f32 v41, v41, v72, v86
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v49, -v54, v89, v55
	v_div_scale_f32 v69, null, v38, v38, v24
	v_dual_mul_f32 v95, v67, v81 :: v_dual_fmac_f32 v92, v104, v78
	v_div_fixup_f32 v37, v39, v38, v37
	v_div_fmas_f32 v39, v42, v73, v87
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v56, v90, v57
	v_div_fixup_f32 v36, v40, v38, v36
	v_div_fmas_f32 v40, v48, v74, v88
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v51, -v58, v91, v59
	v_div_fixup_f32 v35, v41, v38, v35
	v_div_fmas_f32 v41, v49, v75, v89
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v83, v69
	v_fma_f32 v52, -v60, v92, v61
	v_div_fixup_f32 v34, v39, v38, v34
	v_div_fmas_f32 v39, v50, v76, v90
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v40, v38, v33
	v_div_fmas_f32 v40, v51, v77, v91
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v32, v41, v38, v32
	v_div_fmas_f32 v41, v52, v78, v92
	v_fma_f32 v105, -v62, v93, v63
	v_div_fixup_f32 v30, v40, v38, v30
	v_div_scale_f32 v40, s0, v25, v38, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v29, v41, v38, v29
	v_fma_f32 v41, -v69, v83, 1.0
	v_fmac_f32_e32 v93, v105, v79
	v_fma_f32 v107, -v66, v95, v67
	v_mul_f32_e32 v42, v40, v82
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v41, v83
	v_div_scale_f32 v41, s1, v24, v38, v24
	v_fma_f32 v53, -v62, v93, v63
	v_div_fixup_f32 v31, v39, v38, v31
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v41, v83
	v_div_fmas_f32 v39, v53, v79, v93
	v_fma_f32 v50, -v68, v42, v40
	v_div_scale_f32 v53, null, v38, v38, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v54, -v69, v52, v41
	v_fmac_f32_e32 v95, v107, v81
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v64, v94, v65
	v_rcp_f32_e32 v51, v48
	v_fmac_f32_e32 v42, v50, v82
	v_rcp_f32_e32 v50, v53
	v_fmac_f32_e32 v52, v54, v83
	v_fma_f32 v49, -v66, v95, v67
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v57, null, v21, v21, v19
	v_div_fmas_f32 v39, v39, v80, v94
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v48, v51, 1.0
	v_div_fmas_f32 v49, v49, v81, v95
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v39, v38, v27
	v_fma_f32 v39, -v68, v42, v40
	v_div_scale_f32 v54, s0, v22, v38, v22
	v_div_fixup_f32 v26, v49, v38, v26
	v_fma_f32 v49, -v53, v50, 1.0
	v_fmac_f32_e32 v51, v55, v51
	v_div_fmas_f32 v39, v39, v82, v42
	v_fma_f32 v41, -v69, v52, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v40, s2, v23, v38, v23
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_scale_f32 v49, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v54, v50
	v_div_scale_f32 v59, null, v21, v21, v17
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v53, v56, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v61, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v56, v39, v50
	v_div_fmas_f32 v41, v41, v83, v52
	v_div_scale_f32 v39, s1, v20, v21, v20
	v_mul_f32_e32 v42, v40, v51
	v_rcp_f32_e32 v52, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v24, v41, v38, v24
	v_rcp_f32_e32 v41, v57
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v55, -v48, v42, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v58, -v57, v41, 1.0
	v_fmac_f32_e32 v42, v55, v51
	v_fma_f32 v55, -v49, v52, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s29, 31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v58, v41
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v21, v21, v18
	v_fmac_f32_e32 v52, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v51, v42
	v_rcp_f32_e32 v55, v48
	v_fma_f32 v42, -v53, v56, v54
	v_div_scale_f32 v53, s2, v19, v21, v19
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v40, v38, v23
	v_div_fmas_f32 v42, v42, v50, v56
	v_fma_f32 v40, -v59, v61, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v48, v55, 1.0
	v_div_fixup_f32 v22, v42, v38, v22
	v_div_scale_f32 v42, null, v21, v21, v16
	v_fmac_f32_e32 v61, v40, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v54, v55
	v_mul_f32_e32 v51, v39, v52
	v_div_scale_f32 v54, s3, v18, v21, v18
	v_div_scale_f32 v40, s0, v17, v21, v17
	v_fma_f32 v58, -v49, v51, v39
	v_mul_f32_e32 v60, v53, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v56, v54, v55
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v51, v58, v52
	v_fma_f32 v50, -v57, v60, v53
	v_fma_f32 v38, -v49, v51, v39
	v_fma_f32 v39, -v48, v56, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v52, v51
	v_fmac_f32_e32 v56, v39, v55
	v_rcp_f32_e32 v39, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v20, v38, v21, v20
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v51, -v42, v39, 1.0
	v_fmac_f32_e32 v60, v50, v41
	v_div_scale_f32 v50, null, v21, v21, v15
	v_fmac_f32_e32 v39, v51, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v57, v60, v53
	v_div_scale_f32 v51, s1, v16, v21, v16
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v49, v41, v60
	v_dual_mul_f32 v49, v40, v61 :: v_dual_mul_f32 v38, v51, v39
	v_fma_f32 v48, -v48, v56, v54
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v41, v21, v19
	v_fma_f32 v53, -v59, v49, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v48, v48, v55, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v53, v61
	v_fma_f32 v53, -v42, v38, v51
	v_div_fixup_f32 v18, v48, v21, v18
	v_div_scale_f32 v48, null, v21, v21, v14
	v_fma_f32 v40, -v59, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v53, v39
	v_div_scale_f32 v53, null, v21, v21, v13
	v_rcp_f32_e32 v54, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v61, v49
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v55, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v17, v40, v21, v17
	v_fma_f32 v40, -v42, v38, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v48, v54, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v21, v21, v12
	v_fmac_f32_e32 v54, v51, v54
	v_div_scale_f32 v51, null, v21, v21, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v38, v21, v16
	v_fma_f32 v38, -v53, v55, 1.0
	v_fmac_f32_e32 v52, v41, v52
	v_div_scale_f32 v41, s2, v15, v21, v15
	v_rcp_f32_e32 v57, v51
	v_fmac_f32_e32 v55, v38, v55
	v_div_scale_f32 v40, s0, v14, v21, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v41, v52
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v58, s2, v12, v21, v12
	v_div_scale_f32 v38, s1, v13, v21, v13
	v_fma_f32 v42, -v50, v49, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v51, v57, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v49, v42, v52
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v59, v57
	v_div_scale_f32 v59, s3, v11, v21, v11
	v_fma_f32 v41, -v50, v49, v41
	v_mul_f32_e32 v50, v40, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v41, v52, v49
	v_fma_f32 v56, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v48, v50, v40
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v15, v41, v21, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v56, v42
	v_div_scale_f32 v56, null, v21, v21, v10
	v_fmac_f32_e32 v50, v49, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v61, v58, v42
	v_rcp_f32_e32 v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v48, v50, v40
	v_mul_f32_e32 v48, v59, v57
	v_fma_f32 v41, -v39, v61, v58
	v_mul_f32_e32 v52, v38, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v54, v50
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v61, v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v53, v52, v38
	v_fma_f32 v41, -v51, v48, v59
	v_div_scale_f32 v50, null, v21, v21, v8
	v_fma_f32 v39, -v39, v61, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v49, v55
	v_fma_f32 v49, -v56, v60, 1.0
	v_fmac_f32_e32 v48, v41, v57
	v_div_fixup_f32 v14, v40, v21, v14
	v_div_scale_f32 v54, null, v21, v21, v4
	v_fmac_f32_e32 v60, v49, v60
	v_div_scale_f32 v49, s0, v10, v21, v10
	v_fma_f32 v38, -v53, v52, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v41, v49, v60
	v_div_fmas_f32 v38, v38, v55, v52
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v52, v50
	v_div_fmas_f32 v39, v39, v42, v61
	v_fma_f32 v42, -v51, v48, v59
	v_fma_f32 v51, -v56, v41, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v38, v21, v13
	v_div_fixup_f32 v12, v39, v21, v12
	v_div_fmas_f32 v42, v42, v57, v48
	v_fmac_f32_e32 v41, v51, v60
	v_div_scale_f32 v39, null, v21, v21, v7
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v42, v21, v11
	v_fma_f32 v38, -v56, v41, v49
	v_div_scale_f32 v42, null, v21, v21, v5
	v_fma_f32 v40, -v50, v52, 1.0
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v60, v41
	v_rcp_f32_e32 v41, v39
	v_rcp_f32_e32 v51, v42
	v_div_scale_f32 v48, vcc_lo, v8, v21, v8
	v_div_fixup_f32 v10, v38, v21, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v60, -v54, v56, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v39, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v42, v51, 1.0
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s3, v4, v21, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s0, v7, v21, v7
	v_dual_fmac_f32 v52, v40, v52 :: v_dual_fmac_f32 v51, v58, v51
	v_div_scale_f32 v58, s2, v5, v21, v5
	v_mul_f32_e32 v59, v38, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v48, v52
	v_div_scale_f32 v40, null, v21, v21, v6
	v_dual_mul_f32 v62, v58, v51 :: v_dual_mul_f32 v63, v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v50, v53, v48
	v_rcp_f32_e32 v49, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v57, v52
	v_fma_f32 v57, -v39, v59, v38
	v_fma_f32 v48, -v50, v53, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v40, v49, 1.0
	v_div_fmas_f32 v48, v48, v52, v53
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v49, v55, v49
	v_div_scale_f32 v55, s1, v6, v21, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v59, v57, v41
	v_fma_f32 v57, -v42, v62, v58
	v_mul_f32_e32 v61, v55, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v39, v59, v38
	v_fmac_f32_e32 v62, v57, v51
	v_fma_f32 v50, -v40, v61, v55
	v_fma_f32 v39, -v54, v63, v60
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v41, v59
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v61, v50, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v50, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v63, v39, v56 :: v_dual_and_b32 v12, 15, v31
	v_fma_f32 v39, -v42, v62, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v40, v61, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v52, v10
	v_and_b32_e32 v10, 15, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v54, v63, v60
	v_div_fixup_f32 v8, v48, v21, v8
	v_div_fmas_f32 v40, v40, v49, v61
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v38, v21, v7
	v_div_fmas_f32 v39, v39, v51, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v40, v21, v6
	v_div_fmas_f32 v41, v41, v56, v63
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v39, v21, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v4, v41, v21, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v37
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v48, v14
	v_and_b32_e32 v14, 15, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v29, 11, v0
	v_lshlrev_b32_e32 v31, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v49, v13
	v_cvt_i32_f32_e32 v51, v11
	v_cvt_i32_f32_e32 v54, v6
	v_cvt_i32_f32_e32 v55, v5
	v_and_b32_e32 v5, 15, v36
	v_and_b32_e32 v6, 15, v35
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v13, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 0x160, v0
	v_and_b32_e32 v29, 0x3000, v29
	v_lshlrev_b32_e32 v32, 7, v47
	v_lshlrev_b32_e32 v35, 7, v0
	v_and_b32_e32 v36, 0x60, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v19
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v53, v7
	v_and_b32_e32 v7, 15, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v33, 0x200, v1
	v_xor_b32_e32 v34, v46, v30
	v_add3_u32 v32, 0, v29, v32
	v_and_or_b32 v35, 0x3600, v35, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v26, v26
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v20
	v_cvt_i32_f32_e32 v56, v4
	v_and_b32_e32 v4, 15, v21
	v_and_b32_e32 v20, 15, v23
	v_and_b32_e32 v23, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v38, v32, v33, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v32, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v35, v45, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v17
	v_cvt_i32_f32_e32 v41, v16
	v_cvt_i32_f32_e32 v42, v15
	v_and_b32_e32 v15, 15, v28
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v17, 15, v26
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v39, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v38, v[4:7]
	ds_store_b128 v38, v[14:17] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[14:17], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v19, 15, v24
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v29, 15, v50
	v_and_b32_e32 v30, 15, v51
	v_and_b32_e32 v31, 15, v52
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[22:25]
	ds_store_b128 v38, v[29:32] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v8
	ds_load_b128 v[30:33], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[10:13]
	ds_store_b128 v38, v[18:21] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[18:21], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v48
	v_and_b32_e32 v29, 15, v49
	v_and_b32_e32 v34, 15, v53
	v_and_b32_e32 v35, 15, v54
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v37, 15, v56
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[26:29]
	ds_store_b128 v38, v[34:37] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v8
	ds_load_b128 v[34:37], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
.Ltmp50:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v45
.Ltmp51:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v16, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v39
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v17, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s1, v2
	s_lshl_b32 s0, s0, 5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v14, 4, v4
	v_lshl_or_b32 v5, v15, 4, v5
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v11, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v16
	v_add3_u32 v16, v16, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v30, 4, v22
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	v_lshl_or_b32 v15, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v34, 4, v26
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v19, v36, 4, v28
	v_lshl_or_b32 v20, v37, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_or_b16 v9.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v19.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v43
	v_lshrrev_b32_e32 v4, 2, v44
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v2, 2, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s12
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	v_add3_u32 v1, 0, v1, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v21, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v16, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v3, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp52:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 136
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 136
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10380
; TotalNumSgprs: 46
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 136
; Occupancy: 10
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
