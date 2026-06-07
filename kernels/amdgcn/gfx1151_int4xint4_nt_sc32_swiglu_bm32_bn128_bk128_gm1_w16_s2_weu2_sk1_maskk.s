	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v25, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v26, 0xe0, v0
	v_and_b32_e32 v11, 0x108, v0
                                        ; implicit-def: $vgpr29
	v_and_b32_e32 v30, 8, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s18, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s18, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s19, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s6, s19
	s_abs_i32 s17, s2
	s_cvt_f32_u32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	v_readfirstlane_b32 s16, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 12, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s19
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s17, s17, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s17, s21, s17
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s20
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s17, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s34, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s19
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v6, s34, v3
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s6, s3, 4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s6, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s27, s2, 5
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s6, v25
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s21, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v5
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v5
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_or_b32_e32 v7, s27, v2
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v5, v6, v1, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s34, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 16, v4
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s33, s19, 5
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, v7, s34, v[4:5]
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s2, s26, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[7:8], null, s26, s34, v[5:6]
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_mad_u64_u32 v[4:5], null, s2, s34, v[5:6]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s4, s5
	s_and_b32 s18, s3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v8, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b32 v10, v6, s[28:31], 0 offen
	buffer_load_b32 v4, v4, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_bfe_i32 v6, v0, 5, 1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 0x17f, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v9, 0x77c, v9
	s_mov_b32 s5, -1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v12, v5, v7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v6, v6, v9
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshl_or_b32 v7, v25, 4, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v33, 0, v12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v34, 0, v6
	v_lshlrev_b32_e32 v6, 3, v26
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v33, v8 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v10, v4 offset1:8
                                        ; implicit-def: $vgpr4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v4, 8, v0
	v_and_or_b32 v29, 0x70, v5, v6
	s_mov_b32 s5, 0
.LBB0_2:                                ; %Flow129
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_xor_b32_e32 v8, 8, v7
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v28, 16, v2
	v_bfe_u32 v27, v0, 4, 1
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v31, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v32, 0, v8
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v22, 0
	s_lshl_b32 s1, s7, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v29, 0x70, v5, v6
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v7, s17, 8, v26
	s_lshl_b32 s17, s17, 7
	s_lshl_b32 s18, s16, 8
	v_add3_u32 v5, s7, s17, v3
	v_and_or_b32 v6, 0x88, v4, v29
	v_add_nc_u32_e32 v4, s1, v7
	v_or_b32_e32 v3, s17, v3
	s_lshl_b32 s16, s16, 7
	v_subrev_nc_u32_e32 v38, s18, v7
	v_add3_u32 v9, s27, v28, v25
	v_subrev_nc_u32_e32 v37, s18, v4
	v_subrev_nc_u32_e32 v4, s16, v5
	v_subrev_nc_u32_e32 v5, s16, v3
	s_mov_b32 s16, 0
	v_mul_lo_u32 v9, s33, v9
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s27, v2
	v_mad_u64_u32 v[2:3], null, s34, v4, s[6:7]
	v_mad_u64_u32 v[3:4], null, s34, v5, s[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s34, v10, s[6:7]
	v_xor_b32_e32 v8, 8, v6
	s_add_i32 s6, s6, 16
	v_sub_nc_u32_e32 v35, s34, v1
	v_add3_u32 v40, v2, v1, 16
	v_add3_u32 v41, v3, v1, 16
	v_add_nc_u32_e32 v44, 0, v6
	v_add3_u32 v42, v4, v25, 16
	v_add_nc_u32_e32 v45, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_lshlrev_b32 v36, 1, v27
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v39, 1, v9
	v_dual_mov_b32 v4, s19 :: v_dual_add_nc_u32 v43, s6, v25
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s0, s5, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s35, s7, 2
	s_lshl_b32 s44, s0, 4
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v46, s16, v43
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s0, s6, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v47, s16, v42
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s0, v35
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v48, s16, v41
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s34, v46
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_add_nc_u32_e32 v49, s16, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s16, s16, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v50, v36, v38
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s4
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v51, v36, v37
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v46, 0x80000000, v47, s0
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v47, 0x80000000, v49, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s44, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v72, v46, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e32 v46, 0x80000000, v48, vcc_lo
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v73, v39, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xf
	buffer_load_u16 v74, v50, s[40:43], 0 offen offset:4
	buffer_load_u16 v75, v50, s[40:43], 0 offen
	buffer_load_u16 v76, v51, s[40:43], 0 offen offset:4
	buffer_load_u16 v77, v51, s[40:43], 0 offen
	buffer_load_u16 v78, v50, s[40:43], 0 offen offset:12
	buffer_load_u16 v79, v50, s[40:43], 0 offen offset:8
	buffer_load_u16 v80, v51, s[40:43], 0 offen offset:12
	buffer_load_u16 v81, v51, s[40:43], 0 offen offset:8
	buffer_load_u16 v82, v50, s[40:43], 0 offen offset:20
	buffer_load_u16 v83, v50, s[40:43], 0 offen offset:16
	buffer_load_u16 v84, v51, s[40:43], 0 offen offset:20
	buffer_load_u16 v85, v51, s[40:43], 0 offen offset:16
	buffer_load_u16 v86, v50, s[40:43], 0 offen offset:28
	buffer_load_u16 v87, v50, s[40:43], 0 offen offset:24
	buffer_load_u16 v88, v51, s[40:43], 0 offen offset:28
	buffer_load_u16 v89, v51, s[40:43], 0 offen offset:24
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b32 v90, v46, s[28:31], 0 offen
	buffer_load_b32 v91, v47, s[28:31], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[60:63], v44 offset1:4
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	ds_load_b64 v[68:69], v31 offset:4096
	ds_load_b64 v[70:71], v32 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[64:67], v45 offset1:4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b8 v33, v72 offset:4096
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v90, v91 offset1:8
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[60:61], v[68:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[54:61], v[62:63], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[70:71], v[46:53] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[54:61], v[66:67], v[70:71], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v64, 16, v75
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v62, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v46, v62, v46
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v23, v46, v64
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v52, v62, v52 :: v_dual_lshlrev_b32 v63, 16, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v60, v62, v60 :: v_dual_lshlrev_b32 v67, 16, v78
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v62, v53 :: v_dual_lshlrev_b32 v68, 16, v79
	v_mul_f32_e32 v47, v62, v47
	v_mul_f32_e32 v49, v62, v49
	v_dual_mul_f32 v48, v62, v48 :: v_dual_add_nc_u32 v37, s35, v37
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v54, v62, v54
	v_dual_mul_f32 v55, v62, v55 :: v_dual_add_nc_u32 v38, s35, v38
	v_dual_mul_f32 v56, v62, v56 :: v_dual_add_nc_u32 v39, 2, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v50, v62, v50 :: v_dual_lshlrev_b32 v65, 16, v76
	v_dual_mul_f32 v51, v62, v51 :: v_dual_lshlrev_b32 v66, 16, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v58, v62, v58 :: v_dual_lshlrev_b32 v69, 16, v80
	v_dual_mul_f32 v59, v62, v59 :: v_dual_lshlrev_b32 v70, 16, v81
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v24, v47, v63 :: v_dual_lshlrev_b32 v71, 16, v82
	v_dual_fmac_f32 v20, v48, v68 :: v_dual_lshlrev_b32 v73, 16, v83
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v61, v62, v61 :: v_dual_lshlrev_b32 v74, 16, v84
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v21, v49, v67 :: v_dual_lshlrev_b32 v76, 16, v86
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v75, 16, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v16, v50, v73 :: v_dual_lshlrev_b32 v77, 16, v87
	v_dual_fmac_f32 v17, v51, v71 :: v_dual_lshlrev_b32 v78, 16, v88
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v18, v56, v70 :: v_dual_lshlrev_b32 v79, 16, v89
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v57, v62, v57 :: v_dual_fmac_f32 v10, v53, v76
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v13, v52, v77 :: v_dual_fmac_f32 v14, v58, v75
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v9, v54, v66 :: v_dual_fmac_f32 v22, v55, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v19, v57, v69
	v_fmac_f32_e32 v15, v59, v74
	v_dual_fmac_f32 v11, v60, v79 :: v_dual_fmac_f32 v12, v61, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v4, v30
.LBB0_6:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v31 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[1:2], v32 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v30, 0, 1, s2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v5, 0x88, 0, vcc_lo
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v29, v29, v5
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s0, 1, v30
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v31, 8, v29
	v_add_nc_u32_e32 v42, 0, v29
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v41, 0, v31
	v_mov_b32_e32 v31, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[6:7], v42
	ds_load_b64 v[38:39], v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v30, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v30
	v_mov_b32_e32 v32, v30
	v_mov_b32_e32 v33, v30
	v_mov_b32_e32 v34, v30
	v_mov_b32_e32 v35, v30
	v_mov_b32_e32 v36, v30
	v_mov_b32_e32 v37, v30
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[6:7], v[3:4], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[38:39], v[1:2], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v7, v30
	v_cvt_f32_i32_e32 v8, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v6, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v32, v37
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v40, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[34:35], v42 offset:2048
	ds_load_b64 v[45:46], v41 offset:2048
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_mov_b32_e32 v37, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v39, v37
	v_mov_b32_e32 v40, v37
	v_mov_b32_e32 v41, v37
	v_mov_b32_e32 v42, v37
	v_mov_b32_e32 v43, v37
	v_mov_b32_e32 v44, v37
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[34:35], v[3:4], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[45:46], v[1:2], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v5, v37
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v34, v41
	v_cvt_f32_i32_e32 v36, v42
	v_cvt_f32_i32_e32 v35, v43
	v_cvt_f32_i32_e32 v39, v44
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v3, v28, v25
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v26
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s27, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s3, s5, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v2, s33, v3
	s_add_i32 s0, s0, s3
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v27, v1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s3, s1
	s_mov_b32 s11, 0x31027000
	.loc	1 179 26 is_stmt 0              ; generate_amdgcn.py:179:26
	s_add_i32 s1, s26, s1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 2, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v42, s1, v1, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v25, 4, v1
	v_or_b32_e32 v26, 6, v1
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s0, s1, s7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s8, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v27, 8, v1
	v_or_b32_e32 v28, 10, v1
	v_or_b32_e32 v41, 12, v1
	v_or_b32_e32 v43, 14, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v44, v2, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v42, s2
	v_add_lshl_u32 v42, s1, v4, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v45, s1, v25, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v25, s0, v25, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s1, v26, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v26, s0, v26, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v47, s1, v27, 1
	v_add_lshl_u32 v48, s1, v28, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x9
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v50, v2, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v49, s1, v41, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v28, s0, v28, 1
	v_add_lshl_u32 v27, s0, v27, 1
	v_add_lshl_u32 v1, s0, v41, 1
	v_add_lshl_u32 v41, s0, v43, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v49, s2
	v_add_lshl_u32 v49, s1, v43, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v43, 0x80000000, v49, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x5
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v49, v2, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v52, v1, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	v_mov_b16_e32 v2.h, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v3, s27, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v2.h
	v_mov_b16_e32 v55.h, v2.h
	v_mov_b16_e32 v56.h, v2.h
	v_mov_b16_e32 v58.h, v2.h
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v44
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v40, v40, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v50, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v40, v26, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v23, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v19, v19, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v23, 0xbfb8aa3b, v19 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v5, v5, v44
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v6, v6, v44 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v36, v36, v44 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v5, v51, v9
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v38, v38, v44 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v47, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v36, v28, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v9, v5, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v37, v37, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v33, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v16, v6, s2
	v_cndmask_b32_e64 v15, v15, v28, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v5
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v37, v25, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v30, v30, v44 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v34, v34, v44 :: v_dual_lshlrev_b32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v38, v4, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v8, v8, v44 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v33, v46, v21
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v34, v27, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v22, v4, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v42, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v21, v33, s2
	v_cndmask_b32_e64 v14, v14, v27, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v39, v39, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_mul_f32_e32 v21, 0xbfb8aa3b, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v24, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v31, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v24
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s4
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v30, v48, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v29, v29, v44 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v21, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v17, v30, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v35, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v31, v45, v20
	v_fma_f32 v29, v29, v49, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v23, v23, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v32, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v21, v21, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v20, v31, s2
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v43, v10
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v35, v52, v11
	v_fma_f32 v35, v39, v41, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v13, v29, s2
	v_cndmask_b32_e64 v10, v10, v32, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v11, v34, s2
	v_cndmask_b32_e64 v12, v12, v35, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v15
	v_mul_f32_e32 v26, 0xbfb8aa3b, v11
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v21, v21, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s2
	v_mul_f32_e32 v27, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v27
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_ldexp_f32 v25, v25, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v23, v23, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v12
	v_exp_f32_e32 v26, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v22, v22, v31
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v16, v16, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v45, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v33
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v29, vcc_lo, v4, v21, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v26, v26, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v28, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v27, v27, v34
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v16, v16, v5
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v22, v22, v18
	v_fma_f32 v60, -v32, v45, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v27, v27, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v34
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v38, null, v24, v24, v14
	v_rcp_f32_e32 v49, v40
	v_div_scale_f32 v36, null, v25, v25, v15
	v_rcp_f32_e32 v44, v30
	v_fmac_f32_e32 v45, v60, v45
	v_div_scale_f32 v42, null, v26, v26, v11
	v_rcp_f32_e32 v48, v38
	v_fma_f32 v61, -v34, v46, 1.0
	v_rcp_f32_e32 v47, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v35, s2, v18, v22, v18
	v_fma_f32 v64, -v40, v49, 1.0
	v_fmac_f32_e32 v46, v61, v46
	v_fma_f32 v59, -v30, v44, 1.0
	v_div_scale_f32 v31, s0, v5, v16, v5
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v63, -v38, v48, 1.0
	v_dual_fmac_f32 v49, v64, v49 :: v_dual_mul_f32 v52, v29, v43
	v_mul_f32_e32 v61, v35, v46
	v_fma_f32 v62, -v36, v47, 1.0
	v_fma_f32 v65, -v42, v50, 1.0
	v_fmac_f32_e32 v44, v59, v44
	v_div_scale_f32 v33, s1, v19, v23, v19
	v_div_scale_f32 v39, s4, v14, v24, v14
	v_fma_f32 v69, -v34, v61, v35
	v_dual_fmac_f32 v48, v63, v48 :: v_dual_fmac_f32 v47, v62, v47
	v_dual_fmac_f32 v50, v65, v50 :: v_dual_mul_f32 v59, v31, v44
	v_fma_f32 v66, -v28, v52, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v69, v46
	v_dual_mul_f32 v60, v33, v45 :: v_dual_mul_f32 v63, v39, v48
	v_div_scale_f32 v41, s5, v12, v27, v12
	v_fma_f32 v67, -v30, v59, v31
	v_div_scale_f32 v37, s3, v15, v25, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v38, v63, v39
	v_fmac_f32_e32 v52, v66, v43
	v_div_scale_f32 v51, s6, v11, v26, v11
	v_dual_mul_f32 v64, v41, v49 :: v_dual_fmac_f32 v59, v67, v44
	v_fmac_f32_e32 v63, v71, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v28, v52, v29
	v_dual_mul_f32 v62, v37, v47 :: v_dual_mul_f32 v65, v51, v50
	v_fma_f32 v68, -v32, v60, v33
	v_fma_f32 v29, -v30, v59, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v36, v62, v37
	v_fma_f32 v73, -v42, v65, v51
	v_fmac_f32_e32 v60, v68, v45
	v_div_fmas_f32 v29, v29, v44, v59
	v_fma_f32 v31, -v34, v61, v35
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v65, v73, v50
	v_fma_f32 v30, -v32, v60, v33
	v_div_fixup_f32 v5, v29, v16, v5
	v_fmac_f32_e32 v62, v70, v47
	v_fma_f32 v72, -v40, v64, v41
	v_fma_f32 v33, -v38, v63, v39
	v_div_fmas_f32 v30, v30, v45, v60
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v7, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v32, -v36, v62, v37
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v28, v21, v4
	v_div_fmas_f32 v21, v31, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v30, v23, v19
	v_fmac_f32_e32 v64, v72, v49
	v_div_fmas_f32 v16, v32, v47, v62
	s_mov_b32 vcc_lo, s4
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v8, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v8, v33, v48, v63
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v40, v64, v41
	v_fma_f32 v35, -v42, v65, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v8, v24, v14
	v_div_fixup_f32 v15, v16, v25, v15
	v_div_fmas_f32 v7, v34, v49, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v18, v21, v22, v18
	v_div_fmas_f32 v16, v35, v50, v65
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v7, v27, v12
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v12, v17, v15 :: v_dual_and_b32 v15, 1, v2
	v_mul_f32_e32 v14, v20, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v16, v26, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v55.l, v5.h
	v_mov_b16_e32 v2.l, v9.h
	v_add3_u32 v4, v4, v15, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v10, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v14.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v10, v13, v11 :: v_dual_and_b32 v15, 1, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v2
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v8, 1, v55
	v_cmp_o_f32_e64 s4, v6, v6
	v_and_b32_e32 v13, 1, v56
	v_mov_b16_e32 v58.l, v10.h
	v_add3_u32 v6, v6, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v9, v9, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v53, vcc_lo
	v_add3_u32 v5, v5, v8, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	v_and_b32_e32 v6, 1, v58
	v_cmp_o_f32_e64 s2, v14, v14
	v_mov_b16_e32 v2.l, v12.h
	v_cmp_o_f32_e64 s6, v10, v10
	v_add3_u32 v0, v14, v13, 0x7fff
	v_add3_u32 v6, v10, v6, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s5, v7, v7
	v_cndmask_b16 v9.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s6
	v_and_b32_e32 v8, 1, v2
	v_mov_b16_e32 v2.l, v7.h
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s0
	v_lshl_or_b32 v10, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v8, v12, v8, 0x7fff
	v_cndmask_b32_e32 v12, 0x3276, v54, vcc_lo
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v6, 0x540054, v10
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v10, v3, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s3
	v_lshl_or_b32 v11, v12, 8, v12
	v_add3_u32 v2, v7, v2, 0x7fff
	v_lshl_or_b32 v3, v6, 4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, v5, v4 :: v_dual_and_b32 v7, 0x760076, v11
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, v4, v5 :: v_dual_and_b32 v3, 0x5040504, v3
	v_lshl_or_b32 v4, v7, 4, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, v9, v0 :: v_dual_cndmask_b32 v6, v0, v9
	v_permlanex16_b32 v2, v2, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v7, 0x78, v1, s26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v4, 0x7060706, v4
	v_permlanex16_b32 v5, v5, s8, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s26, s10
	v_perm_b32 v0, v2, v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v2, v8, v4
	v_perm_b32 v2, v5, v6, v3
	v_perm_b32 v3, v5, v6, v4
	v_add_lshl_u32 v4, v7, v10, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 92
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5240
; TotalNumSgprs: 47
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 92
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
