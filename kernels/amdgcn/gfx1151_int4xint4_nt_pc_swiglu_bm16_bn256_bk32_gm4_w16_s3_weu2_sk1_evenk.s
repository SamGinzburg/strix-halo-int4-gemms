	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v8, 3, v0
	v_bfe_u32 v2, v0, 4, 4
	v_and_b32_e32 v25, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v38, 1, v0
	v_bfe_i32 v15, v0, 4, 1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v16, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v39, 0x1e0, v0
	v_and_b32_e32 v40, 16, v0
	s_load_b32 s26, s[0:1], 0x38
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v15, 0x88, v15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 4
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
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_load_b128 s[12:15], s[0:1], 0x0
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
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s15
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s9, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 8, v8
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v8, 0xf78, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v20, v15, v8
	v_and_b32_e32 v8, 8, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s26, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s25, s4, s23
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s10, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s26, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s4, s25, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s4, s7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[3:4], null, s24, v2, v[25:26]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[4:5], null, s24, v38, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s4, 8
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s2, 4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s21, s20, s11
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s22, s24
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s3, s20, s24
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_mul_i32 s4, s21, s24
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v3, s10, s2, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v5, s10, s3, v4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add3_u32 v4, s10, s4, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s3
	.loc	1 113 30 is_stmt 0              ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v3, 16, v3
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 33
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v6, 16, v5
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add_nc_u32_e32 v9, 16, v4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v10, 0x80000000, v4, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v11, 0x80000000, v6, s2
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v12, 0x80000000, v9, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v13, v7, s[12:15], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[4:5], v5, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v10, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v14, v3, s[12:15], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[9:10], v11, s[16:19], 0 offen
	buffer_load_b64 v[11:12], v12, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v3, v0, 7, 1
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s26, 0x41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v19, v3, v16
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v16, 0, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v15, 0, v19
	s_waitcnt vmcnt(5)
	ds_store_b8 v15, v13 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v16, v[4:5], v[6:7] offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v15, v14 offset:16640
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[9:10], v[11:12] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v17, 0x70, v3
	v_and_b32_e32 v21, 8, v0
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshl_or_b32 v18, v39, 3, v17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr18
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v40
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s26, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v0, 3, 1
	v_and_b32_e32 v17, 0x70, v3
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_lshl_b32 s18, s25, 8
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s24, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add3_u32 v3, s11, s18, v38
	v_and_b32_e32 v0, 0x88, v0
	v_lshl_or_b32 v18, v39, 3, v17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_or_b32_e32 v4, s18, v38
	v_sub_nc_u32_e64 v5, s1, 3 clamp
	s_lshl_b32 s1, s23, 8
	v_or_b32_e32 v21, v0, v17
	v_or_b32_e32 v22, v18, v0
	v_subrev_nc_u32_e32 v0, s1, v3
	v_readfirstlane_b32 s18, v5
	v_add_nc_u32_e32 v5, s22, v2
	v_subrev_nc_u32_e32 v4, s1, v4
	v_xor_b32_e32 v23, 8, v21
	v_mad_u64_u32 v[2:3], null, s24, v0, s[10:11]
	v_mov_b32_e32 v0, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s24, v4, s[10:11]
	v_xor_b32_e32 v24, 8, v22
	s_mov_b32 s28, 1
	v_mov_b32_e32 v6, v0
	v_add3_u32 v26, v2, v1, 32
	v_mov_b32_e32 v2, v0
	v_mad_u64_u32 v[4:5], null, s24, v5, s[10:11]
	v_add3_u32 v27, v3, v1, 32
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v9, v0
	v_add3_u32 v28, v4, v25, 32
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	s_add_i32 s27, s18, 1
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s24, 0, 0x4100
	s_add_i32 s23, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
	s_add_i32 s10, 0, 0x3000
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v37, v28, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[29:30], v27, s[16:19], 0 offen
	buffer_load_b64 v[31:32], v26, s[16:19], 0 offen
	s_mov_b32 s29, s1
	s_mov_b32 s1, s24
	s_mov_b32 s24, s26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v33, s29, v21
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v35, s24, v22
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v41, s25, v22
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v43, s29, v23
	ds_load_b64 v[33:34], v33
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[35:36], v35
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[41:42], v41
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v45, s24, v24
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v47, s25, v24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[43:44], v43
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[45:46], v45
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[47:48], v47
	s_mov_b32 s25, s10
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s10, s28, 1
	s_mov_b32 s26, s23
	s_cmp_lt_i32 s10, 2
	v_add_nc_u32_e32 v26, 16, v26
	s_cselect_b32 s28, s10, 0
	v_add_nc_u32_e32 v27, 16, v27
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s10, s28, 8
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_lshl_b32 s23, s28, 12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s10, s10, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s23, s23, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v28, 16, v28
	s_add_i32 s27, s27, -1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[41:42], v[33:34], v[0:7] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v33, s10, v19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v34, s23, v20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s24, s10, 0x4000
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[47:48], v[43:44], v[0:7] neg_lo:[1,1,0]
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s10, s23, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v33, v37 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[29:30], v[31:32] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v21, v8
	s_mov_b32 s18, s26
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v7, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s24, 0, 0x4100
	s_add_i32 s23, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v6, v7
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v9, v7
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v15, v7
	s_add_i32 s10, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v23, v15
	v_cndmask_b32_e64 v8, 0x88, 0, vcc_lo
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	v_dual_mov_b32 v22, v14 :: v_dual_mov_b32 v21, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v30, v8, v17
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or_b32_e32 v8, v18, v8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v31, 8, v30
	v_add_nc_u32_e32 v17, s1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v41, 8, v8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v19, s1, v31
	ds_load_b64 v[28:29], v17
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[26:27], v19
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v17, 0, 1, s3
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v19, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s1, 1, v17
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v17, s18, v8
	v_add_nc_u32_e32 v18, s18, v41
	ds_load_b64 v[32:33], v17
	ds_load_b64 v[34:35], v18
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v21, v13
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v19, v11
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[32:33], v[28:29], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[34:35], v[26:27], v[17:24] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s25, v8
	v_add_nc_u32_e32 v11, s25, v41
	v_dual_mov_b32 v15, v23 :: v_dual_mov_b32 v16, v24
	v_mov_b32_e32 v13, v21
	ds_load_b64 v[9:10], v9
	ds_load_b64 v[32:33], v11
	v_dual_mov_b32 v11, v19 :: v_dual_mov_b32 v12, v20
	v_mov_b32_e32 v14, v22
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[9:10], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v9, v17 :: v_dual_mov_b32 v10, v18
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[32:33], v[26:27], v[0:7] neg_lo:[1,1,0]
.LBB0_12:                               ; %._crit_edge54
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v29, v12 :: v_dual_add_nc_u32 v26, s24, v30
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v27, s24, v31
	v_dual_mov_b32 v31, v14 :: v_dual_mov_b32 v30, v13
	ds_load_b64 v[36:37], v26
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[34:35], v27
	v_cndmask_b32_e64 v26, 0, 1, s2
	v_dual_mov_b32 v33, v10 :: v_dual_mov_b32 v32, v9
	v_mov_b32_e32 v28, v11
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s1, 1, v26
	v_dual_mov_b32 v27, v16 :: v_dual_mov_b32 v26, v15
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v26, s23, v8
	v_add_nc_u32_e32 v28, s23, v41
	ds_load_b64 v[26:27], v26
	ds_load_b64 v[28:29], v28
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[36:37], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[28:29], v[34:35], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v27, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v29, v20 :: v_dual_mov_b32 v26, v23
	v_dual_mov_b32 v31, v22 :: v_dual_mov_b32 v28, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v33, v18 :: v_dual_mov_b32 v30, v21
	v_mov_b32_e32 v32, v17
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v8, s10, v8
	v_add_nc_u32_e32 v10, s10, v41
	ds_load_b64 v[8:9], v8
	ds_load_b64 v[10:11], v10
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[36:37], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[34:35], v[0:7] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v27, v16 :: v_dual_mov_b32 v26, v15
	v_dual_mov_b32 v29, v12 :: v_dual_mov_b32 v28, v11
	v_dual_mov_b32 v31, v14 :: v_dual_mov_b32 v30, v13
	v_dual_mov_b32 v33, v10 :: v_dual_mov_b32 v32, v9
.LBB0_17:
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v8, 4, v40
	v_lshrrev_b32_e32 v9, 1, v39
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v9, v8, v9
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v8, s22, v25
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v35, 0x7632
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v15, 2, v9
	v_or_b32_e32 v14, 4, v9
	v_or_b32_e32 v17, 6, v9
	v_or_b32_e32 v13, 8, v9
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v16, 1, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, 14, v9
	v_or_b32_e32 v11, 12, v9
	v_or_b32_e32 v12, 10, v9
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s20, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s21, v15, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s20, v14
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s21, v14, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s20, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v17, s21, v17, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v22, s20, v13
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v13, s21, v13, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v23, s20, v12
	v_or_b32_e32 v24, s20, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v12, s21, v12, 1
	v_add_lshl_u32 v11, s21, v11, 1
	v_add_lshl_u32 v25, s21, v10, 1
	s_clause 0x6
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v18, s20, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v34, 0x5410 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v9, s21, v9, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v10, s20, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v35, 0x3276, v35, s0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v34, 0x1054, v34, s0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v35, v35, 8, v35
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v34, v34, 8, v34
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.h, 0
	s_mov_b32 s10, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v40.h, v36.h
	v_mov_b16_e32 v39.h, v36.h
	v_mov_b16_e32 v37.h, v36.h
	v_mov_b16_e32 v41.h, v36.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v15, v16, v15 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v1, v15, v1 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_clause 0x2
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v14, 16, v14
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v16, v14
	v_dual_mul_f32 v11, v16, v11 :: v_dual_mul_f32 v2, v14, v2
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, v11, v6 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v9, v16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v0, v9, v0 :: v_dual_lshlrev_b32 v23, 1, v23
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v15, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v18, v16, v18 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v18, v18, v32 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v17, v16, v17 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v3, v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v16, v12 :: v_dual_and_b32 v35, 0x760076, v35
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v12, v5
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v20, v16, v20 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v13, v16, v13 :: v_dual_lshlrev_b32 v24, 1, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v4, v13, v4 :: v_dual_lshlrev_b32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v16, v19 :: v_dual_and_b32 v34, 0x540054, v34
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v34, v34, 4, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v19, v33
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v10, 16, v10
	v_lshlrev_b32_e32 v21, 16, v23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v16, v25
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v14, v16, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v19
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v12, v16, v23
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v7, v24, v7
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v9, v16, v9
	v_mul_f32_e32 v10, v16, v10
	v_mul_f32_e32 v17, v16, v21
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v20, v28
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v20, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v6
	v_mul_f32_e32 v24, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_cndmask_b32_e64 v19, 0, 0x42800000, s2
	v_cndmask_b32_e64 v22, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v24
	v_dual_mul_f32 v21, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v10, v10, v27
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v24, 0, 0x42800000, s5
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v2 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v1 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v7
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v22, v22
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v9, v9, v29 :: v_dual_mul_f32 v14, v14, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s4
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v24, v24
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	v_ldexp_f32 v15, v15, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s5
	v_ldexp_f32 v22, v22, v29
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v23, 0, 0x42800000, s6
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s4
	v_ldexp_f32 v20, v20, v27
	v_ldexp_f32 v24, v24, v25
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v6 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v15, v15, v0
	v_div_scale_f32 v42, null, v22, v22, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v21, v21, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v27, v25
	v_div_scale_f32 v30, null, v20, v20, v3
	v_rcp_f32_e32 v52, v42
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v17, v31 :: v_dual_mul_f32 v12, v12, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v50, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v23, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v25, v27, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v13, v26
	v_ldexp_f32 v19, v19, v28
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v42, v52, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v26, vcc_lo, v0, v15, v0
	v_fmac_f32_e32 v27, v54, v27
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v30, v50, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v52, v60, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v44, null, v21, v21, v4
	v_div_scale_f32 v46, null, v24, v24, v7
	v_mul_f32_e32 v64, v26, v27
	v_div_scale_f32 v28, null, v13, v13, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v44
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v32, null, v19, v19, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v49, v28
	v_rcp_f32_e32 v55, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v51, v32
	v_div_scale_f32 v45, s5, v4, v21, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v23, v23, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v61, -v44, v53, 1.0
	v_div_scale_f32 v29, s1, v1, v13, v1
	v_div_scale_f32 v33, s3, v2, v19, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v28, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v32, v51, 1.0
	v_fma_f32 v62, -v46, v55, 1.0
	v_fmac_f32_e32 v53, v61, v53
	v_div_scale_f32 v48, null, v23, v23, v6
	v_fmac_f32_e32 v51, v59, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v55, v62, v55 :: v_dual_mul_f32 v62, v45, v53
	v_fmac_f32_e32 v49, v54, v49
	v_rcp_f32_e32 v56, v48
	v_div_scale_f32 v31, s2, v3, v20, v3
	v_fma_f32 v54, -v25, v64, v26
	v_mul_f32_e32 v60, v33, v51
	v_mul_f32_e32 v58, v29, v49
	v_div_scale_f32 v43, s4, v5, v22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v54, v27
	v_fma_f32 v67, -v32, v60, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v54, -v28, v58, v29
	v_mul_f32_e32 v59, v31, v50
	v_fma_f32 v63, -v48, v56, 1.0
	v_fma_f32 v25, -v25, v64, v26
	v_fmac_f32_e32 v60, v67, v51
	v_fmac_f32_e32 v58, v54, v49
	v_fma_f32 v66, -v30, v59, v31
	v_fmac_f32_e32 v56, v63, v56
	v_div_scale_f32 v57, s7, v6, v23, v6
	v_div_fmas_f32 v25, v25, v27, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v66, v50
	v_fma_f32 v26, -v28, v58, v29
	v_mul_f32_e32 v65, v57, v56
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v32, v60, v33
	v_fma_f32 v27, -v30, v59, v31
	v_div_fixup_f32 v0, v25, v15, v0
	v_div_fmas_f32 v15, v26, v49, v58
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v69, -v44, v62, v45
	v_div_fmas_f32 v25, v27, v50, v59
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, s6, v7, v24, v7
	v_div_fmas_f32 v26, v28, v51, v60
	v_fmac_f32_e32 v62, v69, v53
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v63, v47, v55 :: v_dual_mul_f32 v0, v18, v0
	v_div_fixup_f32 v2, v26, v19, v2
	v_mul_f32_e32 v61, v43, v52
	v_fma_f32 v30, -v44, v62, v45
	v_div_fixup_f32 v1, v15, v13, v1
	v_fma_f32 v70, -v46, v63, v47
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v16, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v42, v61, v43
	v_div_fixup_f32 v3, v25, v20, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v0.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v63, v70, v55
	v_fma_f32 v71, -v48, v65, v57
	v_fmac_f32_e32 v61, v68, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v2.h
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v46, v63, v47
	v_fmac_f32_e32 v65, v71, v56
	v_fma_f32 v29, -v42, v61, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v32, -v48, v65, v57
	v_div_fmas_f32 v13, v29, v52, v61
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v15, v30, v53, v62
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v5, v13, v22, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v4, v15, v21, v4
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v11, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v31, v55, v63
	s_mov_b32 vcc_lo, s7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v0, v13, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v14, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v37.l, v1.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v11, v24, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v39
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s1
	v_mov_b16_e32 v40.l, v4.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v9, v3
	v_mul_f32_e32 v7, v10, v7
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v32, v56, v65
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v2, v2, v11, 0x7fff
	v_mov_b16_e32 v36.l, v3.h
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v9, v23, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v10, 1, v36
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v12, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v3, v10, 0x7fff
	v_and_b32_e32 v10, 1, v40
	v_mov_b16_e32 v41.l, v6.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e64 s6, v6, v6
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	v_add3_u32 v4, v4, v10, 0x7fff
	v_and_b32_e32 v11, 1, v41
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s5
	v_lshl_or_b32 v4, v35, 4, v35
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v17, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v6, v11, 0x7fff
	v_and_b32_e32 v4, 0x7060706, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v36.l, v5.h
	v_cmp_o_f32_e64 s4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 1, v36
	v_mov_b16_e32 v36.l, v7.h
	v_add3_u32 v5, v5, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v1, 1, v36
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_and_or_b32 v9, 0xf8, v38, s20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s6
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, v8, s11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 0x5040504, v34
	v_cndmask_b32_e64 v6, v0, v2, s0
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_cndmask_b32_e64 v2, v2, v0, s0
	s_mov_b32 s11, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v6, v6, s10, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v8, v3, v1, s0
	v_cndmask_b32_e64 v3, v1, v3, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v6, v2, v7
	v_permlanex16_b32 v8, v8, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v6, v2, v4
	s_mov_b32 s10, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v2, v8, v3, v7
	v_perm_b32 v3, v8, v3, v4
	v_add_lshl_u32 v4, v9, v5, 1
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 72
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_vgpr, 72
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4740
; TotalNumSgprs: 32
; NumVgprs: 72
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 72
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     72
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
