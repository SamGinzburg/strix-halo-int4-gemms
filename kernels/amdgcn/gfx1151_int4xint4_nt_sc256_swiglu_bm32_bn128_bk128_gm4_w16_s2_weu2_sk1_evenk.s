	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s17, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v29, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v4, 16, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
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
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, v4, v3
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s20, s4, s16
	s_sub_i32 s14, s20, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s14, s7
	s_sub_i32 s2, s2, s4
	s_mov_b32 s4, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s2, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s17, 0xff
	v_or_b32_e32 v30, s21, v1
.Ltmp13:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s2, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v1, s21, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow132
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v26, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	s_load_b256 s[4:11], s[0:1], 0x0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_and_b32_e32 v7, 0xe0, v0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s17, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s2, 31
	v_lshlrev_b32_e32 v9, 2, v0
	v_lshlrev_b32_e32 v10, 6, v3
	v_lshrrev_b32_e32 v12, 2, v7
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s17, s17, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v1, 2, v3
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v3, s21, v4, v3
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v6, 3, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v8, 3, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s28, s2, 8
	v_and_or_b32 v15, 0x438, v9, v10
	v_xor_b32_e32 v16, v9, v12
	v_lshlrev_b32_e32 v12, 5, v7
	v_and_b32_e32 v9, 56, v9
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v3, s28, v3
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v5, 56, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v7, s20, 8, v7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v11, 64, v8
	v_or3_b32 v20, v12, v9, v10
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s20, s20, 7
	v_or_b32_e32 v9, s3, v5
	v_or_b32_e32 v10, s3, v1
	s_add_i32 s30, s3, 64
	s_add_i32 s3, s15, s20
	v_lshl_add_u32 v4, s15, 1, v7
	v_and_b32_e32 v13, 56, v29
	v_xor_b32_e32 v24, 56, v15
	v_xor_b32_e32 v27, 16, v20
	v_lshlrev_b32_e32 v37, 1, v3
	v_add_nc_u32_e32 v2, s21, v2
	v_add_nc_u32_e32 v3, s3, v11
	s_lshl_b32 s22, s16, 8
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s17, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s16, s16, 7
	v_xor_b32_e32 v21, 32, v15
	v_subrev_nc_u32_e32 v35, s22, v4
	v_add_nc_u32_e32 v4, s3, v8
	v_xor_b32_e32 v6, v6, v13
	v_add_nc_u32_e32 v12, 64, v9
	v_add_nc_u32_e32 v13, 64, v10
	v_sub_nc_u32_e32 v32, s17, v1
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v10
	v_cmp_gt_i32_e64 s0, 0x80, v9
	v_add_nc_u32_e32 v47, 0, v24
	v_add_nc_u32_e32 v50, 0, v27
	v_mov_b32_e32 v27, 0
	v_mad_u64_u32 v[9:10], null, s17, v2, v[1:2]
	v_or_b32_e32 v2, s20, v11
	v_mov_b32_e32 v24, 0
	v_subrev_nc_u32_e32 v1, s16, v3
	v_or_b32_e32 v3, s20, v8
	v_add_nc_u32_e32 v44, 0, v21
	v_mov_b32_e32 v21, 0
	v_subrev_nc_u32_e32 v4, s16, v4
	v_mad_u64_u32 v[10:11], null, s17, v1, v[5:6]
	v_subrev_nc_u32_e32 v1, s16, v2
	v_subrev_nc_u32_e32 v2, s16, v3
	v_xor_b32_e32 v17, 8, v15
	v_xor_b32_e32 v18, 16, v15
	v_xor_b32_e32 v19, 24, v15
	v_xor_b32_e32 v22, 40, v15
	v_xor_b32_e32 v23, 48, v15
	v_xor_b32_e32 v25, 8, v20
	v_xor_b32_e32 v28, 24, v20
	v_xor_b32_e32 v31, 32, v20
	v_xor_b32_e32 v53, 40, v20
	v_xor_b32_e32 v54, 48, v20
	v_xor_b32_e32 v55, 56, v20
	v_cmp_gt_i32_e64 s2, 0x80, v12
	v_mad_u64_u32 v[11:12], null, s17, v4, v[5:6]
	v_add_nc_u32_e32 v48, 0, v20
	v_mov_b32_e32 v20, 0
	v_cmp_gt_i32_e64 s1, 0x80, v13
	v_mad_u64_u32 v[12:13], null, s17, v1, v[5:6]
	v_mad_u64_u32 v[13:14], null, s17, v2, v[5:6]
	v_sub_nc_u32_e32 v33, s17, v5
	v_and_b32_e32 v34, 2, v8
	v_subrev_nc_u32_e32 v36, s22, v7
	v_add_nc_u32_e32 v39, 0, v6
	v_dual_mov_b32 v1, s36 :: v_dual_add_nc_u32 v38, 0, v16
	v_add_nc_u32_e32 v40, 0, v15
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v41, 0, v17
	v_add_nc_u32_e32 v42, 0, v18
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v43, 0, v19
	v_add_nc_u32_e32 v45, 0, v22
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v46, 0, v23
	v_add_nc_u32_e32 v49, 0, v25
	v_add_nc_u32_e32 v51, 0, v28
	v_add_nc_u32_e32 v52, 0, v31
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_dual_mov_b32 v2, s37 :: v_dual_add_nc_u32 v55, 0, v55
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v17, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s15, 2
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v64, s30, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s30, 64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v65, s30, v13
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v66, s30, v12
	.loc	1 171 29 is_stmt 1              ; generate_amdgcn.py:171:29
	v_add_nc_u32_e32 v67, s30, v11
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v32
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_add_nc_u32_e32 v68, s30, v10
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s4, v33
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v56, 64, v64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v57, 64, v65
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v58, 64, v66
	.loc	1 171 29 is_stmt 1              ; generate_amdgcn.py:171:29
	v_subrev_nc_u32_e32 v59, 64, v67
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_subrev_nc_u32_e32 v60, 64, v68
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v56, 0x80000000, v56, s3
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v57, 0x80000000, v57, s4
	v_cndmask_b32_e64 v58, 0x80000000, v58, s4
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v61, 0x80000000, v59, s4
	v_cndmask_b32_e64 v62, 0x80000000, v60, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v69, v56, s[16:19], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x3
	buffer_load_b64 v[56:57], v57, s[20:23], 0 offen
	buffer_load_b64 v[58:59], v58, s[20:23], 0 offen
	buffer_load_b64 v[60:61], v61, s[20:23], 0 offen
	buffer_load_b64 v[62:63], v62, s[20:23], 0 offen
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s30, v32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s30, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s28, s28, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s30, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v64, 0x80000000, v64, s3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s28, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v86, 0x80000000, v65, s3
	v_cndmask_b32_e64 v87, 0x80000000, v66, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v90, v64, s[16:19], 0 offen
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v88, 0x80000000, v67, s3
	v_cndmask_b32_e64 v89, 0x80000000, v68, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v38, v69 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v39, v[56:57], v[58:59] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v39, v[60:61], v[62:63] offset0:16 offset1:24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[78:79], v40 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[70:73], v48 offset1:16
	ds_load_2addr_stride64_b64 v[74:77], v49 offset1:16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[80:81], v41 offset:16384
	ds_load_b64 v[82:83], v42 offset:16384
	ds_load_b64 v[84:85], v43 offset:16384
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[70:71], v[78:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[72:73], v[78:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[74:75], v[80:81], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[76:77], v[80:81], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v50 offset1:16
	ds_load_2addr_stride64_b64 v[76:79], v51 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[82:83], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[82:83], v[64:71] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[80:81], v44 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v52 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[76:77], v[84:85], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[78:79], v[84:85], v[64:71] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[76:77], v45 offset:16384
	ds_load_b64 v[78:79], v46 offset:16384
	ds_load_b64 v[82:83], v47 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[80:81], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[80:81], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v53 offset1:16
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	s_clause 0x2
	buffer_load_b64 v[80:81], v86, s[20:23], 0 offen
	buffer_load_b64 v[84:85], v87, s[20:23], 0 offen
	buffer_load_b64 v[86:87], v88, s[20:23], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[76:77], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[76:77], v[64:71] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	buffer_load_b64 v[76:77], v89, s[20:23], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v54 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[78:79], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[78:79], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v55 offset1:16
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v38, v90 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v39, v[80:81], v[84:85] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v39, v[86:87], v[76:77] offset0:16 offset1:24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[82:83], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[82:83], v[64:71] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[80:81], v40 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v48 offset1:16
	ds_load_2addr_stride64_b64 v[76:79], v49 offset1:16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[82:83], v41 offset:16384
	ds_load_b64 v[84:85], v42 offset:16384
	ds_load_b64 v[86:87], v43 offset:16384
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[80:81], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[80:81], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v50 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[76:77], v[82:83], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[78:79], v[82:83], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v51 offset1:16
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	ds_load_b64 v[88:89], v44 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[84:85], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[84:85], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v52 offset1:16
	ds_load_2addr_stride64_b64 v[80:83], v53 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[76:77], v[86:87], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[78:79], v[86:87], v[64:71] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[76:77], v45 offset:16384
	ds_load_b64 v[84:85], v46 offset:16384
	ds_load_b64 v[86:87], v47 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[88:89], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[88:89], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[72:75], v54 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[80:81], v[76:77], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[82:83], v[76:77], v[64:71] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v55 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[72:73], v[84:85], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[74:75], v[84:85], v[64:71] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[76:77], v[86:87], v[56:63] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[78:79], v[86:87], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v91, v34, v36
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v80, v37, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v81, v91, s[8:11], 0 offen
	buffer_load_u16 v82, v91, s[8:11], 0 offen offset:4
	buffer_load_u16 v83, v91, s[8:11], 0 offen offset:8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v80, 16, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v56, v80, v56
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v27, v56, v81 :: v_dual_add_nc_u32 v92, v34, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v80, v61
	v_mul_f32_e32 v58, v80, v58
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0xc
	buffer_load_u16 v72, v91, s[8:11], 0 offen offset:12
	buffer_load_u16 v73, v92, s[8:11], 0 offen
	buffer_load_u16 v74, v92, s[8:11], 0 offen offset:4
	buffer_load_u16 v75, v92, s[8:11], 0 offen offset:8
	buffer_load_u16 v84, v92, s[8:11], 0 offen offset:12
	buffer_load_u16 v76, v91, s[8:11], 0 offen offset:20
	buffer_load_u16 v77, v91, s[8:11], 0 offen offset:16
	buffer_load_u16 v78, v92, s[8:11], 0 offen offset:20
	buffer_load_u16 v79, v92, s[8:11], 0 offen offset:16
	buffer_load_u16 v85, v91, s[8:11], 0 offen offset:28
	buffer_load_u16 v86, v91, s[8:11], 0 offen offset:24
	buffer_load_u16 v87, v92, s[8:11], 0 offen offset:28
	buffer_load_u16 v88, v92, s[8:11], 0 offen offset:24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v60, v80, v60 :: v_dual_add_nc_u32 v37, 2, v37
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v70, v80, v70 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_mul_f32 v66, v80, v66 :: v_dual_add_nc_u32 v35, s29, v35
	v_dual_mul_f32 v67, v80, v67 :: v_dual_add_nc_u32 v36, s29, v36
	v_dual_mul_f32 v69, v80, v69 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v57, v80, v57
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v65, v80, v65
	v_mul_f32_e32 v64, v80, v64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v59, v80, v59
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v80, v68
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v22, v58, v83
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v71, v80, v71
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v62, v80, v62
	v_dual_mul_f32 v63, v80, v63 :: v_dual_fmac_f32 v28, v57, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v77, 16, v77
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v73, 16, v73
	v_lshlrev_b32_e32 v74, 16, v74
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v19, v60, v77 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v23, v59, v72 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v24, v66, v75 :: v_dual_lshlrev_b32 v85, 16, v85
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v31, v65, v74 :: v_dual_lshlrev_b32 v88, 16, v88
	v_fmac_f32_e32 v25, v67, v84
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v15, v62, v86 :: v_dual_lshlrev_b32 v76, 16, v76
	v_dual_fmac_f32 v14, v63, v85 :: v_dual_lshlrev_b32 v79, 16, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v26, v64, v73 :: v_dual_fmac_f32 v17, v70, v88
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v18, v61, v76 :: v_dual_fmac_f32 v21, v68, v79
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v20, v69, v78
	v_fmac_f32_e32 v16, v71, v87
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v5, v29
	v_mov_b32_e32 v1, v30
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v26
	v_dual_mul_f32 v4, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v21
	v_dual_mul_f32 v10, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x78, v5
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.h, 0
	v_and_b32_e32 v0, 16, v0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v6, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.h, v13.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v4, v5
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v6, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v24
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v25
	v_ldexp_f32 v3, v4, v3
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v6, v6, v7
	v_exp_f32_e32 v7, v8
	v_exp_f32_e32 v10, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v3, v3, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v5, v7, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v10, v10, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v7, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, vcc_lo, v31, v3, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v21
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v6, v6, v26
	v_fma_f32 v35, -v30, v7, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, s0, v26, v6, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v9, v32
	v_fmac_f32_e32 v7, v35, v7
	v_div_scale_f32 v35, null, v5, v5, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v33, v33
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v39, v34, v7
	v_rcp_f32_e32 v42, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v32, v9, 1.0
	v_fma_f32 v43, -v30, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v9, v36, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v39, v43, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v8, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v40, v37, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v30, v39, v34
	v_fma_f32 v44, -v32, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v7, v30, v7, v39
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v4, v8, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v9
	v_div_fixup_f32 v3, v7, v3, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v44, -v35, v42, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v7, v33, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_mul_f32 v3, v28, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, null, v10, v10, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v43, s1, v25, v10, v25
	v_rcp_f32_e32 v36, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v3.h
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v38, v36, 1.0
	v_fmac_f32_e32 v36, v8, v36
	v_fma_f32 v8, -v32, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v8, v9, v40
	v_div_scale_f32 v9, s0, v24, v5, v24
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v8, v6, v26
	v_mul_f32_e32 v8, v9, v42
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v27, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v35, v8, v9
	v_dual_fmac_f32 v8, v27, v42 :: v_dual_and_b32 v27, 1, v13
	v_mul_f32_e32 v30, v43, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v35, v8, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v26, -v38, v30, v43
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v30, v26, v36
	v_div_scale_f32 v26, null, v4, v4, v20
	v_fma_f32 v29, -v38, v30, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v29, v36, v30
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, s4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v12, v10, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v8, v9, v42, v8
	v_div_scale_f32 v12, vcc_lo, v20, v4, v20
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v23, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v11, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v8, v5, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v10.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v22, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v6.h
	v_cmp_o_f32_e64 s3, v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v11, v11, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v6, v28, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s3
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v7
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v7, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v28, null, v6, v6, v21
	v_rcp_f32_e32 v32, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v7, 1.0
	v_fmac_f32_e32 v7, v31, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v5.h
	v_mov_b16_e32 v31.h, v13.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v28, v32, 1.0
	v_mul_f32_e32 v23, v12, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v8, v32
	v_fma_f32 v25, -v26, v23, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v25, v7
	v_fma_f32 v12, -v26, v23, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v7, v12, v7, v23
	v_div_fixup_f32 v4, v7, v4, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v13.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v18, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v9, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v4.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v8, 1.0, v11
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, s0, v21, v6, v21
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v24, null, v8, v8, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v9, v9, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v27, v11, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v24
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v28, v27, v11
	v_div_scale_f32 v29, null, v9, v9, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v22, v32
	v_fma_f32 v22, -v24, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v29
	v_fma_f32 v11, -v28, v27, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v22, v30
	v_div_scale_f32 v22, s1, v16, v8, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v32, v27
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v23, v22, v30
	v_fma_f32 v12, -v29, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v12, v25
	v_div_scale_f32 v12, s2, v17, v9, v17
	v_mul_f32_e32 v27, v12, v25
	v_div_fixup_f32 v6, v11, v6, v21
	v_fma_f32 v11, -v24, v23, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v10, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v26, -v29, v27, v12
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v19, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v23, v11, v30
	v_fmac_f32_e32 v27, v26, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v24, v23, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v6.h
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v29, v27, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v5, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v10, v30, v23
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v25, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s0
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v5, v6, v7, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v11, v9, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v10, v8, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v13.h
	v_cndmask_b16 v18.l, 0x7fff, v12.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v15, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v4, v11, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v14, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v8.h
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_cmp_eq_u32_e64 s0, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v5, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v9, 1, v13
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e64 v10, v7, v3, s0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, v1, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v1, v3, v7, s0
	v_cndmask_b32_e64 v3, v18, v6, s0
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v6, v6, v18, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x7060706, v4
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_or_b32 v8, s14, 7, v2
	s_mov_b32 s15, 0x31027000
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v0, v1, v10, v7
	v_perm_b32 v2, v3, v6, v7
	v_perm_b32 v1, v1, v10, v4
	v_perm_b32 v3, v3, v6, v4
	v_add_lshl_u32 v4, v8, v5, 1
	s_mov_b32 s14, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 93
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4644
; TotalNumSgprs: 46
; NumVgprs: 93
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 93
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     93
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
