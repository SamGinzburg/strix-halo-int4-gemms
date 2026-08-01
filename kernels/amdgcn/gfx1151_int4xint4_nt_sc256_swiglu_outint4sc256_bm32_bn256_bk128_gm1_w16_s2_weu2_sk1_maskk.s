	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s20, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v83, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_add_i32 s2, s20, 0xff
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
.LBB0_3:                                ; %Flow227
	s_load_b128 s[12:15], s[0:1], 0x20
	v_lshrrev_b32_e32 v53, 4, v0
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v54, 15, v0
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v51, 0x1e0, v0
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v52, 16, v0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	.loc	1 197 39 is_stmt 1              ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v1, 2, v54
	v_mov_b32_e32 v75, 0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s20, 31
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 56, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v23, s3, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp17:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s20, s20, s0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v22, s3, v2
	v_add_nc_u32_e32 v28, s30, v54
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v27, 64, v23
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v26, 64, v22
	v_cmp_gt_i32_e64 s0, 0x80, v22
	v_lshl_or_b32 v22, s17, 9, v51
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v23
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v23, 16, v28
	v_cmp_gt_i32_e64 s1, 0x80, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v27, s29, 1, v22
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 3, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s31, s2, 8
.Ltmp23:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s21, s16, 9
	v_mul_lo_u32 v23, s31, v23
	s_lshl_b32 s17, s17, 8
	v_subrev_nc_u32_e32 v90, s21, v27
	v_subrev_nc_u32_e32 v91, s21, v22
	s_add_i32 s21, s29, s17
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v8, 0xc0, v4
	v_cmp_gt_i32_e64 s2, 0x80, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v26, 3, v52
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v22, s21, v4
	s_add_i32 s34, s3, 64
	s_lshl_b32 s3, s16, 8
	v_and_b32_e32 v6, 56, v6
	v_lshlrev_b32_e32 v92, 1, v23
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v23, s21, v8
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v89, 2, v26
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v26, s30, v53
	v_subrev_nc_u32_e32 v22, s3, v22
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s20, s20, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v9, 64, v4
	v_xor_b32_e32 v3, v3, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v23, s3, v23
	v_sub_nc_u32_e32 v87, s20, v1
	v_mad_u64_u32 v[41:42], null, s20, v26, v[1:2]
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v1, 0x80, v22
	v_or_b32_e32 v4, s17, v4
	v_lshrrev_b32_e32 v5, 2, v0
	v_and_b32_e32 v7, 56, v83
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v27, s21, v9
	v_mad_u64_u32 v[42:43], null, s20, v23, v[2:3]
	v_mad_u64_u32 v[43:44], null, s20, v1, v[2:3]
	v_or_b32_e32 v1, s17, v8
	v_subrev_nc_u32_e32 v4, s3, v4
	v_or_b32_e32 v8, s17, v9
	v_and_b32_e32 v5, 56, v5
	v_lshl_or_b32 v7, v54, 6, v7
	v_subrev_nc_u32_e32 v23, s3, v27
	v_subrev_nc_u32_e32 v1, s3, v1
	v_or_b32_e32 v9, 0x80, v4
	v_subrev_nc_u32_e32 v8, s3, v8
	v_xor_b32_e32 v5, v83, v5
	v_xor_b32_e32 v6, 8, v7
	v_mad_u64_u32 v[44:45], null, s20, v23, v[2:3]
	v_mad_u64_u32 v[45:46], null, s20, v22, v[2:3]
	v_mad_u64_u32 v[46:47], null, s20, v1, v[2:3]
	v_mad_u64_u32 v[47:48], null, s20, v9, v[2:3]
	v_lshl_or_b32 v12, v51, 5, v7
	v_mad_u64_u32 v[48:49], null, s20, v8, v[2:3]
	v_xor_b32_e32 v10, 16, v7
	v_xor_b32_e32 v11, 24, v7
	v_xor_b32_e32 v13, 32, v7
	v_xor_b32_e32 v14, 40, v7
	v_xor_b32_e32 v15, 48, v7
	v_xor_b32_e32 v16, 56, v7
	v_sub_nc_u32_e32 v88, s20, v2
	v_mad_u64_u32 v[49:50], null, s20, v4, v[2:3]
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v94, 0, v5
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v95, 0, v3
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v96, 0, v7
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v97, 0, v6
	v_mov_b32_e32 v1, s36
	v_mov_b32_e32 v5, s40
	v_mul_lo_u32 v28, s31, v28
	v_xor_b32_e32 v17, 8, v12
	v_xor_b32_e32 v18, 16, v12
	v_xor_b32_e32 v19, 24, v12
	v_xor_b32_e32 v20, 32, v12
	v_xor_b32_e32 v21, 40, v12
	v_xor_b32_e32 v24, 48, v12
	v_xor_b32_e32 v25, 56, v12
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v93, 1, v28
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v98, 0, v10
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v99, 0, v11
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v100, 0, v13
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v101, 0, v14
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v102, 0, v15
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v103, 0, v16
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v104, 0, v12
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v105, 0, v17
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v106, 0, v18
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v107, 0, v19
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v108, 0, v20
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v109, 0, v21
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v110, 0, v24
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v111, 0, v25
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_mov_b32_e32 v4, s39
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v61, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s33, s29, 2
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
	buffer_load_u16 v112, v93, s[16:19], 0 offen
	buffer_load_u16 v113, v92, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s6, s34, 64
	v_cmp_lt_i32_e64 s3, s34, v87
	v_cmp_lt_i32_e64 s4, s34, v88
	v_cmp_lt_i32_e64 s5, s6, v87
	v_cmp_lt_i32_e64 s6, s6, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s31, s31, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v10, s34, v49
	v_add_nc_u32_e32 v11, s34, v48
	v_add_nc_u32_e32 v12, s34, v47
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, s34, v41
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v13, s34, v46
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v14, s34, v45
	v_add_nc_u32_e32 v15, s34, v44
	v_add_nc_u32_e32 v16, s34, v43
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_add_nc_u32_e32 v17, s34, v42
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_subrev_nc_u32_e32 v19, 64, v10
	v_subrev_nc_u32_e32 v20, 64, v11
	v_subrev_nc_u32_e32 v21, 64, v12
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_subrev_nc_u32_e32 v22, 64, v13
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v27, 0x80000000, v9, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s4, s2
	s_and_b32 s4, s6, s0
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_subrev_nc_u32_e32 v23, 64, v14
	v_subrev_nc_u32_e32 v24, 64, v15
	v_subrev_nc_u32_e32 v25, 64, v16
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_subrev_nc_u32_e32 v26, 64, v17
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v18, 64, v9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v9, 0x80000000, v19, s4
	v_cndmask_b32_e64 v135, 0x80000000, v11, s3
	v_cndmask_b32_e64 v11, 0x80000000, v20, s4
	v_cndmask_b32_e64 v137, 0x80000000, v13, s3
	v_cndmask_b32_e64 v13, 0x80000000, v21, s4
	v_cndmask_b32_e64 v134, 0x80000000, v10, s3
	v_cndmask_b32_e64 v136, 0x80000000, v12, s3
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e64 v138, 0x80000000, v14, s3
	v_cndmask_b32_e64 v139, 0x80000000, v15, s3
	v_cndmask_b32_e64 v140, 0x80000000, v16, s3
	v_cndmask_b32_e64 v141, 0x80000000, v17, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s5, vcc_lo
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v15, 0x80000000, v22, s4
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e64 v17, 0x80000000, v23, s4
	v_cndmask_b32_e64 v19, 0x80000000, v24, s4
	v_cndmask_b32_e64 v21, 0x80000000, v25, s4
	v_cndmask_b32_e64 v23, 0x80000000, v26, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v28, 0x80000000, v18, s3
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x7
	buffer_load_b64 v[9:10], v9, s[24:27], 0 offen
	buffer_load_b64 v[11:12], v11, s[24:27], 0 offen
	buffer_load_b64 v[13:14], v13, s[24:27], 0 offen
	buffer_load_b64 v[15:16], v15, s[24:27], 0 offen
	buffer_load_b64 v[17:18], v17, s[24:27], 0 offen
	buffer_load_b64 v[19:20], v19, s[24:27], 0 offen
	buffer_load_b64 v[21:22], v21, s[24:27], 0 offen
	buffer_load_b64 v[23:24], v23, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v25, v28, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v142, v27, s[20:23], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s34, 0x80
	s_cmp_lg_u32 s31, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(8)
	ds_store_2addr_stride64_b64 v95, v[9:10], v[11:12] offset1:8
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b64 v95, v[13:14], v[15:16] offset0:16 offset1:24
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b64 v95, v[17:18], v[19:20] offset0:32 offset1:40
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v95, v[21:22], v[23:24] offset0:48 offset1:56
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v94, v25 offset:32768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[114:117], v96 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[118:121], v104 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v97 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v105 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v98 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[114:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[116:117], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[114:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[116:117], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v106 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[118:121], v99 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[124:125], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[124:125], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v107 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v100 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v108 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[118:121], v101 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[124:125], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[124:125], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v109 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v102 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v110 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[118:121], v103 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[124:125], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[124:125], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v111 offset1:32
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	s_clause 0x5
	buffer_load_b64 v[122:123], v134, s[24:27], 0 offen
	buffer_load_b64 v[124:125], v135, s[24:27], 0 offen
	buffer_load_b64 v[126:127], v136, s[24:27], 0 offen
	buffer_load_b64 v[128:129], v137, s[24:27], 0 offen
	buffer_load_b64 v[130:131], v138, s[24:27], 0 offen
	buffer_load_b64 v[132:133], v139, s[24:27], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_clause 0x1
	buffer_load_b64 v[114:115], v140, s[24:27], 0 offen
	buffer_load_b64 v[116:117], v141, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b32 v94, v142 offset:32768
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b64 v95, v[122:123], v[124:125] offset1:8
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b64 v95, v[126:127], v[128:129] offset0:16 offset1:24
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v95, v[130:131], v[132:133] offset0:32 offset1:40
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v95, v[114:115], v[116:117] offset0:48 offset1:56
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[114:117], v96 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[118:121], v104 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v97 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v105 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v98 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[114:115], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[116:117], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[116:117], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v106 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[118:121], v99 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[124:125], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[124:125], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[122:125], v107 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[126:129], v100 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v108 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v101 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[122:123], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[120:121], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[118:121], v109 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v102 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[126:127], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[128:129], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[126:127], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[128:129], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[114:117], v110 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[126:129], v103 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[132:133], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[118:121], v111 offset1:32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[124:125], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[124:125], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[126:127], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[128:129], v[25:32] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[126:127], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[128:129], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v27, v27
	v_dual_mul_f32 v10, v112, v10 :: v_dual_mul_f32 v25, v113, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v21, v112, v21 :: v_dual_add_nc_u32 v134, v89, v91
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v130, v134, s[8:11], 0 offen
	buffer_load_u16 v131, v134, s[8:11], 0 offen offset:4
	buffer_load_u16 v132, v134, s[8:11], 0 offen offset:8
	buffer_load_u16 v133, v134, s[8:11], 0 offen offset:12
	buffer_load_u16 v136, v134, s[8:11], 0 offen offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v24, v112, v24 :: v_dual_add_nc_u32 v135, v89, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xa
	buffer_load_u16 v114, v134, s[8:11], 0 offen offset:20
	buffer_load_u16 v115, v134, s[8:11], 0 offen offset:24
	buffer_load_u16 v116, v134, s[8:11], 0 offen offset:28
	buffer_load_u16 v117, v135, s[8:11], 0 offen
	buffer_load_u16 v122, v135, s[8:11], 0 offen offset:4
	buffer_load_u16 v123, v135, s[8:11], 0 offen offset:8
	buffer_load_u16 v124, v135, s[8:11], 0 offen offset:12
	buffer_load_u16 v125, v135, s[8:11], 0 offen offset:16
	buffer_load_u16 v134, v135, s[8:11], 0 offen offset:20
	buffer_load_u16 v118, v135, s[8:11], 0 offen offset:24
	buffer_load_u16 v119, v135, s[8:11], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v22, v112, v22 :: v_dual_add_nc_u32 v91, s33, v91
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v112, v17
	v_mul_f32_e32 v18, v112, v18
	v_mul_f32_e32 v19, v112, v19
	v_mul_f32_e32 v20, v112, v20
	v_dual_mul_f32 v23, v112, v23 :: v_dual_mul_f32 v26, v113, v26
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v27, v113, v27 :: v_dual_mul_f32 v12, v112, v12
	v_dual_mul_f32 v28, v113, v28 :: v_dual_mul_f32 v9, v112, v9
	v_dual_mul_f32 v32, v113, v32 :: v_dual_mul_f32 v11, v112, v11
	v_dual_mul_f32 v31, v113, v31 :: v_dual_mul_f32 v16, v112, v16
	v_dual_mul_f32 v30, v113, v30 :: v_dual_mul_f32 v15, v112, v15
	v_dual_mul_f32 v29, v113, v29 :: v_dual_mul_f32 v14, v112, v14
	v_dual_mul_f32 v13, v112, v13 :: v_dual_add_nc_u32 v90, s33, v90
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v37, v113, v37 :: v_dual_add_nc_u32 v92, 2, v92
	v_mul_f32_e32 v39, v113, v39
	v_dual_mul_f32 v40, v113, v40 :: v_dual_add_nc_u32 v93, 2, v93
	v_mul_f32_e32 v33, v113, v33
	v_mul_f32_e32 v34, v113, v34
	v_mul_f32_e32 v35, v113, v35
	v_mul_f32_e32 v36, v113, v36
	v_mul_f32_e32 v38, v113, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v112, 16, v130
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v113, 16, v131
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v33, v112 :: v_dual_lshlrev_b32 v114, 16, v114
	v_fmac_f32_e32 v78, v17, v112
	v_dual_fmac_f32 v79, v18, v113 :: v_dual_lshlrev_b32 v120, 16, v132
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v121, 16, v133
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v56, v34, v113 :: v_dual_lshlrev_b32 v115, 16, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v19, v120
	v_dual_fmac_f32 v81, v20, v121 :: v_dual_lshlrev_b32 v126, 16, v136
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v57, v35, v120 :: v_dual_lshlrev_b32 v122, 16, v122
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v50, v36, v121 :: v_dual_lshlrev_b32 v123, 16, v123
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v71, v22, v114 :: v_dual_lshlrev_b32 v124, 16, v124
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v60, v38, v114 :: v_dual_lshlrev_b32 v125, 16, v125
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v72, v23, v115 :: v_dual_lshlrev_b32 v127, 16, v134
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v61, v39, v115 :: v_dual_lshlrev_b32 v118, 16, v118
	v_fmac_f32_e32 v59, v37, v126
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v58, v40, v116 :: v_dual_lshlrev_b32 v119, 16, v119
	v_dual_fmac_f32 v70, v21, v126 :: v_dual_fmac_f32 v73, v24, v116
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v86, v9, v117
	v_dual_fmac_f32 v69, v25, v117 :: v_dual_fmac_f32 v68, v26, v122
	v_dual_fmac_f32 v85, v10, v122 :: v_dual_fmac_f32 v84, v11, v123
	v_dual_fmac_f32 v67, v27, v123 :: v_dual_fmac_f32 v82, v12, v124
	v_dual_fmac_f32 v62, v28, v124 :: v_dual_fmac_f32 v75, v13, v125
	v_dual_fmac_f32 v74, v14, v127 :: v_dual_fmac_f32 v77, v15, v118
	v_dual_fmac_f32 v76, v16, v119 :: v_dual_fmac_f32 v63, v29, v125
	v_dual_fmac_f32 v64, v30, v127 :: v_dual_fmac_f32 v65, v31, v118
	v_fmac_f32_e32 v66, v32, v119
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v83
.LBB0_7:                                ; %Flow228
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v3, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v85
	v_dual_mul_f32 v13, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v62
	v_dual_mul_f32 v15, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v74
	v_mul_f32_e32 v10, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v14, 0xbfb8aa3b, v66 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v5, v5
	v_mul_f32_e32 v3, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
.Ltmp26:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x600, v1
.Ltmp27:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_ldexp_f32 v6, v7, v6
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v84
	v_ldexp_f32 v4, v5, v4
	v_mul_f32_e32 v11, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v3, v9
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v24, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, s0, v85, v6, v85
	v_div_scale_f32 v7, null, v4, v4, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v3, v3, v8
	v_and_b32_e32 v2, 0x1f0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v8, null, v6, v6, v85
	v_rcp_f32_e32 v18, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, vcc_lo, v86, v4, v86
	v_rcp_f32_e32 v19, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v5, v5, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v21, null, v3, v3, v84
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, s2, v84, v3, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v9, v21
	v_fma_f32 v25, -v7, v18, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v26, -v8, v19, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v5, 1.0, v5
.Ltmp28:
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v54, 4, v1
.Ltmp29:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_fmac_f32 v18, v25, v18 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v68
	v_fmac_f32_e32 v19, v26, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v32, null, v5, v5, v82
	v_fma_f32 v25, -v21, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v27, v18 :: v_dual_fmac_f32 v9, v25, v9
	v_fma_f32 v25, -v7, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v26, v25, v18 :: v_dual_mul_f32 v29, v28, v19
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v7, -v7, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v8, v29, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v18, v26
	v_fmac_f32_e32 v29, v31, v19
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v31, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v74
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v7, v4, v86
	v_fma_f32 v8, -v8, v29, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v8, v8, v19, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v8, v6, v85
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v8, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v32, v31, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v77
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, s0, v82, v5, v82
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v31, v6, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v6, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v8, v8, v13
	v_exp_f32_e32 v13, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v76
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v19, 1.0, v8 :: v_dual_mul_f32 v8, v25, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v33, v30, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v6, v6, v12
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v12, null, v19, v19, v75
	v_fma_f32 v34, -v21, v33, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v13, v18
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v34, v9
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v6, v11, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v18, v18, v74
	v_fma_f32 v21, -v21, v33, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v11, null, v13, v13, v77
	v_div_fmas_f32 v9, v21, v9, v33
	v_fma_f32 v21, -v32, v8, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v11
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v33, s1, v77, v13, v77
	v_fmac_f32_e32 v8, v21, v31
	v_div_fixup_f32 v3, v9, v3, v84
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v12, v26, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v32, v8, v25
	v_rcp_f32_e32 v25, v10
	v_div_scale_f32 v28, null, v21, v21, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v6, v26
	v_div_fmas_f32 v8, v9, v31, v8
	v_div_scale_f32 v29, vcc_lo, v75, v19, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_div_scale_f32 v32, s0, v74, v18, v74
	v_fma_f32 v6, -v10, v25, 1.0
	v_div_fixup_f32 v5, v8, v5, v82
	v_fma_f32 v8, -v11, v27, 1.0
	v_mul_f32_e32 v31, v29, v26
	v_div_scale_f32 v36, s2, v76, v21, v76
	v_fmac_f32_e32 v25, v6, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v8, v27
	v_fma_f32 v8, -v28, v30, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v81, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v12, v31, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v32, v25 :: v_dual_mul_f32 v35, v33, v27
	v_fmac_f32_e32 v30, v8, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v8, v80, v3 :: v_dual_fmac_f32 v31, v5, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v3, -v10, v34, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v11, v35, v33
	v_mul_f32_e32 v37, v36, v30
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v79, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v7, -v12, v31, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v34, v3, v25 :: v_dual_fmac_f32 v35, v5, v27
	v_fma_f32 v3, -v28, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v5, v7, v26, v31
	v_fma_f32 v7, -v10, v34, v32
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v3, v30
	v_fma_f32 v3, -v11, v35, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v25, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v10, -v28, v37, v36
	v_div_fmas_f32 v3, v3, v27, v35
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v7, v18, v74
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v10, v30, v37
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v78, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v3, v13, v77
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v67
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v5, v19, v75
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v22, v22
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v63
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v11, v21, v76
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v18, v20
	v_exp_f32_e32 v20, v24
	v_ldexp_f32 v11, v12, v11
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v66
	v_ldexp_f32 v17, v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v18, v20, v23
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v11, v11, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v20
	v_fma_f32 v26, -v20, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v14, v26, v14 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v68
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v12, v19, v13
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v13, v22, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v64
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v15, null, v12, v12, v68
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v65
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, null, v13, v13, v67
	v_rcp_f32_e32 v25, v15
	v_div_scale_f32 v29, vcc_lo, v69, v11, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v22, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v16, v19, v16
	v_ldexp_f32 v19, v24, v23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v15, v25, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v21, v22, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v22, v29, v14 :: v_dual_fmac_f32 v25, v28, v25
	v_div_scale_f32 v28, s0, v68, v12, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v33, null, v19, v19, v66
	v_fma_f32 v24, -v27, v26, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v20, v22, v29
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v73, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v24, v26
	v_div_scale_f32 v24, s1, v67, v13, v67
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v71, v7 :: v_dual_fmac_f32 v22, v30, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v30, v24, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v33, v35, 1.0
	v_fma_f32 v20, -v20, v22, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, s4, v66, v19, v66
	v_mul_f32_e32 v23, v28, v25
	v_div_fmas_f32 v14, v20, v14, v22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v39, v35 :: v_dual_add_f32 v17, 1.0, v17
	v_fma_f32 v31, -v15, v23, v28
	v_div_scale_f32 v20, null, v18, v18, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v31, v25
	v_div_scale_f32 v31, null, v17, v17, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v15, v23, v28
	v_fma_f32 v28, -v27, v30, v24
	v_rcp_f32_e32 v29, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v25, v23
	v_fmac_f32_e32 v30, v28, v26
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v25, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v15, v12, v68
	v_fma_f32 v23, -v27, v30, v24
	v_div_scale_f32 v24, null, v16, v16, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v31, v29, 1.0
	v_div_fmas_f32 v23, v23, v26, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v27, v24
	v_fma_f32 v26, -v20, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v29, v22, v29
	v_div_scale_f32 v22, s0, v62, v17, v62
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v32, v22, v29
	v_fma_f32 v34, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v31, v32, v22
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s2, v64, v16, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v36, v29
	v_mul_f32_e32 v40, v34, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v31, v32, v22
	v_fma_f32 v31, -v24, v40, v34
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v22, v22, v29, v32
	v_fmac_f32_e32 v40, v31, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v28, null, v21, v21, v65
	v_fma_f32 v24, -v24, v40, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v37, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v30, v37, v30
	v_div_fixup_f32 v23, v23, v13, v67
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, s1, v63, v18, v63
	v_div_scale_f32 v37, s3, v65, v21, v65
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v38, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v20, v38, v26
	v_fmac_f32_e32 v38, v36, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v38, v26
	v_fma_f32 v26, -v33, v42, v39
	v_div_fmas_f32 v20, v20, v25, v38
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v42, v26, v35
	v_div_fmas_f32 v24, v24, v27, v40
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v27, v70, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v14, v11, v69
	v_mul_f32_e32 v41, v37, v30
	v_div_fixup_f32 v14, v20, v18, v63
	v_fma_f32 v26, -v33, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v55, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v36, -v28, v41, v37
	v_div_fixup_f32 v13, v24, v16, v64
	v_div_fixup_f32 v16, v22, v17, v62
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, |v10|, |v9|, |v8|
	v_max_f32_e64 v17, |v4|, |v3|
.Ltmp31:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v41, v36, v30
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v60, v13 :: v_dual_lshlrev_b32 v24, 7, v54
	v_mul_f32_e32 v14, v59, v14
	v_mul_f32_e32 v18, v57, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v25, -v28, v41, v37
	v_div_fmas_f32 v25, v25, v30, v41
	s_mov_b32 vcc_lo, s4
	s_mov_b32 s4, 0x76543210
	v_div_fmas_f32 v26, v26, v35, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v25, v21, v65
	v_div_fixup_f32 v11, v26, v19, v66
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v56, v15
	v_mul_f32_e32 v15, v50, v16
.Ltmp32:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v16, |v6|, |v27|, |v7|
.Ltmp33:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v61, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v21, |v20|, |v19|, |v18|
	v_max3_f32 v22, |v15|, |v14|, |v13|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v16, v5, v16, v17
.Ltmp35:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v58, v11
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v5, 3, v54
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v23, |v12|, |v11|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v17, v21, v22, v23
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v21, v16, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v23, 2, v51
	v_permlanex16_b32 v22, v17, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v25, v5, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v16, v16, v21
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v21, v51, 2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v22
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v22, 0, v24, v25
	v_xad_u32 v21, v21, v23, 0
	ds_store_b64 v22, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[16:17], v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v22, v17
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v22, v22 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v22
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v17, v17, v22
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v16, v16, v21 :: v_dual_max_f32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v21, v16 :: v_dual_mov_b32 v22, v17
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v21 :: v_dual_max_f32 v17, v17, v22
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v21, v16 :: v_dual_add_nc_u32 v22, 0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v16, v21
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v21 :: v_dual_add_nc_u32 v21, 0, v23
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v21, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[16:17], v22
.Ltmp61:
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
	v_lshlrev_b32_e32 v27, 7, v52
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
	s_and_b32 s1, s13, 0xffff
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
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
	s_lshr_b32 s0, s29, 31
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
	s_add_i32 s0, s29, s0
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
	v_or_b32_e32 v3, s30, v53
	v_lshl_or_b32 v1, s28, 7, v5
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
	s_ashr_i32 s0, s29, 31
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
	v_and_or_b32 v2, v0, 31, s30
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
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
	s_mov_b32 s0, s12
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s28, 1
	v_cndmask_b32_e32 v1, v7, v14, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v51
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp62:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 143
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 143
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9356
; TotalNumSgprs: 46
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 143
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
