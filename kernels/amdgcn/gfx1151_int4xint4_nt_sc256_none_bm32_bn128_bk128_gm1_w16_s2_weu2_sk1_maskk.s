	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v13, 1, v0
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
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s8, s5
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s4, s5, s4
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 16, v1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v2, v4, v3
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
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
	s_xor_b32 s20, s4, s16
	s_sub_i32 s14, s20, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s14, s6
	s_sub_i32 s2, s2, s4
	s_mov_b32 s4, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s2, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s17, 0xff
	v_or_b32_e32 v14, s21, v2
.Ltmp13:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s2, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s21, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow70
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v7, 0xe0, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 95 22 is_stmt 1               ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s17, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp15:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v8, 3, v0
	v_lshlrev_b32_e32 v9, 2, v0
	v_lshrrev_b32_e32 v11, 2, v7
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v6, 3, v0
	v_lshlrev_b32_e32 v10, 6, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s17, s17, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v2, 2, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v3, s21, v4, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
	v_xor_b32_e32 v17, v9, v11
	s_ashr_i32 s28, s2, 8
	v_lshlrev_b32_e32 v11, 5, v7
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v4, s20, 8, v7
	v_lshl_or_b32 v7, s20, 7, v8
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v5, 56, v6
	v_and_or_b32 v15, 0x438, v9, v10
	v_and_b32_e32 v9, 56, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v3, s28, v3
	s_lshl_b32 s20, s16, 8
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v24, s20, v4
	v_or_b32_e32 v4, 64, v7
	v_and_b32_e32 v12, 56, v13
	v_or3_b32 v26, v11, v9, v10
	v_or_b32_e32 v9, s3, v5
	v_or_b32_e32 v10, s3, v2
	s_lshl_b32 s16, s16, 7
	v_lshlrev_b32_e32 v25, 1, v3
	v_add_nc_u32_e32 v1, s21, v1
	v_subrev_nc_u32_e32 v3, s16, v4
	v_xor_b32_e32 v6, v6, v12
	v_add_nc_u32_e32 v11, 64, v9
	v_add_nc_u32_e32 v12, 64, v10
	v_subrev_nc_u32_e32 v4, s16, v7
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s17, 1
	v_xor_b32_e32 v19, 8, v15
	v_xor_b32_e32 v21, 16, v15
	v_xor_b32_e32 v22, 24, v15
	v_xor_b32_e32 v33, 32, v15
	v_xor_b32_e32 v34, 40, v15
	v_xor_b32_e32 v35, 48, v15
	v_xor_b32_e32 v36, 56, v15
	v_xor_b32_e32 v38, 8, v26
	v_xor_b32_e32 v39, 16, v26
	v_xor_b32_e32 v40, 24, v26
	v_xor_b32_e32 v41, 32, v26
	v_xor_b32_e32 v42, 40, v26
	v_xor_b32_e32 v43, 48, v26
	v_xor_b32_e32 v44, 56, v26
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v10
	v_cmp_gt_i32_e64 s0, 0x80, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mad_u64_u32 v[9:10], null, s17, v1, v[2:3]
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v37, 0, v26
	v_mov_b32_e32 v26, 0
	v_cmp_gt_i32_e64 s2, 0x80, v11
	v_mad_u64_u32 v[10:11], null, s17, v3, v[5:6]
	v_add_nc_u32_e32 v27, 0, v17
	v_mov_b32_e32 v17, 0
	v_cmp_gt_i32_e64 s1, 0x80, v12
	v_mad_u64_u32 v[11:12], null, s17, v4, v[5:6]
	v_and_b32_e32 v23, 2, v8
	v_add_nc_u32_e32 v28, 0, v6
	v_add_nc_u32_e32 v29, 0, v15
	v_add_nc_u32_e32 v30, 0, v19
	v_add_nc_u32_e32 v31, 0, v21
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v32, 0, v22
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v43
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v44, 0, v44
	v_sub_nc_u32_e32 v18, s17, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_sub_nc_u32_e32 v20, s17, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v12, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s15, 1
	s_add_i32 s30, s3, 64
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
	v_add_nc_u32_e32 v49, s30, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s30, 64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v50, s30, v11
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v51, s30, v10
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v20
	v_cmp_lt_i32_e64 s4, s4, v18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v45, 64, v49
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v46, 64, v50
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v47, 64, v51
	.loc	1 156 26 is_stmt 1              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s28, s28, -1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v52, v45, s[16:19], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[45:46], v46, s[20:23], 0 offen
	buffer_load_b64 v[47:48], v47, s[20:23], 0 offen
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s30, v18
	v_cmp_lt_i32_e64 s4, s30, v20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s30, 0x80
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v27, v52 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v28, v[45:46], v[47:48] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s28, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v49, v49, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[45:46], v50, s[20:23], 0 offen
	buffer_load_b64 v[47:48], v51, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v50, v23, v24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[53:54], v29 offset:8192
	ds_load_b64 v[55:56], v30 offset:8192
	ds_load_b64 v[57:58], v31 offset:8192
	ds_load_b64 v[59:60], v32 offset:8192
	ds_load_b64 v[61:62], v33 offset:8192
	ds_load_b64 v[63:64], v34 offset:8192
	ds_load_b64 v[65:66], v35 offset:8192
	ds_load_b64 v[67:68], v36 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[69:70], v37
	ds_load_b64 v[71:72], v38
	ds_load_b64 v[73:74], v39
	ds_load_b64 v[75:76], v40
	ds_load_b64 v[77:78], v41
	ds_load_b64 v[79:80], v42
	ds_load_b64 v[81:82], v43
	ds_load_b64 v[83:84], v44
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v27, v49 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v28, v[45:46], v[47:48] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v85, v25, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v86, v50, s[8:11], 0 offen offset:4
	buffer_load_u16 v87, v50, s[8:11], 0 offen
	buffer_load_u16 v88, v50, s[8:11], 0 offen offset:12
	buffer_load_u16 v89, v50, s[8:11], 0 offen offset:8
	buffer_load_u16 v90, v50, s[8:11], 0 offen offset:20
	buffer_load_u16 v91, v50, s[8:11], 0 offen offset:16
	buffer_load_u16 v92, v50, s[8:11], 0 offen offset:28
	buffer_load_u16 v93, v50, s[8:11], 0 offen offset:24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[45:52], v[69:70], v[53:54], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[71:72], v[55:56], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[45:52], v[73:74], v[57:58], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[75:76], v[59:60], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[45:52], v[77:78], v[61:62], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[79:80], v[63:64], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[45:52], v[81:82], v[65:66], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[83:84], v[67:68], v[45:52] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[53:54], v37
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[55:56], v29 offset:8192
	ds_load_b64 v[57:58], v30 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[59:60], v38
	ds_load_b64 v[61:62], v39
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[63:64], v31 offset:8192
	ds_load_b64 v[65:66], v32 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[67:68], v40
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[69:70], v33 offset:8192
	ds_load_b64 v[71:72], v34 offset:8192
	ds_load_b64 v[73:74], v35 offset:8192
	ds_load_b64 v[75:76], v36 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[77:78], v41
	ds_load_b64 v[79:80], v42
	ds_load_b64 v[81:82], v43
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[53:54], v[55:56], v[45:52] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[53:54], v44
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[59:60], v[57:58], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[61:62], v[63:64], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[67:68], v[65:66], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[77:78], v[69:70], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[79:80], v[71:72], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[81:82], v[73:74], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[53:54], v[75:76], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v55, 16, v87
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v53, 16, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v45, v53, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v16, v45, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v51, v53, v51 :: v_dual_lshlrev_b32 v54, 16, v86
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v46, v53, v46 :: v_dual_lshlrev_b32 v57, 16, v89
	v_mul_f32_e32 v48, v53, v48
	v_dual_mul_f32 v47, v53, v47 :: v_dual_add_nc_u32 v24, s29, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v49, v53, v49 :: v_dual_fmac_f32 v26, v46, v54
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v21, v47, v57 :: v_dual_lshlrev_b32 v56, 16, v88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v50, v53, v50 :: v_dual_add_nc_u32 v25, 2, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v22, v48, v56 :: v_dual_lshlrev_b32 v59, 16, v91
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v58, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v53, v52
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v17, v49, v59 :: v_dual_lshlrev_b32 v60, 16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v50, v58
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v12, v52, v60 :: v_dual_lshlrev_b32 v61, 16, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v15, v51, v61
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v5, v13 :: v_dual_mov_b32 v2, v14
.LBB0_7:                                ; %._crit_edge
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.h, 0
	v_mov_b16_e32 v1.l, v26.h
	v_mov_b16_e32 v4.l, v16.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v3, 0x78, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v16, v16
	v_mov_b16_e32 v4.h, v1.h
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	v_mov_b16_e32 v8.l, v17.h
	v_mov_b16_e32 v8.h, v1.h
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v5, v26, v5, 0x7fff
	v_and_b32_e32 v7, 1, v1
	v_mov_b16_e32 v1.l, v19.h
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v4, v16, v4, 0x7fff
	v_mov_b16_e32 v9.l, v15.h
	v_mov_b16_e32 v9.h, v1.h
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	v_and_b32_e32 v4, 1, v8
	v_and_b32_e32 v8, 1, v1
	v_cmp_o_f32_e64 s0, v19, v19
	v_mov_b16_e32 v6.l, v21.h
	v_mov_b16_e32 v6.h, v1.h
	v_add3_u32 v4, v17, v4, 0x7fff
	v_add3_u32 v8, v19, v8, 0x7fff
	v_mov_b16_e32 v1.l, v12.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v8.l, 0x7fff, v4.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s0
	v_and_b32_e32 v4, 1, v9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v9, 0x7632
	v_add3_u32 v7, v22, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v9, 0x3276, v9, s0
	v_add3_u32 v6, v21, v6, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v4, v15, v4, 0x7fff
	v_add3_u32 v1, v12, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s2, v15, v15
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v7.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v4, 0x760076, v9
	v_cndmask_b32_e64 v10, v8, v5, s0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, v2, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v2, v5, v8, s0
	v_cndmask_b32_e64 v5, v7, v1, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v7, v1, v7, s0
	v_permlanex16_b32 v1, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v0
	v_and_b32_e32 v4, 0x7060706, v4
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_or_b32 v8, s14, 7, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_perm_b32 v0, v1, v10, v2
	v_perm_b32 v1, v1, v10, v4
	v_perm_b32 v2, v5, v7, v2
	v_perm_b32 v3, v5, v7, v4
	v_add_lshl_u32 v4, v8, v6, 1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 31
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
		.amdhsa_inst_pref_size 22
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2696
; TotalNumSgprs: 33
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 94
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
