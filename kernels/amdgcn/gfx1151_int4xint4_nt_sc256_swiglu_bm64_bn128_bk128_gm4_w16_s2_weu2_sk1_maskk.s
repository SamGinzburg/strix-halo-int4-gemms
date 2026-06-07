	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v48, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s4, s7
	s_mul_hi_u32 s9, s5, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s16, 0xff
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s24, s17, s2
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow230
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v43, 15, v0
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v44, 16, v2
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v3, 0xe0, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v6, 6, v43
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v9, 5, v3
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v15, 0x438, v7, v6
	v_and_b32_e32 v7, 56, v7
	v_and_b32_e32 v1, 56, v2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s16, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s20, 31
.Ltmp15:
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s21, s3, 6
	v_or3_b32 v6, v9, v7, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v9, s14, v44, v43
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s16, s16, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v10, s21, v1
	v_lshl_or_b32 v3, s17, 8, v3
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v11, 32, v9
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s20, s0
.Ltmp19:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 3, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v12, 64, v10
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v10
	v_lshl_add_u32 v10, s15, 1, v3
	v_mul_lo_u32 v11, s3, v11
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s1, s16, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s16, s2, 8
	v_and_b32_e32 v5, 56, v48
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, 64, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v51, s16, v10
	v_subrev_nc_u32_e32 v52, s16, v3
	s_lshl_b32 s16, s17, 7
	v_mul_lo_u32 v9, s3, v9
	s_add_i32 s17, s15, s16
	v_xor_b32_e32 v2, v2, v5
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v53, 1, v11
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v3, s14, v4
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v11, s17, v8
	s_lshl_b32 s2, s2, 7
	v_cmp_gt_i32_e64 s0, 0x80, v12
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v12, s17, v4
	v_dual_mov_b32 v47, 0 :: v_dual_lshlrev_b32 v54, 1, v9
	v_mad_u64_u32 v[9:10], null, s1, v3, v[1:2]
	v_subrev_nc_u32_e32 v3, s2, v11
	v_or_b32_e32 v8, s16, v8
	v_and_b32_e32 v50, 2, v4
	v_or_b32_e32 v4, s16, v4
	v_subrev_nc_u32_e32 v12, s2, v12
	v_mad_u64_u32 v[10:11], null, s1, v3, v[1:2]
	v_subrev_nc_u32_e32 v3, s2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s2, v4
	v_xor_b32_e32 v5, 8, v15
	v_xor_b32_e32 v7, 32, v15
	v_xor_b32_e32 v16, 16, v15
	v_xor_b32_e32 v17, 24, v15
	v_xor_b32_e32 v18, 40, v15
	v_xor_b32_e32 v19, 48, v15
	v_xor_b32_e32 v20, 56, v15
	v_xor_b32_e32 v21, 8, v6
	v_xor_b32_e32 v22, 16, v6
	v_xor_b32_e32 v23, 24, v6
	v_xor_b32_e32 v24, 32, v6
	v_xor_b32_e32 v25, 40, v6
	v_xor_b32_e32 v26, 48, v6
	v_xor_b32_e32 v27, 56, v6
	v_mad_u64_u32 v[11:12], null, s1, v12, v[1:2]
	v_mad_u64_u32 v[12:13], null, s1, v3, v[1:2]
	v_mad_u64_u32 v[13:14], null, s1, v4, v[1:2]
	v_sub_nc_u32_e32 v49, s1, v1
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v55, 0, v2
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v57, 0, v5
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v60, 0, v7
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v64, 0, v6
	v_dual_mov_b32 v1, s36 :: v_dual_add_nc_u32 v56, 0, v15
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v58, 0, v16
	v_mov_b32_e32 v35, 0
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v59, 0, v17
	v_add_nc_u32_e32 v61, 0, v18
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v62, 0, v19
	v_add_nc_u32_e32 v63, 0, v20
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v65, 0, v21
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v66, 0, v22
	v_add_nc_u32_e32 v67, 0, v23
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v68, 0, v24
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v69, 0, v25
	v_add_nc_u32_e32 v70, 0, v26
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v71, 0, v27
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s25, s15, 2
	s_add_i32 s26, s21, 64
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v72, s26, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s2, s26, 64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v116, s26, v13
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v117, s26, v12
	.loc	1 171 29 is_stmt 1              ; generate_amdgcn.py:171:29
	v_add_nc_u32_e32 v118, s26, v11
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s26, v49
	v_cmp_lt_i32_e64 s2, s2, v49
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_add_nc_u32_e32 v119, s26, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v73, 64, v72
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v74, 64, v116
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v75, 64, v117
	.loc	1 171 29 is_stmt 1              ; generate_amdgcn.py:171:29
	v_subrev_nc_u32_e32 v76, 64, v118
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	s_and_b32 s2, s2, vcc_lo
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_subrev_nc_u32_e32 v77, 64, v119
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v82, 0x80000000, v72, s1
	v_cndmask_b32_e64 v72, 0x80000000, v73, s2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v78, 0x80000000, v75, s2
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v79, 0x80000000, v76, s2
	v_cndmask_b32_e64 v80, 0x80000000, v77, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[72:73], v72, s[16:19], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x3
	buffer_load_b64 v[74:75], v74, s[4:7], 0 offen
	buffer_load_b64 v[76:77], v78, s[4:7], 0 offen
	buffer_load_b64 v[78:79], v79, s[4:7], 0 offen
	buffer_load_b64 v[80:81], v80, s[4:7], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[114:115], v82, s[16:19], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	s_addk_i32 s26, 0x80
	s_cmp_lg_u32 s3, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v55, v[74:75], v[76:77] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b64 v55, v[72:73] offset:16384
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v55, v[78:79], v[80:81] offset0:16 offset1:24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[102:105], v56 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[106:109], v64 offset1:16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[110:113], v57 offset0:32 offset1:36
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[106:107], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[106:107], v[104:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[108:109], v[104:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[104:107], v65 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[104:105], v[110:111], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[104:105], v[112:113], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[106:107], v[110:111], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[106:107], v[112:113], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v58 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v66 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v59 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v67 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v60 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v68 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v61 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v69 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v62 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v70 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v63 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v71 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v104, 0x80000000, v116, s1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v106, 0x80000000, v117, s1
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v108, 0x80000000, v118, s1
	v_cndmask_b32_e64 v110, 0x80000000, v119, s1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x3
	buffer_load_b64 v[104:105], v104, s[4:7], 0 offen
	buffer_load_b64 v[106:107], v106, s[4:7], 0 offen
	buffer_load_b64 v[108:109], v108, s[4:7], 0 offen
	buffer_load_b64 v[110:111], v110, s[4:7], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v55, v[114:115] offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v55, v[104:105], v[106:107] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v55, v[108:109], v[110:111] offset0:16 offset1:24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[104:107], v56 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v64 offset1:16
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v114, v53, s[20:23], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v53, 2, v53
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v57 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v65 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v58 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v66 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v59 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v67 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v60 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v68 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v61 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v69 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v62 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v70 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[104:107], v63 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v71 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[108:109], v[104:105], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[106:107], v[80:87] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[104:105], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[110:111], v[106:107], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v112, v50, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v104, v112, s[8:11], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v105, v54, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x6
	buffer_load_u16 v106, v112, s[8:11], 0 offen offset:4
	buffer_load_u16 v107, v112, s[8:11], 0 offen offset:8
	buffer_load_u16 v108, v112, s[8:11], 0 offen offset:12
	buffer_load_u16 v109, v112, s[8:11], 0 offen offset:16
	buffer_load_u16 v110, v112, s[8:11], 0 offen offset:20
	buffer_load_u16 v111, v112, s[8:11], 0 offen offset:24
	buffer_load_u16 v112, v112, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v52, s25, v52
	v_add_nc_u32_e32 v54, 2, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v73, v105, v73 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v73, v106
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v75, v105, v75 :: v_dual_lshlrev_b32 v114, 16, v114
	v_dual_mul_f32 v72, v105, v72 :: v_dual_add_nc_u32 v113, v50, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v83, v114, v83 :: v_dual_lshlrev_b32 v104, 16, v104
	v_mul_f32_e32 v80, v114, v80
	v_mul_f32_e32 v81, v114, v81
	v_dual_mul_f32 v82, v114, v82 :: v_dual_add_nc_u32 v51, s25, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v72, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v27, v80, v104
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x2
	buffer_load_u16 v80, v113, s[8:11], 0 offen
	buffer_load_u16 v72, v113, s[8:11], 0 offen offset:4
	buffer_load_u16 v104, v113, s[8:11], 0 offen offset:8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v114, v84
	v_dual_mul_f32 v85, v114, v85 :: v_dual_fmac_f32 v26, v81, v106
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x2
	buffer_load_u16 v81, v113, s[8:11], 0 offen offset:12
	buffer_load_u16 v73, v113, s[8:11], 0 offen offset:16
	buffer_load_u16 v106, v113, s[8:11], 0 offen offset:20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v86, v114, v86
	v_mul_f32_e32 v87, v114, v87
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v96, v114, v96
	v_mul_f32_e32 v97, v114, v97
	v_mul_f32_e32 v99, v114, v99
	v_mul_f32_e32 v98, v114, v98
	v_mul_f32_e32 v101, v114, v101
	v_mul_f32_e32 v100, v114, v100
	v_mul_f32_e32 v103, v114, v103
	v_mul_f32_e32 v102, v114, v102
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v114, v113, s[8:11], 0 offen offset:24
	buffer_load_u16 v113, v113, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v76, v105, v76 :: v_dual_fmac_f32 v23, v82, v107
	v_dual_mul_f32 v78, v105, v78 :: v_dual_fmac_f32 v39, v75, v108
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v88, v105, v88 :: v_dual_fmac_f32 v15, v86, v111
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v90, v105, v90 :: v_dual_fmac_f32 v31, v78, v111
	v_dual_mul_f32 v95, v105, v95 :: v_dual_fmac_f32 v22, v83, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v79, v105, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v93, v105, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v74, v105, v74
	v_mul_f32_e32 v77, v105, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v89, v105, v89
	v_dual_mul_f32 v91, v105, v91 :: v_dual_fmac_f32 v18, v84, v109
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v38, v74, v107 :: v_dual_fmac_f32 v19, v85, v110
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v35, v77, v110 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v72, 16, v72
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v94, v105, v94
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v76, v109
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v81, 16, v81
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v73, 16, v73
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v14, v87, v112
	v_fmac_f32_e32 v30, v79, v112
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v29, v96, v80
	v_fmac_f32_e32 v47, v89, v72
	v_fmac_f32_e32 v28, v97, v72
	v_dual_fmac_f32 v41, v90, v104 :: v_dual_fmac_f32 v42, v91, v81
	v_fmac_f32_e32 v37, v93, v106
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v92, v105, v92 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v40, v88, v80
	v_fmac_f32_e32 v25, v98, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v32, v94, v114 :: v_dual_fmac_f32 v33, v95, v113
	v_fmac_f32_e32 v36, v92, v73
	v_fmac_f32_e32 v24, v99, v81
	v_dual_fmac_f32 v20, v100, v73 :: v_dual_fmac_f32 v21, v101, v106
	v_dual_fmac_f32 v17, v102, v114 :: v_dual_fmac_f32 v16, v103, v113
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v48
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v40
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s1, s24, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s14, s14, s15
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v11, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v2, v44, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v13, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	v_mul_f32_e32 v10, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v59, 32, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v48, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v28
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v43, v5
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v50, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v24
	v_dual_mul_f32 v8, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v42
	v_dual_mul_f32 v5, 0xbfb8aa3b, v17 :: v_dual_and_b32 v0, 16, v0
	v_ldexp_f32 v3, v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v4, v43, v6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v7, 0x78, v1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v1, 0xbfb8aa3b, v41
	v_exp_f32_e32 v55, v55
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v43, 1.0, v3 :: v_dual_add_f32 v10, 1.0, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s15, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v43, v43, v47
	v_div_scale_f32 v53, null, v10, v10, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v56, v52
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v58, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v3, v55, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, s0, v40, v10, v40
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v2, -v52, v56, 1.0
	v_fma_f32 v60, -v53, v58, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v56, v2, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, vcc_lo, v47, v43, v47
	v_fmac_f32_e32 v58, v60, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v57
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s14, s1, v7
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v3
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v60, v60, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v57, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v7, v61, v56
	v_rcp_f32_e32 v12, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v3, -v52, v7, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v65, null, v54, v54, v41
	v_fmac_f32_e32 v7, v3, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v52, v7, v61
	v_rcp_f32_e32 v52, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v7, v3, v56, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s15, v59
	s_mov_b32 s15, 0x31027000
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v7, v43, v47
	v_fma_f32 v43, -v64, v12, 1.0
	v_dual_mul_f32 v55, v62, v58 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v65, v52, 1.0
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v46, v7 :: v_dual_fmac_f32 v12, v43, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v53, v55, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v47, v52
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v63, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v53, -v53, v55, v62
	v_div_fmas_f32 v53, v53, v58, v55
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v53, v10, v40
	v_div_scale_f32 v40, vcc_lo, v42, v60, v42
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v10, v45, v10 :: v_dual_mul_f32 v43, v40, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, s0, v41, v54, v41
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v10.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v64, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v45, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v7, v7
	v_and_b32_e32 v53, 1, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v43, v11, v12
	v_fma_f32 v57, -v65, v46, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v7, v47, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v47, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v10, v53, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v7, -v64, v43, v40
	v_fmac_f32_e32 v46, v57, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v7, v12, v43
	v_fma_f32 v40, -v65, v46, v45
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v45, v56, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.h, 0x7fff, v11.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v12, v60, v42
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v40, v52, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v46, v47, v58
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v39, v11
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, null, v43, v43, v37
	v_div_fixup_f32 v12, v40, v54, v41
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v53.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v10.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v41, 1.0, v46
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v38, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v40, v45
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v41, v41, v36
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v42, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v11.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v33
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v39, -v45, v40, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.h, v4.h
	v_add3_u32 v44, v10, v44, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v38, 1, v38
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v12, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v11, v38, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v42, v13, v42
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v13, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v46, s0, v36, v41, v36
	v_fmac_f32_e32 v40, v39, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, vcc_lo, v37, v43, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v55, v46, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v13, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v52, v47, v40
	v_fma_f32 v39, -v12, v55, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v45, v52, v47
	v_fmac_f32_e32 v55, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v54, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v12, -v12, v55, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v39, v54, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v10, v40
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v44.h, s1
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v13
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v45, v52, v47
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.h, v4.h
	v_cndmask_b16 v10.l, 0x7fff, v38.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v44, null, v11, v11, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v40, v52
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v40, v44
	v_div_fmas_f32 v12, v12, v42, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v43, v37
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, null, v39, v39, v32
	v_div_fixup_f32 v12, v12, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v35, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v44, v40, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v36, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v34, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v40, v35, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v13.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v41, v41
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v42, vcc_lo, v33, v11, v33
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v37, v36, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v46, v42, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v38, v41, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v41, -v44, v46, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v13, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v34, v35, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v36, v43, v36
	v_div_scale_f32 v43, s0, v32, v39, v32
	v_div_scale_f32 v41, null, v38, v38, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v13, 1.0, v34 :: v_dual_mul_f32 v48, v43, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v44, v46, v42
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v47.h, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v42, null, v13, v13, v29
	v_fma_f32 v35, -v37, v48, v43
	v_div_fmas_f32 v34, v34, v40, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v40, v42
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v48, v35, v36
	v_rcp_f32_e32 v35, v41
	v_div_fixup_f32 v11, v34, v11, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v48, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v12, v45, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v30, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v42, v40, 1.0
	v_div_fmas_f32 v36, v37, v36, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v35, 1.0
	v_div_scale_f32 v33, vcc_lo, v28, v38, v28
	v_fmac_f32_e32 v40, v34, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v36, v39, v32
	v_fmac_f32_e32 v35, v37, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v4.h
	v_mov_b16_e32 v4.l, v11.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v31, v32
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v30, v33, v35
	v_div_scale_f32 v31, s2, v29, v13, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v41, v30, v33
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v37, v31, v40 :: v_dual_fmac_f32 v30, v36, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v34, v34
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v42, v37, v31
	v_fma_f32 v33, -v41, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v36, v40
	v_div_fmas_f32 v30, v33, v35, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v33, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v32, v34, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v31, -v42, v37, v31
	v_div_fixup_f32 v28, v30, v38, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v31, v31, v40, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v26, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v31, v13, v29
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v29, v33, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v32, v32, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v26, v26
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v27, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v12.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v27, v31
	v_div_scale_f32 v28, null, v29, v29, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v39
	v_add3_u32 v30, v12, v35, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v31, v27, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v4
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v27, v35, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v11, v34, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v34, v28
	v_div_scale_f32 v35, s0, v24, v32, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v13.h
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_and_b32_e32 v12, 1, v4
	v_mov_b16_e32 v11.h, v4.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v28, v34, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v30.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v26, v12, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v30, v35, v27
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v9, s1, v25, v29, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v37, -v31, v30, v35
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v30, v37, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v38, v9, v34
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v31, v30, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v36, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v28, v38, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v4.h
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v38, v8, v34
	v_div_fmas_f32 v8, v13, v27, v30
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v13, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v6, -v28, v38, v9
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_ldexp_f32 v9, v36, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v5, v6, v34, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v13, v37
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v6, 1.0, v9 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v5, v29, v25
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v8, v32, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v23, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v13, v13, v20
	v_div_scale_f32 v34, s0, v20, v13, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v5.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v23, v24
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v9, v25, v9
	v_ldexp_f32 v26, v27, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v5, v31, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v24, v23, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v29, null, v9, v9, v17
	v_fmac_f32_e32 v23, v27, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v27, v29
	v_mul_f32_e32 v38, v34, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v29, v27, 1.0
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v30, null, v6, v6, v21
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v22, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, vcc_lo, v21, v6, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v30
	v_div_scale_f32 v39, s2, v17, v9, v17
	v_fma_f32 v22, -v30, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v22, v11
	v_mul_f32_e32 v32, v25, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v30, v32, v25
	v_fmac_f32_e32 v32, v37, v11
	v_fma_f32 v37, -v24, v38, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v30, v32, v25
	v_fmac_f32_e32 v38, v37, v23
	v_mul_f32_e32 v37, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v25, v11, v32
	v_fma_f32 v24, -v24, v38, v34
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v29, v37, v39
	v_div_fixup_f32 v6, v11, v6, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v24, v23, v38
	v_fmac_f32_e32 v37, v25, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v8.h
	v_cmp_o_f32_e64 s0, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v23, v13, v20
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v29, v37, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v4
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v19, v6 :: v_dual_mul_f32 v11, v18, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v26, v26, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v8, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v6.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v28, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v36.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v22, v28, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s1, v16, v26, v16
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v40, v35, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v30, -v22, v40, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v40, v30, v28
	v_fma_f32 v8, -v22, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v28, v40
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v13, v13, v27, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v8, v26, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v13, v9, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v9.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v14, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v4
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v15, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v31.h, vcc_lo
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v4.l, v8.h
	v_add3_u32 v13, v6, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v14.l, v5.h
	v_mov_b16_e32 v14.h, v4.h
	v_add3_u32 v6, v11, v9, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b32_e32 v11, 0x7632
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v4, v8, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v8, v8
	v_cmp_o_f32_e64 s2, v5, v5
	v_cndmask_b32_e64 v8, 0x3276, v11, s0
	v_add3_u32 v9, v5, v9, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e64 v5, v44, v7, s0
	v_lshl_or_b32 v6, v8, 8, v8
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s2
	v_cndmask_b32_e64 v7, v7, v44, s0
	v_cndmask_b32_e64 v8, v33, v10, s0
	v_cndmask_b32_e64 v9, v10, v33, s0
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v10, v13, v12, s0
	v_cndmask_b32_e64 v11, v12, v13, s0
	v_cndmask_b32_e64 v12, v4, v19, s0
	v_cndmask_b32_e64 v4, v19, v4, s0
	v_lshl_or_b32 v6, v6, 4, v6
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x7060706, v6
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v7, v5, v0
	v_perm_b32 v6, v9, v8, v0
	v_perm_b32 v5, v7, v5, v13
	v_perm_b32 v7, v9, v8, v13
	v_perm_b32 v8, v11, v10, v0
	v_perm_b32 v9, v11, v10, v13
	v_perm_b32 v10, v14, v12, v0
	v_add_lshl_u32 v0, v2, v1, 1
	v_perm_b32 v11, v14, v12, v13
	v_add_lshl_u32 v1, v2, v3, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[12:15], 0 offen
	buffer_store_b128 v[8:11], v1, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 120
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6960
; TotalNumSgprs: 46
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 120
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
