	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v136, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v231, 15, v0
	v_lshrrev_b32_e32 v3, 5, v0
	v_or_b32_e32 v135, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x7c, v136
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s16, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s16, s16, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s16
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s5
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s9, 0, s4
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
	s_xor_b32 s9, s2, s5
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s16, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s16
	s_add_i32 s16, s6, 1
	s_sub_i32 s17, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s16, s6
	s_cselect_b32 s7, s17, s7
	s_add_i32 s16, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s16, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s6, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s7, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s8, s7
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s8, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s4, s9
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b32 s4, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v1, v0, 4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s18, s16, 0x4f7ffffe
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[4:5], null, s10, v231, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s14, s18
	s_sub_i32 s18, 0, s9
	s_mov_b32 s15, 0x31027000
	s_mul_i32 s18, s18, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s14, s18
	s_xor_b32 s18, s2, s8
	s_add_i32 s5, s14, s5
	s_ashr_i32 s28, s18, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s14, 0x7ffffffe
	s_mul_i32 s19, s5, s9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s6, s9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s6, s4, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s9, s11, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s27, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s29, s5, s28
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s5, s4, s6
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s21, s9, s27
	v_mad_u64_u32 v[5:6], null, s9, v3, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s9, s29, s28
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s26, s5, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s9, s8
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s27, v231
	v_or_b32_e32 v8, s27, v3
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s5, s2, s5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s9, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s5, s5, s7
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v7
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s26, v8
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v5, s21, s20, v5
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s5, 4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s4, 1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s6, s10, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	s_and_b32 s2, s23, s2
	s_cmp_gt_i32 s4, 33
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v4, s6, s21, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s5, s27, 16
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s11, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v8, s5, v3
	v_or_b32_e32 v10, s5, v231
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v7, s11, 5, v5
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e32 v9, 0x80000000, v4, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v8
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_lshl_b32 s24, s10, 4
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e64 s2, s26, v10
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v8, s11, v7
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v4, s24, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v10, v9, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 s2, s22, s2
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x3
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	buffer_load_b32 v6, v6, s[16:19], 0 offen
	buffer_load_b32 v7, v7, s[16:19], 0 offen
	buffer_load_b32 v8, v8, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v11, v4, s[12:15], 0 offen
	v_bfe_i32 v4, v0, 7, 1
	v_and_b32_e32 v9, 0x7f, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v13, 0, v136
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s4, 0x41
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_and_b32_e32 v4, 0x88, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v137, v4, v9
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v9, 0x7f0, v0
	v_add_nc_u32_e32 v12, 0, v137
	s_waitcnt vmcnt(5)
	ds_store_b8 v12, v10 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b32 v13, v5, v6 offset1:16
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v13, v7, v8 offset0:8 offset1:24
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(0)
	ds_store_b8 v12, v11 offset:8448
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v5, 0x80, v231
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_and_b32_e32 v134, 0x70, v4
	v_and_b32_e32 v130, 8, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v202, 0x400, v231
	v_or_b32_e32 v217, 0x480, v231
	scratch_store_b32 off, v5, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x100, v231
	v_or_b32_e32 v215, 0x500, v231
	v_or_b32_e32 v216, 0x580, v231
	v_or_b32_e32 v214, 0x600, v231
	v_or_b32_e32 v218, 0x680, v231
	scratch_store_b32 off, v5, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x180, v231
	v_or_b32_e32 v219, 0x700, v231
	v_or_b32_e32 v222, 0x780, v231
	v_or_b32_e32 v220, 0x410, v231
	v_or_b32_e32 v224, 0x490, v231
	scratch_store_b32 off, v5, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x200, v231
	v_or_b32_e32 v221, 0x510, v231
	v_or_b32_e32 v223, 0x590, v231
	v_or_b32_e32 v225, 0x610, v231
	v_or_b32_e32 v227, 0x690, v231
	scratch_store_b32 off, v5, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x280, v231
	v_or_b32_e32 v226, 0x710, v231
	v_or_b32_e32 v230, 0x790, v231
	v_or_b32_e32 v228, 0x420, v231
	v_or_b32_e32 v233, 0x4a0, v231
	scratch_store_b32 off, v5, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x300, v231
	v_or_b32_e32 v229, 0x520, v231
	v_or_b32_e32 v232, 0x5a0, v231
	v_or_b32_e32 v238, 0x620, v231
	v_or_b32_e32 v240, 0x6a0, v231
	scratch_store_b32 off, v5, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x380, v231
	v_or_b32_e32 v239, 0x720, v231
	v_or_b32_e32 v241, 0x7a0, v231
	v_or_b32_e32 v234, 0x430, v231
	v_or_b32_e32 v237, 0x4b0, v231
	scratch_store_b32 off, v5, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 16, v231
	v_or_b32_e32 v235, 0x530, v231
	v_or_b32_e32 v236, 0x5b0, v231
	v_or_b32_e32 v242, 0x630, v231
	v_or_b32_e32 v244, 0x6b0, v231
	scratch_store_b32 off, v5, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x90, v231
	v_or_b32_e32 v243, 0x730, v231
	v_or_b32_e32 v245, 0x7b0, v231
	v_or_b32_e32 v203, 0x440, v231
	v_or_b32_e32 v248, 0x4c0, v231
	scratch_store_b32 off, v5, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x110, v231
	v_or_b32_e32 v246, 0x540, v231
	v_or_b32_e32 v247, 0x5c0, v231
	v_or_b32_e32 v252, 0x640, v231
	v_or_b32_e32 v255, 0x6c0, v231
	scratch_store_b32 off, v5, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x190, v231
	v_or_b32_e32 v254, 0x740, v231
	v_or_b32_e32 v249, 0x450, v231
	v_or_b32_e32 v253, 0x4d0, v231
	v_or_b32_e32 v250, 0x550, v231
	scratch_store_b32 off, v5, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x210, v231
	v_or_b32_e32 v251, 0x5d0, v231
	s_mov_b32 s2, 0
	scratch_store_b32 off, v5, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x290, v231
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x310, v231
	scratch_store_b32 off, v5, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x390, v231
	scratch_store_b32 off, v5, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 32, v231
	scratch_store_b32 off, v5, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xa0, v231
	scratch_store_b32 off, v5, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x120, v231
	scratch_store_b32 off, v5, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1a0, v231
	scratch_store_b32 off, v5, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x220, v231
	scratch_store_b32 off, v5, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2a0, v231
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x320, v231
	scratch_store_b32 off, v5, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3a0, v231
	scratch_store_b32 off, v5, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 48, v231
	scratch_store_b32 off, v5, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xb0, v231
	scratch_store_b32 off, v5, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x130, v231
	scratch_store_b32 off, v5, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1b0, v231
	scratch_store_b32 off, v5, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x230, v231
	scratch_store_b32 off, v5, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2b0, v231
	scratch_store_b32 off, v5, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x330, v231
	scratch_store_b32 off, v5, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3b0, v231
	scratch_store_b32 off, v5, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 64, v231
	scratch_store_b32 off, v5, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xc0, v231
	scratch_store_b32 off, v5, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x140, v231
	scratch_store_b32 off, v5, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1c0, v231
	scratch_store_b32 off, v5, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x240, v231
	scratch_store_b32 off, v5, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2c0, v231
	scratch_store_b32 off, v5, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x340, v231
	scratch_store_b32 off, v5, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3c0, v231
	scratch_store_b32 off, v5, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7c0, v231
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x50, v231
	scratch_store_b32 off, v5, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xd0, v231
	scratch_store_b32 off, v5, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x150, v231
	scratch_store_b32 off, v5, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1d0, v231
	scratch_store_b32 off, v5, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x250, v231
	scratch_store_b32 off, v5, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2d0, v231
	scratch_store_b32 off, v5, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x350, v231
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3d0, v231
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x650, v231
	scratch_store_b32 off, v5, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6d0, v231
	scratch_store_b32 off, v5, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x750, v231
	scratch_store_b32 off, v5, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7d0, v231
	scratch_store_b32 off, v5, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x60, v231
	scratch_store_b32 off, v5, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xe0, v231
	scratch_store_b32 off, v5, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x160, v231
	scratch_store_b32 off, v5, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1e0, v231
	scratch_store_b32 off, v5, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x260, v231
	scratch_store_b32 off, v5, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2e0, v231
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x360, v231
	scratch_store_b32 off, v5, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3e0, v231
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x460, v231
	scratch_store_b32 off, v5, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x4e0, v231
	scratch_store_b32 off, v5, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x560, v231
	scratch_store_b32 off, v5, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x5e0, v231
	scratch_store_b32 off, v5, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x660, v231
	scratch_store_b32 off, v5, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6e0, v231
	scratch_store_b32 off, v5, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x760, v231
	scratch_store_b32 off, v5, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7e0, v231
	scratch_store_b32 off, v5, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x70, v231
	scratch_store_b32 off, v5, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xf0, v231
	scratch_store_b32 off, v5, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x170, v231
	scratch_store_b32 off, v5, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1f0, v231
	scratch_store_b32 off, v5, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x270, v231
	scratch_store_b32 off, v5, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2f0, v231
	scratch_store_b32 off, v5, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x370, v231
	scratch_store_b32 off, v5, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3f0, v0
	scratch_store_b32 off, v5, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x470, v231
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x4f0, v231
	scratch_store_b32 off, v5, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x570, v231
	scratch_store_b32 off, v5, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x5f0, v231
	scratch_store_b32 off, v5, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x670, v231
	scratch_store_b32 off, v5, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6f0, v231
	scratch_store_b32 off, v5, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x770, v231
	scratch_store_b32 off, v5, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7f0, v0
	scratch_store_b32 off, v5, off offset:72 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr203
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v5, 1, v3
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v139, s26, v3
	s_add_i32 s27, s27, 32
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s26, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_lshl_or_b32 v3, s3, 5, v5
	v_dual_mov_b32 v13, v10 :: v_dual_add_nc_u32 v6, s27, v231
	v_dual_mov_b32 v11, v10 :: v_dual_and_b32 v134, 0x70, v4
	v_dual_mov_b32 v12, v10 :: v_dual_add_nc_u32 v5, 0x41, v3
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v3, 64, v3
	v_bfe_i32 v4, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v5, s11, v5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v3, s11, v3
	v_mul_lo_u32 v6, s10, v6
	v_sub_nc_u32_e64 v7, s0, 3 clamp
	s_lshl_b32 s0, s29, 7
	v_and_or_b32 v140, 0x88, v4, v134
	s_lshl_b32 s1, s28, 7
	v_add3_u32 v4, v5, s0, v2
	v_readfirstlane_b32 s2, v7
	v_add3_u32 v2, v3, s0, v2
	v_sub_nc_u32_e32 v138, s26, v231
	v_xor_b32_e32 v141, 8, v140
	v_add3_u32 v142, v6, s21, v1
	v_subrev_nc_u32_e32 v143, s1, v4
	v_subrev_nc_u32_e32 v144, s1, v2
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v17, v10
	v_mov_b32_e32 v58, v10
	v_mov_b32_e32 v59, v10
	v_mov_b32_e32 v60, v10
	v_mov_b32_e32 v61, v10
	v_mov_b32_e32 v62, v10
	v_mov_b32_e32 v63, v10
	v_mov_b32_e32 v64, v10
	v_mov_b32_e32 v65, v10
	v_mov_b32_e32 v50, v10
	v_mov_b32_e32 v51, v10
	v_mov_b32_e32 v52, v10
	v_mov_b32_e32 v53, v10
	v_mov_b32_e32 v54, v10
	v_mov_b32_e32 v55, v10
	v_mov_b32_e32 v56, v10
	v_mov_b32_e32 v57, v10
	v_mov_b32_e32 v42, v10
	v_mov_b32_e32 v43, v10
	v_mov_b32_e32 v44, v10
	v_mov_b32_e32 v45, v10
	v_mov_b32_e32 v46, v10
	v_mov_b32_e32 v47, v10
	v_mov_b32_e32 v48, v10
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v34, v10
	v_mov_b32_e32 v35, v10
	v_mov_b32_e32 v36, v10
	v_mov_b32_e32 v37, v10
	v_mov_b32_e32 v38, v10
	v_mov_b32_e32 v39, v10
	v_mov_b32_e32 v40, v10
	v_mov_b32_e32 v41, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v66, v10
	v_mov_b32_e32 v67, v10
	v_mov_b32_e32 v68, v10
	v_mov_b32_e32 v69, v10
	v_mov_b32_e32 v70, v10
	v_mov_b32_e32 v71, v10
	v_mov_b32_e32 v72, v10
	v_mov_b32_e32 v73, v10
	v_mov_b32_e32 v74, v10
	v_mov_b32_e32 v75, v10
	v_mov_b32_e32 v76, v10
	v_mov_b32_e32 v77, v10
	v_mov_b32_e32 v78, v10
	v_mov_b32_e32 v79, v10
	v_mov_b32_e32 v80, v10
	v_mov_b32_e32 v81, v10
	v_mov_b32_e32 v82, v10
	v_mov_b32_e32 v83, v10
	v_mov_b32_e32 v84, v10
	v_mov_b32_e32 v85, v10
	v_mov_b32_e32 v86, v10
	v_mov_b32_e32 v87, v10
	v_mov_b32_e32 v88, v10
	v_mov_b32_e32 v89, v10
	v_mov_b32_e32 v90, v10
	v_mov_b32_e32 v91, v10
	v_mov_b32_e32 v92, v10
	v_mov_b32_e32 v93, v10
	v_mov_b32_e32 v94, v10
	v_mov_b32_e32 v95, v10
	v_mov_b32_e32 v96, v10
	v_mov_b32_e32 v97, v10
	v_mov_b32_e32 v98, v10
	v_mov_b32_e32 v99, v10
	v_mov_b32_e32 v100, v10
	v_mov_b32_e32 v101, v10
	v_mov_b32_e32 v102, v10
	v_mov_b32_e32 v103, v10
	v_mov_b32_e32 v104, v10
	v_mov_b32_e32 v105, v10
	v_mov_b32_e32 v106, v10
	v_mov_b32_e32 v107, v10
	v_mov_b32_e32 v108, v10
	v_mov_b32_e32 v109, v10
	v_mov_b32_e32 v110, v10
	v_mov_b32_e32 v111, v10
	v_mov_b32_e32 v112, v10
	v_mov_b32_e32 v113, v10
	v_mov_b32_e32 v114, v10
	v_mov_b32_e32 v115, v10
	v_mov_b32_e32 v116, v10
	v_mov_b32_e32 v117, v10
	v_mov_b32_e32 v118, v10
	v_mov_b32_e32 v119, v10
	v_mov_b32_e32 v120, v10
	v_mov_b32_e32 v121, v10
	v_mov_b32_e32 v122, v10
	v_mov_b32_e32 v123, v10
	v_mov_b32_e32 v124, v10
	v_mov_b32_e32 v125, v10
	v_mov_b32_e32 v126, v10
	v_mov_b32_e32 v127, v10
	v_mov_b32_e32 v128, v10
	v_mov_b32_e32 v129, v10
	s_mov_b32 s26, 1
	s_lshl_b32 s28, s11, 5
	s_add_i32 s29, s2, 1
	s_add_i32 s10, 0, 0x2000
	s_add_i32 s30, 0, 0x2100
	s_add_i32 s3, 0, 0x800
	s_add_i32 s1, 0, 0x1000
	s_add_i32 s2, 0, 0x1800
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s27, v138
	s_mov_b32 s31, s10
	s_mov_b32 s10, s30
	s_mov_b32 s30, s25
	s_mov_b32 s25, s3
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e64 v130, 0x80000000, v142, s0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v147, s30, v231
	v_add_nc_u32_e32 v149, s30, v135
	v_add_nc_u32_e32 v148, s30, v9
	s_mov_b32 s3, s1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v146, v130, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v150, v147 offset:640
	ds_load_u8 v151, v147 offset:512
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v130, s31, v140
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s27, v139
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s0, s26, 1
	v_add_nc_u32_e32 v142, s24, v142
	s_cmp_lt_i32 s0, 2
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_b64 v[132:133], v130
	v_add_nc_u32_e32 v130, s31, v141
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v145, 0x80000000, v144, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s26, s0, 0
	v_add_nc_u32_e32 v144, s28, v144
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_lshl_b32 s0, s26, 8
	ds_load_b64 v[130:131], v130
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v145, v145, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s0, s0, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, -1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s30, s0, 0x2000
	s_mov_b32 s1, s2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, 16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:896
	ds_load_u8 v152, v147 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:128
	ds_load_u8 v152, v147
	ds_load_u8 v153, v147 offset:16
	ds_load_u8 v154, v147 offset:32
	ds_load_u8 v155, v147 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:384
	ds_load_u8 v156, v147 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v156, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[66:73], v[150:151], v[132:133], v[66:73] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1664
	ds_load_u8 v151, v147 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:1920
	ds_load_u8 v152, v147 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1152
	ds_load_u8 v152, v147 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1408
	ds_load_u8 v156, v147 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v156, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[66:73], v[150:151], v[130:131], v[66:73] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:656
	ds_load_u8 v151, v147 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:912
	ds_load_u8 v152, v147 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v153, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:400
	ds_load_u8 v153, v147 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[74:81], v[150:151], v[132:133], v[74:81] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1680
	ds_load_u8 v151, v147 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:1936
	ds_load_u8 v152, v147 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1168
	ds_load_u8 v152, v147 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1424
	ds_load_u8 v153, v147 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[74:81], v[150:151], v[130:131], v[74:81] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:672
	ds_load_u8 v151, v147 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:928
	ds_load_u8 v152, v147 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v147 offset:416
	ds_load_u8 v153, v147 offset:288
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v154, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[82:89], v[150:151], v[132:133], v[82:89] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1696
	ds_load_u8 v151, v147 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:1952
	ds_load_u8 v152, v147 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1184
	ds_load_u8 v152, v147 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1440
	ds_load_u8 v153, v147 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[82:89], v[150:151], v[130:131], v[82:89] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:688
	ds_load_u8 v151, v147 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:944
	ds_load_u8 v152, v147 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v147 offset:432
	ds_load_u8 v153, v147 offset:304
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v155, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[90:97], v[150:151], v[132:133], v[90:97] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1712
	ds_load_u8 v151, v147 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:1968
	ds_load_u8 v152, v147 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1200
	ds_load_u8 v152, v147 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1456
	ds_load_u8 v153, v147 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[90:97], v[150:151], v[130:131], v[90:97] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:704
	ds_load_u8 v151, v147 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:960
	ds_load_u8 v152, v147 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:192
	ds_load_u8 v152, v147 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:448
	ds_load_u8 v153, v147 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[98:105], v[150:151], v[132:133], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1728
	ds_load_u8 v151, v147 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:1984
	ds_load_u8 v152, v147 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1216
	ds_load_u8 v152, v147 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1472
	ds_load_u8 v153, v147 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[98:105], v[150:151], v[130:131], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:720
	ds_load_u8 v151, v147 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:976
	ds_load_u8 v152, v147 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:208
	ds_load_u8 v152, v147 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:464
	ds_load_u8 v153, v147 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[106:113], v[150:151], v[132:133], v[106:113] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1744
	ds_load_u8 v151, v147 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:2000
	ds_load_u8 v152, v147 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1232
	ds_load_u8 v152, v147 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1488
	ds_load_u8 v153, v147 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[106:113], v[150:151], v[130:131], v[106:113] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:736
	ds_load_u8 v151, v147 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:992
	ds_load_u8 v152, v147 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:224
	ds_load_u8 v152, v147 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:480
	ds_load_u8 v153, v147 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[114:121], v[150:151], v[132:133], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:1760
	ds_load_u8 v151, v147 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v147 offset:2016
	ds_load_u8 v152, v147 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v147 offset:1248
	ds_load_u8 v152, v147 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v147 offset:1504
	ds_load_u8 v153, v147 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[114:121], v[150:151], v[130:131], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v150, v147 offset:752
	ds_load_u8 v151, v147 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v149, v149
	ds_load_u8 v151, v147 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v149, 16, v150
	ds_load_u8 v149, v147 offset:240
	ds_load_u8 v151, v147 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v147 offset:496
	ds_load_u8 v152, v147 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[122:129], v[149:150], v[132:133], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v149, v147 offset:1776
	ds_load_u8 v150, v147 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v148, v148
	ds_load_u8 v150, v147 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v149
	ds_load_u8 v149, v147 offset:1264
	ds_load_u8 v150, v147 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v147 offset:1520
	ds_load_u8 v147, v147 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v147, v150, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v150, s3, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v147, v147, 16, v149
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v149, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[122:129], v[147:148], v[130:131], v[122:129] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v148, s3, v231
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v151, v148 offset:640
	ds_load_u8 v152, v148 offset:512
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v147, 0x80000000, v143, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v143, s28, v143
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	buffer_load_b32 v147, v147, s[16:19], 0 offen
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:896
	ds_load_u8 v153, v148 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:128
	ds_load_u8 v153, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:384
	ds_load_u8 v154, v148 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[10:17], v[151:152], v[132:133], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1664
	ds_load_u8 v152, v148 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:1920
	ds_load_u8 v153, v148 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1152
	ds_load_u8 v153, v148 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1408
	ds_load_u8 v154, v148 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[10:17], v[151:152], v[130:131], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:656
	ds_load_u8 v152, v148 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:912
	ds_load_u8 v153, v148 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:144
	ds_load_u8 v153, v148 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:400
	ds_load_u8 v154, v148 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[58:65], v[151:152], v[132:133], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1680
	ds_load_u8 v152, v148 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:1936
	ds_load_u8 v153, v148 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1168
	ds_load_u8 v153, v148 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1424
	ds_load_u8 v154, v148 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[58:65], v[151:152], v[130:131], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:672
	ds_load_u8 v152, v148 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:928
	ds_load_u8 v153, v148 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:160
	ds_load_u8 v153, v148 offset:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:416
	ds_load_u8 v154, v148 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[50:57], v[151:152], v[132:133], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1696
	ds_load_u8 v152, v148 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:1952
	ds_load_u8 v153, v148 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1184
	ds_load_u8 v153, v148 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1440
	ds_load_u8 v154, v148 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[50:57], v[151:152], v[130:131], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:688
	ds_load_u8 v152, v148 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:944
	ds_load_u8 v153, v148 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:176
	ds_load_u8 v153, v148 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:432
	ds_load_u8 v154, v148 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[42:49], v[151:152], v[132:133], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1712
	ds_load_u8 v152, v148 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:1968
	ds_load_u8 v153, v148 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1200
	ds_load_u8 v153, v148 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1456
	ds_load_u8 v154, v148 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[42:49], v[151:152], v[130:131], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:704
	ds_load_u8 v152, v148 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:960
	ds_load_u8 v153, v148 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:192
	ds_load_u8 v153, v148 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:448
	ds_load_u8 v154, v148 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[34:41], v[151:152], v[132:133], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1728
	ds_load_u8 v152, v148 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:1984
	ds_load_u8 v153, v148 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1216
	ds_load_u8 v153, v148 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1472
	ds_load_u8 v154, v148 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[34:41], v[151:152], v[130:131], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:720
	ds_load_u8 v152, v148 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:976
	ds_load_u8 v153, v148 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:208
	ds_load_u8 v153, v148 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:464
	ds_load_u8 v154, v148 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[26:33], v[151:152], v[132:133], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1744
	ds_load_u8 v152, v148 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:2000
	ds_load_u8 v153, v148 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1232
	ds_load_u8 v153, v148 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1488
	ds_load_u8 v154, v148 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[26:33], v[151:152], v[130:131], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:736
	ds_load_u8 v152, v148 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:992
	ds_load_u8 v153, v148 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:224
	ds_load_u8 v153, v148 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:480
	ds_load_u8 v154, v148 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[18:25], v[151:152], v[132:133], v[18:25] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:1760
	ds_load_u8 v152, v148 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v148 offset:2016
	ds_load_u8 v153, v148 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v148 offset:1248
	ds_load_u8 v153, v148 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v148 offset:1504
	ds_load_u8 v154, v148 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[18:25], v[151:152], v[130:131], v[18:25] neg_lo:[1,1,0]
	ds_load_u8 v151, v148 offset:752
	ds_load_u8 v152, v148 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v150, v150
	ds_load_u8 v152, v148 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v150, 16, v151
	ds_load_u8 v150, v148 offset:240
	ds_load_u8 v152, v148 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v148 offset:496
	ds_load_u8 v153, v148 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[132:133], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v132, v148 offset:1776
	ds_load_u8 v133, v148 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v149
	ds_load_u8 v149, v148 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v149, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v133, 16, v132
	ds_load_u8 v132, v148 offset:1264
	ds_load_u8 v149, v148 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v149, v132, 0xc0c0004
	ds_load_u8 v149, v148 offset:1520
	ds_load_u8 v148, v148 offset:1392
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v148, v148, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v132, v148, 16, v132
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[130:131], v[1:8] neg_lo:[1,1,0]
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v130, s0, v137
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s0, s26, 11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s3, s0, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v130, v146 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v130, s3, v136
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s2, s3, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s29, 0
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v130, v145, v147 offset1:16
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	v_or_b32_e32 v131, 0x80, v231
	v_or_b32_e32 v203, 0x2c0, v231
	v_and_b32_e32 v130, 8, v0
	v_or_b32_e32 v202, 0x400, v231
	v_or_b32_e32 v217, 0x480, v231
	scratch_store_b32 off, v131, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x100, v231
	v_or_b32_e32 v215, 0x500, v231
	v_or_b32_e32 v216, 0x580, v231
	v_or_b32_e32 v214, 0x600, v231
	v_or_b32_e32 v218, 0x680, v231
	scratch_store_b32 off, v131, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x180, v231
	v_or_b32_e32 v219, 0x700, v231
	v_or_b32_e32 v222, 0x780, v231
	v_or_b32_e32 v220, 0x410, v231
	v_or_b32_e32 v224, 0x490, v231
	scratch_store_b32 off, v131, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x200, v231
	v_or_b32_e32 v221, 0x510, v231
	v_or_b32_e32 v223, 0x590, v231
	v_or_b32_e32 v225, 0x610, v231
	v_or_b32_e32 v227, 0x690, v231
	scratch_store_b32 off, v131, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x280, v231
	v_or_b32_e32 v226, 0x710, v231
	v_or_b32_e32 v230, 0x790, v231
	v_or_b32_e32 v228, 0x420, v231
	v_or_b32_e32 v233, 0x4a0, v231
	scratch_store_b32 off, v131, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x300, v231
	v_or_b32_e32 v229, 0x520, v231
	v_or_b32_e32 v232, 0x5a0, v231
	v_or_b32_e32 v238, 0x620, v231
	v_or_b32_e32 v240, 0x6a0, v231
	scratch_store_b32 off, v131, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x380, v231
	v_or_b32_e32 v239, 0x720, v231
	v_or_b32_e32 v241, 0x7a0, v231
	v_or_b32_e32 v234, 0x430, v231
	v_or_b32_e32 v237, 0x4b0, v231
	scratch_store_b32 off, v131, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 16, v231
	v_or_b32_e32 v235, 0x530, v231
	v_or_b32_e32 v236, 0x5b0, v231
	v_or_b32_e32 v242, 0x630, v231
	v_or_b32_e32 v244, 0x6b0, v231
	scratch_store_b32 off, v131, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x90, v231
	v_or_b32_e32 v243, 0x730, v231
	v_or_b32_e32 v245, 0x7b0, v231
	v_or_b32_e32 v248, 0x4c0, v231
	v_or_b32_e32 v246, 0x540, v231
	scratch_store_b32 off, v131, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x110, v231
	v_or_b32_e32 v247, 0x5c0, v231
	v_or_b32_e32 v252, 0x640, v231
	v_or_b32_e32 v255, 0x6c0, v231
	v_or_b32_e32 v254, 0x740, v231
	scratch_store_b32 off, v131, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x190, v231
	v_or_b32_e32 v249, 0x450, v231
	v_or_b32_e32 v253, 0x4d0, v231
	v_or_b32_e32 v250, 0x550, v231
	v_or_b32_e32 v251, 0x5d0, v231
	scratch_store_b32 off, v131, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x210, v231
	s_mov_b32 s18, s25
	scratch_store_b32 off, v131, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x290, v231
	scratch_store_b32 off, v131, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x310, v231
	scratch_store_b32 off, v131, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x390, v231
	scratch_store_b32 off, v131, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 32, v231
	scratch_store_b32 off, v131, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xa0, v231
	scratch_store_b32 off, v131, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x120, v231
	scratch_store_b32 off, v131, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1a0, v231
	scratch_store_b32 off, v131, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x220, v231
	scratch_store_b32 off, v131, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2a0, v231
	scratch_store_b32 off, v131, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x320, v231
	scratch_store_b32 off, v131, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3a0, v231
	scratch_store_b32 off, v131, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 48, v231
	scratch_store_b32 off, v131, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xb0, v231
	scratch_store_b32 off, v131, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x130, v231
	scratch_store_b32 off, v131, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1b0, v231
	scratch_store_b32 off, v131, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x230, v231
	scratch_store_b32 off, v131, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2b0, v231
	scratch_store_b32 off, v131, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x330, v231
	scratch_store_b32 off, v131, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3b0, v231
	scratch_store_b32 off, v131, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 64, v231
	scratch_store_b32 off, v131, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xc0, v231
	scratch_store_b32 off, v131, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x140, v231
	scratch_store_b32 off, v131, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1c0, v231
	scratch_store_b32 off, v131, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x240, v231
	scratch_store_b32 off, v131, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x340, v231
	scratch_store_b32 off, v131, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3c0, v231
	scratch_store_b32 off, v131, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7c0, v231
	scratch_store_b32 off, v203, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v203, 0x440, v231
	scratch_store_b32 off, v131, off        ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x50, v231
	scratch_store_b32 off, v131, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xd0, v231
	scratch_store_b32 off, v131, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x150, v231
	scratch_store_b32 off, v131, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1d0, v231
	scratch_store_b32 off, v131, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x250, v231
	scratch_store_b32 off, v131, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2d0, v231
	scratch_store_b32 off, v131, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x350, v231
	scratch_store_b32 off, v131, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3d0, v231
	scratch_store_b32 off, v131, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x650, v231
	scratch_store_b32 off, v131, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6d0, v231
	scratch_store_b32 off, v131, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x750, v231
	scratch_store_b32 off, v131, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7d0, v231
	scratch_store_b32 off, v131, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x60, v231
	scratch_store_b32 off, v131, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xe0, v231
	scratch_store_b32 off, v131, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x160, v231
	scratch_store_b32 off, v131, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1e0, v231
	scratch_store_b32 off, v131, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x260, v231
	scratch_store_b32 off, v131, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2e0, v231
	scratch_store_b32 off, v131, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x360, v231
	scratch_store_b32 off, v131, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3e0, v231
	scratch_store_b32 off, v131, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x460, v231
	scratch_store_b32 off, v131, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x4e0, v231
	scratch_store_b32 off, v131, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x560, v231
	scratch_store_b32 off, v131, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x5e0, v231
	scratch_store_b32 off, v131, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x660, v231
	scratch_store_b32 off, v131, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6e0, v231
	scratch_store_b32 off, v131, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x760, v231
	scratch_store_b32 off, v131, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7e0, v231
	scratch_store_b32 off, v131, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x70, v231
	scratch_store_b32 off, v131, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xf0, v231
	scratch_store_b32 off, v131, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x170, v231
	scratch_store_b32 off, v131, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1f0, v231
	scratch_store_b32 off, v131, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x270, v231
	scratch_store_b32 off, v131, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2f0, v231
	scratch_store_b32 off, v131, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x370, v231
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v131, off offset:156
	scratch_store_b32 off, v135, off offset:164
	v_or_b32_e32 v131, 0x470, v231
	scratch_store_b32 off, v131, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x4f0, v231
	scratch_store_b32 off, v131, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x570, v231
	scratch_store_b32 off, v131, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x5f0, v231
	scratch_store_b32 off, v131, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x670, v231
	scratch_store_b32 off, v131, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6f0, v231
	scratch_store_b32 off, v131, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x770, v231
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v131, off offset:68
	scratch_store_b32 off, v9, off offset:72
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s10, 0, 0x2000
	s_add_i32 s30, 0, 0x2100
	s_add_i32 s3, 0, 0x800
	s_add_i32 s1, 0, 0x1000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v73, v9
	v_dual_mov_b32 v67, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v75, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v79, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v77, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v81, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v83, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v87, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v85, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v89, v9 :: v_dual_mov_b32 v36, v8
	v_dual_mov_b32 v91, v9 :: v_dual_mov_b32 v38, v8
	v_dual_mov_b32 v95, v9 :: v_dual_mov_b32 v34, v8
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v48, v8
	v_dual_mov_b32 v97, v9 :: v_dual_mov_b32 v44, v8
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v16, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v123, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v127, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v125, v9 :: v_dual_mov_b32 v66, v8
	v_mov_b32_e32 v129, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s2, 0, 0x1800
.LBB0_8:                                ; %._crit_edge
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v130, 0, 1, s23
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v9, v9, v134
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_xor_b32_e32 v198, 8, v9
	v_add_nc_u32_e32 v131, s10, v9
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v179, v115 :: v_dual_add_nc_u32 v132, s10, v198
	v_dual_mov_b32 v178, v114 :: v_dual_mov_b32 v183, v119
	v_mov_b32_e32 v182, v118
	ds_load_b64 v[196:197], v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[194:195], v132
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_cmp_ne_u32_e64 s0, 1, v130
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	s_and_not1_b32 vcc_lo, exec_lo, s23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:256
	scratch_load_b32 v131, off, off offset:244
	v_add_nc_u32_e32 v133, s18, v231
	v_add_nc_u32_e32 v142, s18, v215
	v_add_nc_u32_e32 v165, s18, v234
	v_add_nc_u32_e32 v140, s18, v219
	v_add_nc_u32_e32 v156, s18, v239
	v_add_nc_u32_e32 v141, s18, v202
	v_add_nc_u32_e32 v158, s18, v229
	v_add_nc_u32_e32 v150, s18, v226
	v_add_nc_u32_e32 v151, s18, v220
	v_add_nc_u32_e32 v152, s18, v221
	v_add_nc_u32_e32 v157, s18, v228
	v_add_nc_u32_e32 v164, s18, v243
	v_add_nc_u32_e32 v166, s18, v235
	v_add_nc_u32_e32 v172, s18, v254
	v_add_nc_u32_e32 v173, s18, v203
	v_add_nc_u32_e32 v181, s18, v253
	v_add_nc_u32_e32 v182, s18, v250
	v_add_nc_u32_e32 v174, s18, v246
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v133, v133
	ds_load_u8 v142, v142
	ds_load_u8 v165, v165
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v132, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	ds_load_u8 v156, v156
	ds_load_u8 v141, v141
	ds_load_u8 v158, v158
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v134, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v157, v157
	ds_load_u8 v164, v164
	ds_load_u8 v166, v166
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v174, v174
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v159, off, off offset:88
	scratch_load_b32 v160, off, off offset:84
	scratch_load_b32 v180, off, off offset:48
	scratch_load_b32 v189, off, off offset:32
	scratch_load_b32 v190, off, off offset:8
	scratch_load_b32 v188, off, off offset:64
	scratch_load_b32 v212, off, off offset:44
	scratch_load_b32 v213, off, off offset:12
	scratch_load_b32 v201, off, off offset:80
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v130, s18, v130
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v131, s18, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v130, v130
	ds_load_u8 v131, v131
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v132, s18, v132
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v131, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v132, v132
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v134, s18, v134
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v134, v134
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v159, s18, v159
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v160, s18, v160
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v180, s18, v180
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v189, s18, v189
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v190, s18, v190
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v180, v180
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v188, s18, v188
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v212, s18, v212
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v213, s18, v213
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v201, s18, v201
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v201, v201
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s18, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v131, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v132, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v139, v131, 16, v130
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s18, v132
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v132, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v133, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s18, v133
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v133, v133
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v133, 16, v132
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[196:197], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v138, s18, v218
	v_add_nc_u32_e32 v139, s18, v214
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v139, s18, v222
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v140, s18, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v147, v139, 16, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:280
	scratch_load_b32 v139, off, off offset:272
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v138, s18, v138
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s18, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v141, s18, v216
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v142, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v141, 16, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[146:147], v[194:195], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v146, off, off offset:268
	scratch_load_b32 v140, off, off offset:216
	scratch_load_b32 v147, off, off offset:252
	scratch_load_b32 v141, off, off offset:148
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v139, s18, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v142, s18, v142
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v142, v142
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v146, s18, v146
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v140, s18, v140
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v147, s18, v147
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s18, v141
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	ds_load_u8 v140, v140
	ds_load_u8 v147, v147
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v140, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v149, v139, 16, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s18, v140
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s18, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v141, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s18, v141
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v141, 16, v140
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_wmma_i32_16x16x16_iu4 v[138:145], v[148:149], v[196:197], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v148, s18, v227
	v_add_nc_u32_e32 v149, s18, v225
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v149, s18, v230
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v150, s18, v224
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v150, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v151, s18, v223
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v151, 16, v150
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v150, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[148:149], v[194:195], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:176
	scratch_load_b32 v149, off, off offset:120
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v150, s18, v150
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s18, v148
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s18, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v150, v150
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v148, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v155, v147, 16, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v148, s18, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v149, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s18, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v149, 16, v148
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[196:197], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v154, s18, v240
	v_add_nc_u32_e32 v155, s18, v238
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v155, s18, v241
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v156, s18, v233
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v155, v155, 16, v154
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v157, s18, v232
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v157, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v158, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v154, v157, 16, v156
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v156, off, off offset:204
	scratch_load_b32 v157, off, off offset:196
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[194:195], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v158, s18, v158
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v156, s18, v156
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s18, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v158
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v157, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s18, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v157, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v158, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v163, v157, 16, v156
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v158, s18, v158
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v159, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, s18, v159
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v159, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v159, 16, v158
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[196:197], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v162, s18, v244
	v_add_nc_u32_e32 v163, s18, v242
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v163, s18, v245
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v164, s18, v237
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v200, v163, 16, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:332
	scratch_load_b32 v163, off, off offset:328
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s18, v162
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s18, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v165, s18, v236
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v166, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v199, v165, 16, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:320
	scratch_load_b32 v165, off, off offset:296
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[154:161], v[199:200], v[194:195], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v163, s18, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v166, s18, v166
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v164, s18, v164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s18, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v166, v166
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v164, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v171, v163, 16, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v164, s18, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v165, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s18, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v165, 16, v164
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[196:197], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v170, s18, v255
	v_add_nc_u32_e32 v171, s18, v252
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s18, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v172, s18, v248
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v205, v171, 16, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v170, off, off offset:316
	scratch_load_b32 v171, off, off offset:312
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v170, s18, v170
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s18, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v173, s18, v247
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v204, v173, 16, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v172, off, off offset:276
	scratch_load_b32 v173, off, off offset:260
	scratch_load_b32 v174, off, off offset:208
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[162:169], v[204:205], v[194:195], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v171, s18, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v172, s18, v172
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v173, s18, v173
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s18, v174
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v172, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v179, v171, 16, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s18, v172
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v173, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s18, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v173, 16, v172
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[196:197], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:40
	scratch_load_b32 v179, off, off offset:28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s18, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s18, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s18, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v180, s18, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v207, v179, 16, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:300
	scratch_load_b32 v179, off, off offset:288
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s18, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s18, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v181, s18, v251
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v181, 16, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v180, off, off offset:264
	scratch_load_b32 v181, off, off offset:200
	scratch_load_b32 v182, off, off offset:180
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[170:177], v[206:207], v[194:195], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v179, s18, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v180, s18, v180
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v181, s18, v181
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s18, v182
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v180, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v187, v179, 16, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s18, v180
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v181, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s18, v181
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v181, 16, v180
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_dual_mov_b32 v183, v119 :: v_dual_mov_b32 v182, v118
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	v_dual_mov_b32 v179, v115 :: v_dual_mov_b32 v178, v114
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[196:197], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:60
	scratch_load_b32 v187, off, off offset:52
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s18, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s18, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s18, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v209, v187, 16, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:240
	scratch_load_b32 v187, off, off offset:228
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v188, s18, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s18, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s18, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v188, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v189, s18, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s18, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v208, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v188, off, off offset:164
	scratch_load_b32 v189, off, off offset:132
	scratch_load_b32 v190, off, off offset:100
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[208:209], v[194:195], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v188, s18, v188
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v189, s18, v189
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s18, v190
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v187, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v211, v187, 16, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s18, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s18, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v210, v189, 16, v188
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_wmma_i32_16x16x16_iu4 v[186:193], v[210:211], v[196:197], v[186:193] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v210, off, off offset:76
	scratch_load_b32 v211, off, off offset:72
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v210, s18, v210
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s18, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v210, v210
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v201, v210, v201, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v210, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, s18, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v210, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v210, v210, v211, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v211, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s18, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v212, v211, v212, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v211, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s18, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v213, v213, v211, 0xc0c0004
	v_lshl_or_b32 v211, v210, 16, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v210, v213, 16, v212
	v_wmma_i32_16x16x16_iu4 v[186:193], v[210:211], v[194:195], v[186:193] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v66, off, off offset:256
	scratch_load_b32 v67, off, off offset:244
	scratch_load_b32 v68, off, off offset:152
	scratch_load_b32 v70, off, off offset:168
	scratch_load_b32 v71, off, off offset:212
	scratch_load_b32 v73, off, off offset:216
	scratch_load_b32 v72, off, off offset:172
	v_dual_mov_b32 v128, v192 :: v_dual_mov_b32 v129, v193
	v_dual_mov_b32 v124, v188 :: v_dual_mov_b32 v125, v189
	v_mov_b32_e32 v122, v186
	v_mov_b32_e32 v120, v184
	v_mov_b32_e32 v126, v190
	v_mov_b32_e32 v118, v182
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:200
	scratch_load_b32 v79, off, off offset:156
	v_dual_mov_b32 v123, v187 :: v_dual_mov_b32 v116, v180
	v_dual_mov_b32 v117, v181 :: v_dual_mov_b32 v114, v178
	v_dual_mov_b32 v112, v176 :: v_dual_mov_b32 v121, v185
	v_dual_mov_b32 v108, v172 :: v_dual_mov_b32 v119, v183
	v_mov_b32_e32 v110, v174
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:136
	scratch_load_b32 v75, off, off offset:176
	v_mov_b32_e32 v115, v179
	v_dual_mov_b32 v113, v177 :: v_dual_mov_b32 v104, v168
	v_dual_mov_b32 v100, v164 :: v_dual_mov_b32 v109, v173
	v_mov_b32_e32 v98, v162
	v_mov_b32_e32 v106, v170
	v_dual_mov_b32 v102, v166 :: v_dual_mov_b32 v127, v191
	v_dual_mov_b32 v107, v171 :: v_dual_mov_b32 v92, v156
	v_dual_mov_b32 v94, v158 :: v_dual_mov_b32 v111, v175
	v_mov_b32_e32 v96, v160
	v_dual_mov_b32 v90, v154 :: v_dual_mov_b32 v105, v169
	v_dual_mov_b32 v88, v152 :: v_dual_mov_b32 v89, v153
	v_dual_mov_b32 v103, v167 :: v_dual_mov_b32 v86, v150
	v_dual_mov_b32 v82, v146 :: v_dual_mov_b32 v101, v165
	v_mov_b32_e32 v84, v148
	v_dual_mov_b32 v80, v144 :: v_dual_mov_b32 v81, v145
	v_mov_b32_e32 v99, v163
	v_mov_b32_e32 v93, v157
	v_mov_b32_e32 v97, v161
	scratch_load_b32 v77, off, off offset:248 ; 4-byte Folded Reload
	v_mov_b32_e32 v95, v159
	v_mov_b32_e32 v91, v155
	scratch_load_b32 v78, off, off offset:132 ; 4-byte Folded Reload
	v_mov_b32_e32 v85, v149
	v_mov_b32_e32 v83, v147
	s_waitcnt vmcnt(12)
	v_dual_mov_b32 v87, v151 :: v_dual_add_nc_u32 v66, s1, v66
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v76, s1, v76
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v76, v76
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:236
	scratch_load_b32 v69, off, off offset:144
	v_add_nc_u32_e32 v68, s1, v68
	v_add_nc_u32_e32 v70, s1, v70
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v231
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:280
	scratch_load_b32 v70, off, off offset:160
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[196:197], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v69, s1, v69
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s1, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s1, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:232
	scratch_load_b32 v67, off, off offset:196
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:148 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s1, v73
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:268
	scratch_load_b32 v72, off, off offset:128
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[196:197], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:92
	scratch_load_b32 v69, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:192
	scratch_load_b32 v73, off, off offset:124
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:308
	scratch_load_b32 v74, off, off offset:260
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[196:197], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:96
	scratch_load_b32 v71, off, off offset:104
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s1, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v68, s1, v68
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:332
	scratch_load_b32 v70, off, off offset:304
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[196:197], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v66, s1, v218
	v_add_nc_u32_e32 v67, s1, v214
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s1, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v67, s1, v222
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:324 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:296 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v70, s1, v70
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:316
	scratch_load_b32 v72, off, off offset:224
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[196:197], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v216
	v_add_nc_u32_e32 v69, s1, v215
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v225
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:284 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:220 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:300
	scratch_load_b32 v74, off, off offset:188
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[196:197], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v217
	v_add_nc_u32_e32 v71, s1, v219
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v221
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v227
	v_add_nc_u32_e32 v70, s1, v223
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[194:195], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v66, s1, v244
	v_add_nc_u32_e32 v67, s1, v242
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v230
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v67, s1, v245
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s1, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v74, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:240
	scratch_load_b32 v76, off, off offset:112
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[196:197], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v72, s1, v224
	v_add_nc_u32_e32 v73, s1, v226
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	ds_load_u8 v69, v69
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v238
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v229
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v240
	v_add_nc_u32_e32 v72, s1, v232
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[194:195], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v70, v70
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v236
	v_add_nc_u32_e32 v69, s1, v235
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v241
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v252
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, s1, v78
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v78, v78
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:108 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v76, s1, v76
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v74, v76, 16, v78
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:32
	scratch_load_b32 v78, off, off offset:44
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[196:197], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v74, s1, v233
	v_add_nc_u32_e32 v75, s1, v239
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	ds_load_u8 v71, v71
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v254
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v75, s1, v228
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v72, s1, v248
	v_add_nc_u32_e32 v74, s1, v253
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[194:195], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v237
	v_add_nc_u32_e32 v71, s1, v243
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v246
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v255
	v_add_nc_u32_e32 v70, s1, v247
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[194:195], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	v_dual_mov_b32 v66, v130 :: v_dual_mov_b32 v67, v131
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off          ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v76, s1, v76
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v76, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v250
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:40 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v251
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[194:195], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v68, v132
	ds_load_u8 v72, v72
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v69, v133 :: v_dual_add_nc_u32 v70, s1, v70
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v75, s1, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:60
	scratch_load_b32 v74, off, off offset:16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_dual_mov_b32 v70, v134 :: v_dual_mov_b32 v71, v135
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s1, v72
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v74, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:80
	scratch_load_b32 v76, off, off offset:24
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	v_dual_mov_b32 v72, v136 :: v_dual_mov_b32 v73, v137
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:72 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, s1, v78
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v78, v78
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v76, s1, v76
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v74, v76, 16, v78
	v_mov_b32_e32 v76, v140
	v_dual_mov_b32 v78, v142 :: v_dual_mov_b32 v77, v141
	v_mov_b32_e32 v79, v143
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[194:195], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v74, v138 :: v_dual_mov_b32 v75, v139
.LBB0_12:                               ; %._crit_edge279
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v197, v125
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v255, off offset:484
	scratch_store_b32 off, v254, off offset:480
	scratch_store_b32 off, v253, off offset:476
	scratch_store_b32 off, v252, off offset:472
	scratch_store_b32 off, v251, off offset:468
	scratch_store_b32 off, v250, off offset:464
	scratch_store_b32 off, v249, off offset:460
	scratch_store_b32 off, v248, off offset:456
	scratch_store_b32 off, v247, off offset:452
	scratch_store_b32 off, v246, off offset:448
	scratch_store_b32 off, v203, off offset:444
	scratch_store_b32 off, v245, off offset:440
	scratch_store_b32 off, v244, off offset:436
	scratch_store_b32 off, v243, off offset:432
	scratch_store_b32 off, v242, off offset:428
	scratch_store_b32 off, v241, off offset:424
	scratch_store_b32 off, v240, off offset:420
	scratch_store_b32 off, v239, off offset:416
	scratch_store_b32 off, v238, off offset:412
	scratch_store_b32 off, v237, off offset:408
	scratch_store_b32 off, v236, off offset:404
	scratch_store_b32 off, v235, off offset:400
	scratch_store_b32 off, v234, off offset:396
	scratch_store_b32 off, v233, off offset:392
	scratch_store_b32 off, v232, off offset:388
	scratch_store_b32 off, v230, off offset:384
	scratch_store_b32 off, v229, off offset:380
	scratch_store_b32 off, v228, off offset:376
	scratch_store_b32 off, v227, off offset:372
	scratch_store_b32 off, v226, off offset:368
	scratch_store_b32 off, v225, off offset:364
	scratch_store_b32 off, v224, off offset:360
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v223, off offset:356
	scratch_store_b32 off, v222, off offset:496
	scratch_store_b32 off, v221, off offset:348
	scratch_store_b32 off, v220, off offset:344
	scratch_store_b32 off, v219, off offset:492
	v_dual_mov_b32 v255, v129 :: v_dual_mov_b32 v196, v124
	v_dual_mov_b32 v230, v218 :: v_dual_add_nc_u32 v9, s30, v9
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v194, 0, 1, s22
	v_dual_mov_b32 v254, v128 :: v_dual_add_nc_u32 v195, s30, v198
	scratch_store_b64 off, v[196:197], off offset:504 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v127 :: v_dual_mov_b32 v196, v126
	v_cmp_ne_u32_e64 s0, 1, v194
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_b64 v[228:229], v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[194:195], v195
	v_mov_b32_e32 v209, v117
	s_clause 0x5                            ; 28-byte Folded Spill
	scratch_store_b32 off, v217, off offset:488
	scratch_store_b32 off, v216, off offset:340
	scratch_store_b32 off, v215, off offset:336
	scratch_store_b32 off, v202, off offset:352
	scratch_store_b32 off, v214, off offset:500
	scratch_store_b64 off, v[196:197], off offset:512
	v_dual_mov_b32 v197, v123 :: v_dual_mov_b32 v196, v122
	v_dual_mov_b32 v208, v116 :: v_dual_mov_b32 v203, v119
	v_mov_b32_e32 v211, v115
	v_mov_b32_e32 v213, v113
	scratch_store_b64 off, v[196:197], off offset:520 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v121 :: v_dual_mov_b32 v196, v120
	v_mov_b32_e32 v241, v109
	v_mov_b32_e32 v207, v111
	v_mov_b32_e32 v217, v107
	v_mov_b32_e32 v219, v105
	scratch_store_b64 off, v[196:197], off offset:528 ; 8-byte Folded Spill
	v_mov_b32_e32 v205, v101
	v_mov_b32_e32 v221, v103
	v_mov_b32_e32 v223, v99
	v_mov_b32_e32 v227, v97
	v_mov_b32_e32 v225, v93
	v_mov_b32_e32 v233, v95
	v_mov_b32_e32 v237, v91
	v_mov_b32_e32 v235, v89
	v_mov_b32_e32 v239, v85
	v_mov_b32_e32 v243, v87
	v_mov_b32_e32 v245, v83
	v_mov_b32_e32 v247, v81
	v_mov_b32_e32 v249, v77
	v_mov_b32_e32 v251, v79
	v_mov_b32_e32 v215, v75
	v_mov_b32_e32 v253, v73
	v_mov_b32_e32 v197, v69
	v_mov_b32_e32 v199, v71
	v_dual_mov_b32 v201, v67 :: v_dual_mov_b32 v202, v118
	v_mov_b32_e32 v210, v114
	v_mov_b32_e32 v212, v112
	v_mov_b32_e32 v240, v108
	v_mov_b32_e32 v206, v110
	v_mov_b32_e32 v216, v106
	v_mov_b32_e32 v218, v104
	v_mov_b32_e32 v204, v100
	v_mov_b32_e32 v220, v102
	v_mov_b32_e32 v222, v98
	v_mov_b32_e32 v226, v96
	v_mov_b32_e32 v224, v92
	v_mov_b32_e32 v232, v94
	v_mov_b32_e32 v236, v90
	v_mov_b32_e32 v234, v88
	v_mov_b32_e32 v238, v84
	v_mov_b32_e32 v242, v86
	v_mov_b32_e32 v244, v82
	v_mov_b32_e32 v246, v80
	v_mov_b32_e32 v248, v76
	v_mov_b32_e32 v250, v78
	v_mov_b32_e32 v214, v74
	v_mov_b32_e32 v252, v72
	v_mov_b32_e32 v196, v68
	v_mov_b32_e32 v198, v70
	v_mov_b32_e32 v200, v66
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v9, off, off offset:240
	scratch_load_b32 v196, off, off offset:228
	scratch_load_b32 v197, off, off offset:156
	scratch_load_b32 v198, off, off offset:108
	scratch_load_b32 v199, off, off offset:100
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v196, s3, v196
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v197, s3, v197
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v198, s3, v198
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s3, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v196, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v196, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, s3, v196
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v198, v197, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v199, v197, 0xc0c0004
	v_lshl_or_b32 v197, v196, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v196, v199, 16, v198
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:20
	scratch_load_b32 v199, off, off offset:12
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[186:193], v[196:197], v[228:229], v[186:193] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v196, off, off offset:76
	scratch_load_b32 v197, off, off offset:68
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v198, s3, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v199, s3, v199
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v196, s3, v196
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v196, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v196, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, s3, v196
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v198, v197, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v199, v197, 0xc0c0004
	v_lshl_or_b32 v197, v196, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v196, v199, 16, v198
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[196:197], v[194:195], v[186:193] neg_lo:[1,1,0]
	scratch_store_b64 off, v[188:189], off offset:504 ; 8-byte Folded Spill
	v_dual_mov_b32 v188, v190 :: v_dual_mov_b32 v189, v191
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[188:189], off offset:512
	scratch_store_b64 off, v[186:187], off offset:520
	scratch_load_b32 v186, off, off offset:288 ; 4-byte Folded Reload
	v_dual_mov_b32 v255, v193 :: v_dual_mov_b32 v254, v192
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v187, off, off offset:248
	scratch_load_b32 v188, off, off offset:184
	scratch_load_b32 v189, off, off offset:180
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v186, s3, v186
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v187, s3, v187
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v188, s3, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s3, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v186, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v186, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s3, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v187, 0xc0c0004
	v_lshl_or_b32 v187, v186, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:4
	scratch_load_b32 v189, off, off offset:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[228:229], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:52
	scratch_load_b32 v187, off, off offset:56
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v188, s3, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v189, s3, v189
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s3, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v186, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v186, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s3, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v187, 0xc0c0004
	v_lshl_or_b32 v187, v186, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[194:195], v[178:185] neg_lo:[1,1,0]
	v_dual_mov_b32 v211, v179 :: v_dual_mov_b32 v210, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:312 ; 4-byte Folded Reload
	v_dual_mov_b32 v209, v181 :: v_dual_mov_b32 v208, v180
	v_dual_mov_b32 v203, v183 :: v_dual_mov_b32 v202, v182
	scratch_store_b64 off, v[184:185], off offset:528 ; 8-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v179, off, off offset:276
	scratch_load_b32 v180, off, off offset:220
	scratch_load_b32 v181, off, off offset:208
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v178, s3, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v179, s3, v179
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v180, s3, v180
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s3, v181
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v178, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s3, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v179, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v179, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v178, v181, 16, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:460
	scratch_load_b32 v181, off, off offset:464
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[228:229], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:28
	scratch_load_b32 v179, off, off offset:36
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v180, s3, v180
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v181, s3, v181
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s3, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v178, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s3, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v179, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v179, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v178, v181, 16, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[194:195], v[170:177] neg_lo:[1,1,0]
	v_dual_mov_b32 v217, v171 :: v_dual_mov_b32 v216, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off offset:328 ; 4-byte Folded Reload
	v_dual_mov_b32 v241, v173 :: v_dual_mov_b32 v240, v172
	v_mov_b32_e32 v213, v177
	v_dual_mov_b32 v207, v175 :: v_dual_mov_b32 v212, v176
	v_mov_b32_e32 v206, v174
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v171, off, off offset:320
	scratch_load_b32 v172, off, off offset:296
	scratch_load_b32 v173, off, off offset:292
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v170, s3, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v171, s3, v171
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v172, s3, v172
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s3, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v170, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s3, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s3, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s3, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v171, 0xc0c0004
	v_lshl_or_b32 v171, v170, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v170, v173, 16, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v172, off, off offset:444
	scratch_load_b32 v173, off, off offset:448
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[228:229], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v170, off, off offset:472
	scratch_load_b32 v171, off, off offset:480
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v172, s3, v172
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v173, s3, v173
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v170, s3, v170
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s3, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v170, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s3, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s3, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s3, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v171, 0xc0c0004
	v_lshl_or_b32 v171, v170, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v170, v173, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[194:195], v[162:169] neg_lo:[1,1,0]
	v_dual_mov_b32 v223, v163 :: v_dual_mov_b32 v222, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:196 ; 4-byte Folded Reload
	v_dual_mov_b32 v205, v165 :: v_dual_mov_b32 v204, v164
	v_mov_b32_e32 v219, v169
	v_dual_mov_b32 v221, v167 :: v_dual_mov_b32 v218, v168
	v_mov_b32_e32 v220, v166
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v163, off, off offset:104
	scratch_load_b32 v164, off, off offset:88
	scratch_load_b32 v165, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v162, s3, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v163, s3, v163
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v164, s3, v164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s3, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v162, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s3, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s3, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s3, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v162, v165, 16, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:396
	scratch_load_b32 v165, off, off offset:400
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[228:229], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:428
	scratch_load_b32 v163, off, off offset:432
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v164, s3, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v165, s3, v165
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s3, v162
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s3, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v162, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s3, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s3, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s3, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v162, v165, 16, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[194:195], v[154:161] neg_lo:[1,1,0]
	v_dual_mov_b32 v237, v155 :: v_dual_mov_b32 v236, v154
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:252 ; 4-byte Folded Reload
	v_dual_mov_b32 v225, v157 :: v_dual_mov_b32 v224, v156
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v156, off, off offset:120
	scratch_load_b32 v157, off, off offset:124
	scratch_load_b32 v155, off, off offset:176
	v_mov_b32_e32 v227, v161
	v_dual_mov_b32 v233, v159 :: v_dual_mov_b32 v226, v160
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v232, v158 :: v_dual_add_nc_u32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v154, s3, v154
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v156, s3, v156
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v157, s3, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v154, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s3, v154
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v154, v157, 16, v156
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v156, off, off offset:376
	scratch_load_b32 v157, off, off offset:380
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[228:229], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:412
	scratch_load_b32 v155, off, off offset:416
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v156, s3, v156
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v157, s3, v157
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v154, s3, v154
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v154, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s3, v154
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s3, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v154, v157, 16, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[194:195], v[146:153] neg_lo:[1,1,0]
	v_dual_mov_b32 v245, v147 :: v_dual_mov_b32 v244, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:272 ; 4-byte Folded Reload
	v_dual_mov_b32 v239, v149 :: v_dual_mov_b32 v238, v148
	v_mov_b32_e32 v235, v153
	v_dual_mov_b32 v243, v151 :: v_dual_mov_b32 v234, v152
	v_mov_b32_e32 v242, v150
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v147, off, off offset:216
	scratch_load_b32 v148, off, off offset:148
	scratch_load_b32 v149, off, off offset:140
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v146, s3, v146
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v147, s3, v147
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s3, v148
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s3, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v146, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s3, v146
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v149, 16, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:344
	scratch_load_b32 v149, off, off offset:348
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[228:229], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:364
	scratch_load_b32 v147, off, off offset:368
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v148, s3, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v149, s3, v149
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v146, s3, v146
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v146, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s3, v146
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v149, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[194:195], v[138:145] neg_lo:[1,1,0]
	v_dual_mov_b32 v215, v139 :: v_dual_mov_b32 v214, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:244 ; 4-byte Folded Reload
	v_dual_mov_b32 v249, v141 :: v_dual_mov_b32 v248, v140
	v_dual_mov_b32 v247, v145 :: v_dual_add_nc_u32 v140, s3, v231
	v_dual_mov_b32 v251, v143 :: v_dual_mov_b32 v246, v144
	v_mov_b32_e32 v250, v142
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:212
	scratch_load_b32 v141, off, off offset:144
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v138, s3, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s3, v139
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s3, v141
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v138, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s3, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s3, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s3, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v9, s3, v230
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v138, v141, 16, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v140, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v141, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[228:229], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:500
	scratch_load_b32 v139, off, off offset:492
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v140, s3, v140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v141, s3, v141
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v138, s3, v138
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s3, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v138, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s3, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s3, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s3, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[194:195], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v253, v137
	v_mov_b32_e32 v197, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v199, v135
	v_dual_mov_b32 v201, v131 :: v_dual_mov_b32 v252, v136
	v_mov_b32_e32 v196, v132
	v_mov_b32_e32 v198, v134
	v_mov_b32_e32 v200, v130
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:256
	scratch_load_b32 v66, off, off offset:244
	v_add_nc_u32_e32 v68, s2, v231
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v69, off, off offset:144
	scratch_load_b32 v70, off, off offset:148
	scratch_load_b32 v71, off, off offset:140
	v_dual_mov_b32 v116, v202 :: v_dual_mov_b32 v117, v203
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v67, off, off offset:212
	scratch_load_b32 v74, off, off offset:184
	scratch_load_b32 v76, off, off offset:108
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x6                            ; 44-byte Folded Reload
	scratch_load_b32 v72, off, off offset:120
	scratch_load_b32 v73, off, off offset:124
	scratch_load_b64 v[124:125], off, off offset:504
	scratch_load_b64 v[130:131], off, off offset:512
	scratch_load_b64 v[122:123], off, off offset:520
	scratch_load_b64 v[133:134], off, off offset:528
	scratch_load_b32 v77, off, off offset:100
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v69, s2, v69
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v70, s2, v70
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v67, s2, v67
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v74, s2, v74
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v76, s2, v76
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v72, s2, v72
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v73, s2, v73
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s2, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:272
	scratch_load_b32 v69, off, off offset:216
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[228:229], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s2, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:252
	scratch_load_b32 v71, off, off offset:176
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[228:229], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:88
	scratch_load_b32 v69, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s2, v68
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v72, off, off offset:220
	scratch_load_b32 v75, off, off offset:180
	scratch_load_b32 v73, off, off offset:208
	scratch_load_b32 v67, off, off offset:104
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[228:229], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:296
	scratch_load_b32 v71, off, off offset:292
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v9, s2, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v72, s2, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v67, s2, v67
	v_add_nc_u32_e32 v73, s2, v73
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s2, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:328
	scratch_load_b32 v69, off, off offset:320
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[228:229], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:500
	scratch_load_b32 v67, off, off offset:492
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s2, v69
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s2, v66
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:312
	scratch_load_b32 v71, off, off offset:276
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[228:229], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:288
	scratch_load_b32 v73, off, off offset:248
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[228:229], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:348
	scratch_load_b32 v70, off, off offset:344
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s2, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s2, v73
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v72, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v72, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s2, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v75, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[228:229], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v72, off, off offset:376
	scratch_load_b32 v74, off, off offset:228
	scratch_load_b32 v73, off, off offset:380
	scratch_load_b32 v69, off, off offset:336
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s2, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s2, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v74, s2, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v74, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v74, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v74, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s2, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v75, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v9, s2, v230
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	v_lshl_or_b32 v74, v77, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:20
	scratch_load_b32 v77, off, off offset:12
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[228:229], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:4
	scratch_load_b32 v75, off, off offset:8
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v76, s2, v76
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v77, s2, v77
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v74, s2, v74
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v75, s2, v75
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:364
	scratch_load_b32 v69, off, off offset:368
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[194:195], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:432
	scratch_load_b32 v66, off, off offset:428
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s2, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:412
	scratch_load_b32 v71, off, off offset:416
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[194:195], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:400
	scratch_load_b32 v68, off, off offset:396
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:460
	scratch_load_b32 v73, off, off offset:464
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[194:195], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:448
	scratch_load_b32 v70, off, off offset:444
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s2, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s2, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s2, v73
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s2, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:472
	scratch_load_b32 v69, off, off offset:480
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[194:195], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s2, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:28
	scratch_load_b32 v71, off, off offset:36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[194:195], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s2, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s2, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:52
	scratch_load_b32 v73, off, off offset:56
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s2, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v72, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v72, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s2, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v75, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:76
	scratch_load_b32 v75, off, off offset:68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s2, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v74, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v74, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v74, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s2, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s2, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v75, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v77, 16, v76
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[194:195], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v255, v129 :: v_dual_mov_b32 v254, v128
	v_dual_mov_b32 v131, v127 :: v_dual_mov_b32 v130, v126
	v_dual_mov_b32 v134, v121 :: v_dual_mov_b32 v133, v120
	v_dual_mov_b32 v209, v117 :: v_dual_mov_b32 v208, v116
	v_dual_mov_b32 v116, v118 :: v_dual_mov_b32 v117, v119
	v_dual_mov_b32 v211, v115 :: v_dual_mov_b32 v210, v114
	v_dual_mov_b32 v213, v113 :: v_dual_mov_b32 v212, v112
	v_dual_mov_b32 v241, v109 :: v_dual_mov_b32 v240, v108
	v_dual_mov_b32 v207, v111 :: v_dual_mov_b32 v206, v110
	v_dual_mov_b32 v217, v107 :: v_dual_mov_b32 v216, v106
	v_dual_mov_b32 v219, v105 :: v_dual_mov_b32 v218, v104
	v_dual_mov_b32 v205, v101 :: v_dual_mov_b32 v204, v100
	v_dual_mov_b32 v221, v103 :: v_dual_mov_b32 v220, v102
	v_dual_mov_b32 v223, v99 :: v_dual_mov_b32 v222, v98
	v_dual_mov_b32 v227, v97 :: v_dual_mov_b32 v226, v96
	v_dual_mov_b32 v225, v93 :: v_dual_mov_b32 v224, v92
	v_dual_mov_b32 v233, v95 :: v_dual_mov_b32 v232, v94
	v_dual_mov_b32 v237, v91 :: v_dual_mov_b32 v236, v90
	v_dual_mov_b32 v235, v89 :: v_dual_mov_b32 v234, v88
	v_dual_mov_b32 v239, v85 :: v_dual_mov_b32 v238, v84
	v_dual_mov_b32 v243, v87 :: v_dual_mov_b32 v242, v86
	v_dual_mov_b32 v245, v83 :: v_dual_mov_b32 v244, v82
	v_dual_mov_b32 v247, v81 :: v_dual_mov_b32 v246, v80
	v_dual_mov_b32 v249, v77 :: v_dual_mov_b32 v248, v76
	v_dual_mov_b32 v251, v79 :: v_dual_mov_b32 v250, v78
	v_dual_mov_b32 v215, v75 :: v_dual_mov_b32 v214, v74
	v_dual_mov_b32 v253, v73 :: v_dual_mov_b32 v252, v72
	v_dual_mov_b32 v197, v69 :: v_dual_mov_b32 v196, v68
	v_dual_mov_b32 v199, v71 :: v_dual_mov_b32 v198, v70
	v_dual_mov_b32 v201, v67 :: v_dual_mov_b32 v200, v66
.LBB0_17:
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s21, v231
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v73, v0, 4, 1
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s20, s11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 133 31                        ; generate_amdgcn.py:133:31
	v_add_lshl_u32 v66, s0, v73, 1
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s12, s4
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v98, v9, s[12:15], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v99, v66, s[12:15], 0 offen offset:4
	buffer_load_u16 v90, v66, s[12:15], 0 offen offset:16
	buffer_load_u16 v91, v66, s[12:15], 0 offen offset:20
	buffer_load_u16 v70, v66, s[12:15], 0 offen offset:24
	buffer_load_u16 v71, v66, s[12:15], 0 offen offset:28
	buffer_load_u16 v101, v66, s[12:15], 0 offen offset:8
	buffer_load_u16 v102, v66, s[12:15], 0 offen
	buffer_load_u16 v106, v66, s[12:15], 0 offen offset:12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v208
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v73, s20, v73
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v111, v242
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v178, v57
	v_cvt_f32_i32_e32 v115, v10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	scratch_store_b32 off, v9, off offset:88 ; 4-byte Folded Spill
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v116
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v108, 1, v73
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v149, v48
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_i32_e32 v228, v248
	v_cvt_f32_i32_e32 v229, v249
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	scratch_store_b32 off, v9, off offset:84 ; 4-byte Folded Spill
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v133
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v242, v108, s[12:15], 0 offen
	v_or_b32_e32 v73, 4, v108
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v174, v243
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v177, v56
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	scratch_store_b32 off, v9, off offset:68 ; 4-byte Folded Spill
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v134
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v243, v73, s[12:15], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	v_cvt_f32_i32_e32 v10, v58
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v9, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v122
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v58, v63
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v188, v244
	scratch_store_b32 off, v9, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v123
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v123, v13
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v189, v245
	scratch_store_b32 off, v9, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v124
	v_cvt_f32_i32_e32 v72, v196
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v196, v247
	scratch_store_b32 off, v9, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v125
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v247, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v6
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_i32_e32 v195, v246
	scratch_store_b32 off, v9, off offset:36 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v130
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v246, v14
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v7, 16, v108
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v9, off offset:12 ; 4-byte Folded Spill
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v131
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v8, 20, v108
	buffer_load_u16 v248, v7, s[12:15], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v9, off offset:20 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v254
	v_cvt_f32_i32_e32 v74, v197
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v249, v8, s[12:15], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v73, v117
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v117, v11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v68, v198
	v_cvt_f32_i32_e32 v181, v239
	v_cvt_f32_i32_e32 v166, v234
	v_cvt_f32_i32_e32 v119, v205
	v_cvt_f32_i32_e32 v84, v206
	v_cvt_f32_i32_e32 v81, v211
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:8
	scratch_store_b32 off, v0, off offset:24
	v_cvt_f32_i32_e32 v9, v255
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v239, v17
	v_cvt_f32_i32_e32 v13, v60
	v_cvt_f32_i32_e32 v172, v43
	v_cvt_f32_i32_e32 v163, v44
	v_cvt_f32_i32_e32 v143, v35
	v_cvt_f32_i32_e32 v116, v41
	v_cvt_f32_i32_e32 v105, v26
	v_cvt_f32_i32_e32 v44, v18
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v78, v214
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v97, v218
	v_cvt_f32_i32_e32 v96, v219
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v133, v36
	v_cvt_f32_i32_e32 v36, v20
	v_cvt_f32_i32_e32 v124, v38
	v_cvt_f32_i32_e32 v38, v21
	v_cvt_f32_i32_e32 v95, v29
	v_cvt_f32_i32_e32 v29, v22
	v_cvt_f32_i32_e32 v22, v24
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v85, v207
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v207, v64
	v_cvt_f32_i32_e32 v64, v31
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v23, v25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v76, v201
	v_cvt_f32_i32_e32 v201, v250
	v_cvt_f32_i32_e32 v203, v251
	v_cvt_f32_i32_e32 v83, v212
	v_cvt_f32_i32_e32 v82, v213
	v_cvt_f32_i32_e32 v212, v209
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v11, v61
	v_cvt_f32_i32_e32 v213, v62
	v_cvt_f32_i32_e32 v209, v65
	v_cvt_f32_i32_e32 v65, v52
	v_cvt_f32_i32_e32 v193, v53
	v_cvt_f32_i32_e32 v187, v55
	v_cvt_f32_i32_e32 v164, v45
	v_cvt_f32_i32_e32 v159, v47
	v_cvt_f32_i32_e32 v136, v37
	v_cvt_f32_i32_e32 v126, v39
	v_cvt_f32_i32_e32 v107, v27
	v_cvt_f32_i32_e32 v61, v30
	v_cvt_f32_i32_e32 v52, v32
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v75, v200
	v_cvt_f32_i32_e32 v69, v199
	v_cvt_f32_i32_e32 v77, v252
	v_cvt_f32_i32_e32 v67, v253
	v_cvt_f32_i32_e32 v79, v215
	v_cvt_f32_i32_e32 v100, v238
	v_cvt_f32_i32_e32 v120, v235
	v_cvt_f32_i32_e32 v129, v236
	v_cvt_f32_i32_e32 v132, v237
	v_cvt_f32_i32_e32 v152, v224
	v_cvt_f32_i32_e32 v153, v225
	v_cvt_f32_i32_e32 v145, v232
	v_cvt_f32_i32_e32 v146, v233
	v_cvt_f32_i32_e32 v137, v226
	v_cvt_f32_i32_e32 v138, v227
	v_cvt_f32_i32_e32 v127, v222
	v_cvt_f32_i32_e32 v128, v223
	v_cvt_f32_i32_e32 v118, v204
	v_cvt_f32_i32_e32 v110, v220
	v_cvt_f32_i32_e32 v109, v221
	v_cvt_f32_i32_e32 v89, v216
	v_cvt_f32_i32_e32 v88, v217
	v_cvt_f32_i32_e32 v87, v240
	v_cvt_f32_i32_e32 v86, v241
	v_cvt_f32_i32_e32 v80, v210
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v200, v51
	v_cvt_f32_i32_e32 v184, v54
	v_cvt_f32_i32_e32 v170, v42
	v_cvt_f32_i32_e32 v151, v49
	v_cvt_f32_i32_e32 v141, v34
	v_cvt_f32_i32_e32 v114, v40
	v_cvt_f32_i32_e32 v94, v28
	v_cvt_f32_i32_e32 v54, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v157, v46
	v_cvt_f32_i32_e32 v46, v19
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s21, s21, s11
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	v_mov_b16_e32 v19.h, v2.h
	s_mov_b32 s10, s14
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v3, 16, v98
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v57, 16, v102
	v_lshlrev_b32_e32 v48, 16, v99
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v57, v3, v57 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v57, v57, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v134, 0xbfb8aa3b, v57
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v8, v3, v48
	v_dual_mul_f32 v70, v3, v70 :: v_dual_and_b32 v103, 16, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v56, v8, v117
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v103
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v103, off offset:16
	scratch_store_b32 off, v9, off offset:4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v134, 0, 0x42800000, s0
	v_mul_f32_e32 v63, 0xbfb8aa3b, v56
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v92, 8, v108
	v_or_b32_e32 v93, 12, v108
	s_clause 0x1
	buffer_load_u16 v244, v92, s[12:15], 0 offen
	buffer_load_u16 v245, v93, s[12:15], 0 offen
	v_or_b32_e32 v15, 24, v108
	v_or_b32_e32 v16, 28, v108
	s_clause 0x1f
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v26, v66, s[12:15], 0 offen offset:32
	buffer_load_u16 v234, v66, s[12:15], 0 offen offset:36
	buffer_load_u16 v35, v66, s[12:15], 0 offen offset:40
	buffer_load_u16 v6, v66, s[12:15], 0 offen offset:44
	buffer_load_u16 v41, v66, s[12:15], 0 offen offset:48
	buffer_load_u16 v17, v66, s[12:15], 0 offen offset:52
	buffer_load_u16 v211, v66, s[12:15], 0 offen offset:56
	buffer_load_u16 v43, v66, s[12:15], 0 offen offset:60
	buffer_load_u16 v205, v66, s[12:15], 0 offen offset:64
	buffer_load_u16 v206, v66, s[12:15], 0 offen offset:68
	buffer_load_u16 v197, v66, s[12:15], 0 offen offset:72
	buffer_load_u16 v198, v66, s[12:15], 0 offen offset:76
	buffer_load_u16 v190, v66, s[12:15], 0 offen offset:80
	buffer_load_u16 v191, v66, s[12:15], 0 offen offset:84
	buffer_load_u16 v182, v66, s[12:15], 0 offen offset:88
	buffer_load_u16 v183, v66, s[12:15], 0 offen offset:92
	buffer_load_u16 v175, v66, s[12:15], 0 offen offset:96
	buffer_load_u16 v176, v66, s[12:15], 0 offen offset:100
	buffer_load_u16 v168, v66, s[12:15], 0 offen offset:104
	buffer_load_u16 v169, v66, s[12:15], 0 offen offset:108
	buffer_load_u16 v161, v66, s[12:15], 0 offen offset:112
	buffer_load_u16 v162, v66, s[12:15], 0 offen offset:116
	buffer_load_u16 v155, v66, s[12:15], 0 offen offset:120
	buffer_load_u16 v156, v66, s[12:15], 0 offen offset:124
	buffer_load_u16 v147, v66, s[12:15], 0 offen offset:128
	buffer_load_u16 v148, v66, s[12:15], 0 offen offset:132
	buffer_load_u16 v139, v66, s[12:15], 0 offen offset:136
	buffer_load_u16 v140, v66, s[12:15], 0 offen offset:140
	buffer_load_u16 v130, v66, s[12:15], 0 offen offset:144
	buffer_load_u16 v131, v66, s[12:15], 0 offen offset:148
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x9
	buffer_load_u16 v121, v66, s[12:15], 0 offen offset:152
	buffer_load_u16 v122, v66, s[12:15], 0 offen offset:156
	buffer_load_u16 v112, v66, s[12:15], 0 offen offset:160
	buffer_load_u16 v113, v66, s[12:15], 0 offen offset:164
	buffer_load_u16 v103, v66, s[12:15], 0 offen offset:168
	buffer_load_u16 v104, v66, s[12:15], 0 offen offset:172
	buffer_load_u16 v92, v66, s[12:15], 0 offen offset:176
	buffer_load_u16 v93, v66, s[12:15], 0 offen offset:180
	buffer_load_u16 v18, v66, s[12:15], 0 offen offset:184
	buffer_load_u16 v60, v66, s[12:15], 0 offen offset:188
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v57
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v1, v3, v106
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v20, 32, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v134, v134
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v254, v1, v123
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v21, 36, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v56
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v24, 40, v108
	v_or_b32_e32 v25, 44, v108
	v_or_b32_e32 v27, 48, v108
	v_or_b32_e32 v30, 56, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v63, v63
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v32, 60, v108
	v_or_b32_e32 v37, 0x48, v108
	v_or_b32_e32 v39, 0x4c, v108
	v_or_b32_e32 v45, 0x58, v108
	v_or_b32_e32 v47, 0x5c, v108
	v_or_b32_e32 v53, 0x74, v108
	v_or_b32_e32 v55, 0x7c, v108
	v_or_b32_e32 v62, 0x80, v108
	v_or_b32_e32 v98, 0x84, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v63, v63, v135
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v102, 0x8c, v108
	v_or_b32_e32 v117, 0x90, v108
	v_or_b32_e32 v115, 0x94, v108
	v_or_b32_e32 v125, 0x98, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v134, v134, v135
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v250, 0x9c, v108
	v_or_b32_e32 v251, 0xa0, v108
	v_or_b32_e32 v202, 0xa8, v108
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v214, 1.0, v134
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v142, null, v63, v63, v56
	v_div_scale_f32 v123, vcc_lo, v56, v63, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v106, null, v214, v214, v57
	v_rcp_f32_e32 v135, v142
	v_div_scale_f32 v158, s2, v57, v214, v57
	.loc	1 132 24 is_stmt 1              ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v9, v59
	v_cvt_f32_i32_e32 v59, v50
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v28, 52, v108
	v_or_b32_e32 v33, 64, v108
	v_or_b32_e32 v34, 0x44, v108
	v_or_b32_e32 v40, 0x50, v108
	v_or_b32_e32 v42, 0x54, v108
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v1, -v142, v135, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v7, 0x60, v108
	v_or_b32_e32 v49, 0x64, v108
	v_or_b32_e32 v48, 0x68, v108
	v_or_b32_e32 v50, 0x6c, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v135, v1, v135
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v51, 0x70, v108
	v_or_b32_e32 v8, 0x78, v108
	v_or_b32_e32 v99, 0x88, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v144, v123, v135
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v101, v3, v101
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v253, 0xa4, v108
	v_or_b32_e32 v222, 0xac, v108
	v_or_b32_e32 v225, 0xb0, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v154, -v142, v144, v123
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v101, v101, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v106
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v226, 0xb4, v108
	v_or_b32_e32 v232, 0xb8, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v144, v154, v135
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v134, 0xbfb8aa3b, v101
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v233, 0xbc, v108
	v_or_b32_e32 v235, 0xc0, v108
	v_or_b32_e32 v238, 0xc4, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v123, -v142, v144, v123
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v150, -v106, v12, 1.0
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v240, 0xc8, v108
	v_or_b32_e32 v241, 0xcc, v108
	v_or_b32_e32 v0, 0xd0, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v134, 0, 0x42800000, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v12, v150, v12 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v254
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v215, 0xd4, v108
	v_or_b32_e32 v252, 0xd8, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v101
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v218, v158, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v219, v123, v135, v144
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s1
	v_exp_f32_e32 v134, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v142, -v106, v218, v158
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v1, 0, 0x42800000, s0
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s0
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v216, 0xdc, v108
	v_or_b32_e32 v4, 0xe0, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v218, v142, v12 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v254
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v217, 0xe4, v108
	v_or_b32_e32 v220, 0xe8, v108
	v_or_b32_e32 v221, 0xec, v108
	v_or_b32_e32 v255, 0xf0, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v223, v134, v123
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v224, 0xf4, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v106, -v106, v218, v158
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v227, 0xf8, v108
	v_or_b32_e32 v230, 0xfc, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v12, v106, v12, v218
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v1, v1, v150
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_clause 0x1f
	buffer_load_u16 v236, v20, s[12:15], 0 offen
	buffer_load_u16 v237, v21, s[12:15], 0 offen
	buffer_load_u16 v108, v24, s[12:15], 0 offen
	buffer_load_u16 v5, v25, s[12:15], 0 offen
	buffer_load_u16 v21, v27, s[12:15], 0 offen
	buffer_load_u16 v24, v28, s[12:15], 0 offen
	buffer_load_u16 v25, v30, s[12:15], 0 offen
	buffer_load_u16 v20, v32, s[12:15], 0 offen
	buffer_load_u16 v208, v33, s[12:15], 0 offen
	buffer_load_u16 v210, v34, s[12:15], 0 offen
	buffer_load_u16 v199, v37, s[12:15], 0 offen
	buffer_load_u16 v204, v39, s[12:15], 0 offen
	buffer_load_u16 v192, v40, s[12:15], 0 offen
	buffer_load_u16 v194, v42, s[12:15], 0 offen
	buffer_load_u16 v185, v45, s[12:15], 0 offen
	buffer_load_u16 v186, v47, s[12:15], 0 offen
	buffer_load_u16 v179, v7, s[12:15], 0 offen
	buffer_load_u16 v180, v49, s[12:15], 0 offen
	buffer_load_u16 v171, v48, s[12:15], 0 offen
	buffer_load_u16 v173, v50, s[12:15], 0 offen
	buffer_load_u16 v165, v51, s[12:15], 0 offen
	buffer_load_u16 v167, v53, s[12:15], 0 offen
	buffer_load_u16 v158, v8, s[12:15], 0 offen
	buffer_load_u16 v160, v55, s[12:15], 0 offen
	buffer_load_u16 v150, v62, s[12:15], 0 offen
	buffer_load_u16 v154, v98, s[12:15], 0 offen
	buffer_load_u16 v142, v99, s[12:15], 0 offen
	buffer_load_u16 v144, v102, s[12:15], 0 offen
	buffer_load_u16 v134, v117, s[12:15], 0 offen
	buffer_load_u16 v135, v115, s[12:15], 0 offen
	buffer_load_u16 v123, v125, s[12:15], 0 offen
	buffer_load_u16 v125, v250, s[12:15], 0 offen
	s_clause 0xf
	buffer_load_u16 v115, v251, s[12:15], 0 offen
	buffer_load_u16 v117, v253, s[12:15], 0 offen
	buffer_load_u16 v250, v202, s[12:15], 0 offen
	buffer_load_u16 v251, v222, s[12:15], 0 offen
	buffer_load_u16 v102, v225, s[12:15], 0 offen
	buffer_load_u16 v98, v226, s[12:15], 0 offen
	buffer_load_u16 v62, v232, s[12:15], 0 offen
	buffer_load_u16 v202, v233, s[12:15], 0 offen
	buffer_load_u16 v53, v235, s[12:15], 0 offen
	buffer_load_u16 v55, v238, s[12:15], 0 offen
	buffer_load_u16 v45, v240, s[12:15], 0 offen
	buffer_load_u16 v47, v241, s[12:15], 0 offen
	buffer_load_u16 v37, v0, s[12:15], 0 offen
	buffer_load_u16 v39, v215, s[12:15], 0 offen
	buffer_load_u16 v30, v252, s[12:15], 0 offen
	buffer_load_u16 v32, v216, s[12:15], 0 offen
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v40, 16, v242
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v51, v219, v63, v56
	v_div_fixup_f32 v12, v12, v214, v57
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v40, v3, v40 :: v_dual_lshlrev_b32 v33, 16, v90
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v34, 16, v91
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x7
	buffer_load_u16 v27, v4, s[12:15], 0 offen
	buffer_load_u16 v28, v217, s[12:15], 0 offen
	buffer_load_u16 v4, v220, s[12:15], 0 offen
	buffer_load_u16 v0, v221, s[12:15], 0 offen
	buffer_load_u16 v222, v255, s[12:15], 0 offen
	buffer_load_u16 v225, v224, s[12:15], 0 offen
	buffer_load_u16 v8, v227, s[12:15], 0 offen
	buffer_load_u16 v7, v230, s[12:15], 0 offen
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v42, null, v1, v1, v254
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v33, v3, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v49, v42
	v_fma_f32 v56, -v42, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v56, v49 :: v_dual_lshlrev_b32 v48, 16, v243
	v_div_scale_f32 v56, s0, v254, v1, v254
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v216, v33, v246
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v50, 1.0, v223 :: v_dual_mul_f32 v33, v3, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v57, v56, v49 :: v_dual_mul_f32 v34, v3, v34
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v214, s2, v101, v50, v101
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v33, v33, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v215, v34, v247
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, null, v50, v50, v101
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v63
	v_mul_f32_e32 v48, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v217, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v40, v40, v75
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v216
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v75, -v34, v217, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v218, v63
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v215 :: v_dual_fmac_f32 v217, v75, v217
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v75, -v42, v57, v56
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v33, v33, v51 :: v_dual_mul_f32 v12, v40, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v33.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v57, v75, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v12.h
	v_cmp_o_f32_e64 s0, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v42, -v42, v57, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v2
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v48, v48, v76
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v75, v214, v217
	v_div_fmas_f32 v42, v42, v49, v57
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v56, 0x7fff
	v_add3_u32 v19, v12, v19, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v76, 1.0, v48
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v51, -v34, v75, v214
	v_div_fixup_f32 v1, v42, v1, v254
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v19.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v33, v218, v40
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v75, v51, v217
	v_div_scale_f32 v40, null, v76, v76, v215
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v99, v66, s[12:15], 0 offen offset:192
	buffer_load_u16 v63, v66, s[12:15], 0 offen offset:196
	buffer_load_u16 v90, v66, s[12:15], 0 offen offset:200
	buffer_load_u16 v91, v66, s[12:15], 0 offen offset:204
	buffer_load_u16 v56, v66, s[12:15], 0 offen offset:208
	buffer_load_u16 v57, v66, s[12:15], 0 offen offset:212
	buffer_load_u16 v49, v66, s[12:15], 0 offen offset:216
	buffer_load_u16 v51, v66, s[12:15], 0 offen offset:220
	v_lshlrev_b32_e32 v26, 16, v26
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v26, v3, v26 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v6, v3, v6 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v41, v3, v41 :: v_dual_mul_f32 v10, v26, v10
	v_dual_mul_f32 v17, v3, v17 :: v_dual_mul_f32 v6, v6, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v11, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v11, v3, v11
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v11, v11, v13 :: v_dual_lshlrev_b32 v42, 16, v244
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v106, 16, v245
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v34, v75, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v42, v3, v42
	v_mul_f32_e32 v19, v3, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v34, v34, v217, v75
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v106, s11, v231
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v42, v42, v72 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v19, v19, v74 :: v_dual_add_f32 v74, 1.0, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v33, v40
	v_div_fixup_f32 v34, v34, v50, v101
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v1, v19, v1 :: v_dual_lshlrev_b32 v50, 16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v48, null, v74, v74, v216
	v_div_scale_f32 v71, vcc_lo, v215, v76, v215
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v19, v48
	v_fma_f32 v75, -v40, v33, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v217.h, v2.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v3, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s11, s15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(62)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v15, v15, v77 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v48, v19, 1.0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v50, v3, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, v3, v18
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v16, v3, v16 :: v_dual_fmac_f32 v19, v72, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v101, v50, v239
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v50, s0, v216, v74, v216
	v_dual_fmac_f32 v33, v75, v33 :: v_dual_mul_f32 v18, v18, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v214, v50, v19
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v75, v42, v34 :: v_dual_mul_f32 v42, v71, v33
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v2
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v217.l, v75.h
	v_add3_u32 v72, v1, v34, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v1, -v40, v42, v71
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v42, v1, v33
	v_fma_f32 v1, -v48, v214, v50
	v_fma_f32 v40, -v40, v42, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v214, v1, v19 :: v_dual_mul_f32 v71, v70, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v218, v40, v33, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v14, -v48, v214, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, s2
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v76, v218, v76, v215
	v_div_fmas_f32 v19, v14, v19, v214
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v14, s21, s20, v106
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v106, 16, v249
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v215, 16, v234
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v19, v19, v74, v216
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v106, v3, v106 :: v_dual_lshlrev_b32 v13, 16, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v215, v3, v215
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(60)
	v_dual_mul_f32 v16, v16, v67 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v13, v3, v13
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v69, v106, v69
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v101
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v9, v215, v9
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v5, v3, v5
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v13, v13, v78
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v69, v69, v76
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v1, v34
	v_mul_f32_e32 v34, 0xbfb8aa3b, v71
	v_mul_f32_e32 v220, 0xbfb8aa3b, v9
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v5, v229
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v69.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v78, v41, v213
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v214, v1, v33
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v48, v66, s[12:15], 0 offen offset:224
	buffer_load_u16 v50, v66, s[12:15], 0 offen offset:228
	buffer_load_u16 v40, v66, s[12:15], 0 offen offset:232
	buffer_load_u16 v42, v66, s[12:15], 0 offen offset:236
	buffer_load_u16 v33, v66, s[12:15], 0 offen offset:240
	buffer_load_u16 v34, v66, s[12:15], 0 offen offset:244
	buffer_load_u16 v70, v66, s[12:15], 0 offen offset:248
	buffer_load_u16 v1, v66, s[12:15], 0 offen offset:252
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v66, 1, v217
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v219, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v214, 1.0, v214 :: v_dual_lshlrev_b32 v217, 16, v248
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v75, v66, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v219, 0xbfb8aa3b, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v216, null, v214, v214, v101
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v217, v3, v217
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v219, v219
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v24, v3, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v106, v216
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v20, v3, v20
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v68, v217, v68 :: v_dual_mul_f32 v25, v3, v25
	v_mul_f32_e32 v24, v24, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v20, v20, v196
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v74, v219, v74
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v76, -v216, v106, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v106, v76, v106
	v_div_scale_f32 v76, s0, v101, v214, v101
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v3, v28
	v_mul_f32_e32 v4, v3, v4
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v218, v76, v106
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v219, -v216, v218, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v8, v3, v8 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v218, v219, v106
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v219, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v76, -v216, v218, v76
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v219
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v219, 0, 0x42800000, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v68, v68, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v72.h, s1
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v72, 1.0, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v74.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v219, 0xbfb8aa3b, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v74.l, v68.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v75, null, v72, v72, v71
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v74, 1, v74
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v220
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v217, v75
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v66, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v68, v74, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v220, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v69, v66, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v215, -v75, v217, 1.0
	v_fmac_f32_e32 v217, v215, v217
	v_div_scale_f32 v215, s1, v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v215, v217
	v_fma_f32 v216, -v75, v26, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v216, v217
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v216, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v75, v26, v215
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v215, v219
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v67, v215, v67
	v_mul_f32_e32 v215, 0xbfb8aa3b, v11
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v76, v76, v106, v218
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v215
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v26, v75, v217, v26
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v35, s1, v10, v67, v10
	v_div_fixup_f32 v26, v26, v72, v71
	v_div_fixup_f32 v71, v76, v214, v101
	v_div_scale_f32 v76, null, v67, v67, v10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v101, 16, v237
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v15, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v66.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v68, v76
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v16, v71
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v71.l, v15.h
	v_mov_b16_e32 v71.h, v2.h
	v_cndmask_b16 v26.l, 0x7fff, v74.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v2.l, v16.h
	v_cmp_o_f32_e64 s0, v16, v16
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v77, -v76, v68, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v74, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v15, v66, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v68, v77, v68 :: v_dual_mul_f32 v77, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v74, v16, v74, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v214, v35, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v220, 0xbfb8aa3b, v9 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v6
	v_exp_f32_e32 v220, v220
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v106, v220, v216
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v75, 1.0, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v72, null, v75, v75, v9
	v_rcp_f32_e32 v69, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v72, v69, 1.0
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v9, v75, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v71, v69
	v_fma_f32 v106, -v72, v16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v16, v106, v69
	v_fma_f32 v106, -v76, v214, v35
	v_fma_f32 v71, -v72, v16, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v214, v106, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v72, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v16, v71, v69, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v76, v214, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v71, v3, v101
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v35, v35, v68, v214
	v_div_fixup_f32 v9, v16, v75, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v68, v77
	v_ldexp_f32 v69, v72, v69
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v35, v67, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v71, v79
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.h, v2.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v13, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v68, v35
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v67, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v69, v69, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v66.h, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v9.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v67, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.h, 0x7fff, v74.h, s0
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v68, null, v13, v13, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v2
	v_mov_b16_e32 v15.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v66, v68
	v_fma_f32 v72, -v16, v67, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v71, v9, v71, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, vcc_lo, v6, v69, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v67, v72, v67 :: v_dual_lshlrev_b32 v74, 16, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v68, v66, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v10, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v75, v9, v67 :: v_dual_mul_f32 v74, v3, v74
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v58, s1, v11, v13, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v16, v75, v9
	v_mul_f32_e32 v77, v58, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v75, v76, v67 :: v_dual_mul_f32 v76, 0xbfb8aa3b, v78
	v_fma_f32 v41, -v68, v77, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v16, v75, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v77, v41, v66
	v_div_fmas_f32 v9, v9, v67, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v58, -v68, v77, v58
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v68, v74, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v78
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v9, v69, v6
	v_div_fmas_f32 v58, v58, v66, v77
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v72
	v_exp_f32_e32 v66, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v71.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v58, v13, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v15.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v1, v3, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v67
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v5, v5, v6 :: v_dual_mul_f32 v6, v68, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v66, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v13, v13, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v58, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v2.l, v5.h
	v_cmp_o_f32_e64 s0, v5, v5
	v_add3_u32 v15, v6, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v66, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v11, v58, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v5, v66, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v58, v68, v58
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v68, 16, v211
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v9, v9, v78
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v5, 16, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v66.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, vcc_lo, v17, v13, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v67, v10
	v_mul_f32_e32 v69, v16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v11, v69, v16
	v_fma_f32 v66, -v10, v67, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v72, v58
	v_dual_fmac_f32 v67, v66, v67 :: v_dual_mul_f32 v66, v3, v68
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v68, s0, v78, v9, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v11, -v11, v69, v16
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v66, v66, v207 :: v_dual_mul_f32 v5, v5, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v74, v68, v67
	v_div_fmas_f32 v11, v11, v58, v69
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v10, v74, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v66
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v69, 16, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v71, 0, 0x42800000, s1
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v75, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v5
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v71, v16
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v74, v72, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v74, v68
	v_div_fmas_f32 v10, v10, v67, v74
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v10, v9, v78
	v_div_fixup_f32 v10, v11, v13, v17
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v3, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	v_cndmask_b16 v43.l, 0x7fff, v15.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v16, v16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v24, v10 :: v_dual_mul_f32 v21, v21, v201
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v21, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v9.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v206
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v200
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v58, v75
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v72, 0, 0x42800000, s1
	v_ldexp_f32 v11, v58, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v13
	v_div_scale_f32 v21, null, v10, v10, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v58, -v13, v11, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v21, v24, 1.0
	v_fmac_f32_e32 v24, v68, v24
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v68, v3, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v69, s0, v66, v10, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v59, v68, v59 :: v_dual_mul_f32 v74, v69, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v58, v11
	v_div_scale_f32 v58, vcc_lo, v5, v16, v5
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v9, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v71, v58, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v13, v71, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v75, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v71, v68, v11
	v_fma_f32 v68, -v21, v74, v69
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v13, -v13, v71, v58
	v_fmac_f32_e32 v74, v68, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v13, v11, v71
	v_fma_f32 v13, -v21, v74, v69
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v11, v16, v5
	v_div_fmas_f32 v13, v13, v24, v74
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v25, v195
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v24.h, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v13, v10, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v16, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v17 :: v_dual_and_b32 v67, 1, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v6, v67, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v72, v58
	v_exp_f32_e32 v58, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v21, v21, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v58, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v58.h, 0x7fff, v16.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v58.l, 0x7fff, v15.h, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v3, v27
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v16, v3, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v11, v11, v59
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v193
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v20, v5
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v20, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v25
	v_div_scale_f32 v68, s1, v59, v11, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v13, v20, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v20, v66, v20
	v_fma_f32 v66, -v25, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v5, v6, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v24, v66, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v72, v68, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, vcc_lo, v17, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v66, v66, v65 :: v_dual_mul_f32 v67, v15, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v65, -v25, v72, v68
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v10, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v66
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v13, v67, v15
	v_dual_fmac_f32 v72, v65, v24 :: v_dual_mul_f32 v5, v3, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v74
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v67, v71, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v25, -v25, v72, v68
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v199
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v5, v189
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v13, -v13, v67, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, s3
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v13, v20, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v24, v25, v24, v72
	v_div_fixup_f32 v13, v13, v21, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v24, v11, v59
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v5, v13
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v190
	v_lshlrev_b32_e32 v21, 16, v191
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v65.l, 0x7fff, v9.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v15, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v208
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v13
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v3, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v6, v6, v16
	v_div_scale_f32 v20, null, v10, v10, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v13, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v25, v69, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v24, v20
	v_fma_f32 v59, -v20, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v24, v59, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s1, v66, v10, v66
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v25, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v25, -v15, v13, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v74, v67, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v13, v25, v13
	v_div_scale_f32 v25, vcc_lo, v16, v6, v16
	v_mul_f32_e32 v69, v25, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v15, v69, v25
	v_fmac_f32_e32 v69, v72, v13
	v_fma_f32 v72, -v20, v74, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v15, v69, v25
	v_fmac_f32_e32 v74, v72, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 16, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v15, v13, v69
	v_fma_f32 v15, -v20, v74, v67
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v72, v3, v72 :: v_dual_lshlrev_b32 v67, 16, v182
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v13, v6, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v24, v74
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v68, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v194
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v15, v10, v66
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v59, v184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v2
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v16, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	v_add3_u32 v9, v5, v9, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v59
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v183
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v10.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v21, 16, v204
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v100.h, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v5, v5, v187 :: v_dual_and_b32 v16, 1, v16
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v3, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v75, 0, 0x42800000, s3
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v10, v16, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v21, v21, v181
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v21, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v5
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v71, v25
	v_exp_f32_e32 v25, v75
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_and_b32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v11, v17, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v20, v20, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v25, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v100.l, 0x7fff, v17.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, vcc_lo, v5, v20, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v13, v15
	v_div_scale_f32 v21, null, v9, v9, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v66, -v15, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, v66, v13
	v_fma_f32 v66, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v24, v13
	v_dual_fmac_f32 v25, v66, v25 :: v_dual_mul_f32 v66, v3, v67
	v_div_scale_f32 v67, s0, v59, v9, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v15, v69, v24
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v66, v66, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v75, v67, v25
	v_dual_fmac_f32 v69, v74, v13 :: v_dual_mul_f32 v76, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v21, v75, v67
	v_fma_f32 v15, -v15, v69, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v76
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v75, v74, v25
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v74, 16, v185
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v15, v13, v69
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v186
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v178
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v21, v75, v67
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v5, v13, v20, v5
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v76, 0, 0x42800000, s2
	v_mul_f32_e32 v71, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v25, v75
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v25, v68, v174
	v_mul_f32_e32 v68, v72, v111
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v15, v9, v59
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v25, v5
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v25, 16, v176
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v71, 0, 0x42800000, s1
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v68, v9
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v3, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.h, v2.h
	v_mov_b16_e32 v20.l, v9.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v71, v71
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v74, v3, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v21, v71, v24
	v_exp_f32_e32 v24, v76
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v6, v11, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v21, v21, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v24, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v111.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v13
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v13, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v111.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v16, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, null, v6, v6, v66
	v_div_scale_f32 v67, s1, v66, v6, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v5, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v15, v13, 1.0
	v_fmac_f32_e32 v13, v20, v13
	v_div_scale_f32 v20, vcc_lo, v17, v21, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v24, v11, 1.0
	v_mul_f32_e32 v5, v20, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, v59, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v59, 16, v175
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v15, v5, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v67, v11
	v_fmac_f32_e32 v5, v71, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v24, v72, v67
	v_fma_f32 v15, -v15, v5, v20
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v72, v71, v11
	v_div_fmas_f32 v5, v15, v13, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v13, -v24, v72, v67
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v24, v3, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v21, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 16, v179
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v20, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v13, v11, v72
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v24, v24, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v120.h, 0x7fff, v16.h, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v67, v3, v67
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v11, v6, v66
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v5, v24, v5 :: v_dual_lshlrev_b32 v66, 16, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v67, v67, v129 :: v_dual_mul_f32 v20, v74, v166
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v169
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v3, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v16, 1, v2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v20, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v66, v66, v132
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v2.h
	v_cndmask_b16 v120.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v16, v5, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v5, vcc_lo, v25, v15, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v129.h, 0x7fff, v16.h, s0
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v3, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v59, v170
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v6, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v68
	v_ldexp_f32 v11, v13, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v15, v15, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v13, v17, 1.0
	v_fmac_f32_e32 v17, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v21, v3, v24 :: v_dual_mul_f32 v68, v5, v17
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v21, v21, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v13, v68, v5
	v_fmac_f32_e32 v68, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v13, v68, v5
	v_div_fmas_f32 v5, v5, v17, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v5, v5, v15, v25
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v66, v5
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v173
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v11, v11, v59
	v_div_scale_f32 v69, s1, v59, v11, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v3, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v24, -v20, v10, 1.0
	v_fmac_f32_e32 v10, v24, v10
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v74, v69, v10
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v3, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v20, v74, v69
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v24, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v74, v72, v10 :: v_dual_mul_f32 v75, 0xbfb8aa3b, v24
	v_fma_f32 v17, -v20, v74, v69
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v17, v10, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v3, v69
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v129.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v13, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v13, v13, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v5, v20, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v5, 16, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v13, v13, v21
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v132.h, 0x7fff, v20.h, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v5, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v68, 0, 0x42800000, s1
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v5
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v11, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v68, v68
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v67, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v17, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v10.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_and_b32 v16, 1, v16
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v6, null, v11, v11, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v15, v17, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v10, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v25, v6
	v_div_scale_f32 v16, vcc_lo, v21, v13, v21
	v_fmac_f32_e32 v17, v59, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v59, 16, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v16, v17
	v_fma_f32 v20, -v6, v25, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v15, v67, v16
	v_dual_fmac_f32 v25, v20, v25 :: v_dual_mul_f32 v20, v3, v59
	v_div_scale_f32 v59, s0, v24, v11, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v71, v17
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v20, v20, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v72, v59, v25
	v_fma_f32 v15, -v15, v67, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, 0xbfb8aa3b, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v6, v72, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v17, v67
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v72, v71, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v16, v68, v16
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v68, 16, v155
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v6, -v6, v72, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v6, v6, v25, v72
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v25, v66, v153 :: v_dual_mul_f32 v66, v69, v152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v6, v11, v24
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v165
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v132.l, 0x7fff, v9.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v66, v6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v167
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v15, v13, v21
	v_div_scale_f32 v15, null, v16, v16, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v17, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v6.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v25, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v3, v69
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v13
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v13, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v10.h
	v_and_b32_e32 v9, 1, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v156
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v21, null, v11, v11, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v59, 1, v2
	v_add3_u32 v9, v6, v9, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v3, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v25, -v15, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v66, v66, v146 :: v_dual_fmac_f32 v13, v25, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, vcc_lo, v5, v16, v5
	v_fma_f32 v67, -v21, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v71, v25, v13 :: v_dual_fmac_f32 v24, v67, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v67, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v74, -v15, v71, v25
	v_div_scale_f32 v68, s0, v20, v11, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v67, v67, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v71, v74, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v75, v68, v24 :: v_dual_mul_f32 v76, 0xbfb8aa3b, v67
	v_fma_f32 v15, -v15, v71, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v21, v75, v68
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v15, v13, v71
	v_fmac_f32_e32 v75, v74, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v76, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v13, v16, v5
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v69, v145
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v21, v75, v68
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v145.l, 0x7fff, v9.h, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v151
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v24, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.h, v2.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v66, v5
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v15, v11, v20
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v16, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v10, v59, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	v_and_b32_e32 v6, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s1
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v11.h
	v_cndmask_b16 v145.h, 0x7fff, v16.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v5, v6, 0x7fff
	v_and_b32_e32 v10, 1, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v160
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v72, v72
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v3, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v11, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v5, v3, v5 :: v_dual_mul_f32 v16, v16, v143
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v5, v5, v138 :: v_dual_mul_f32 v74, 0xbfb8aa3b, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v72, v25
	v_exp_f32_e32 v25, v76
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v21, v21, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v25, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, vcc_lo, v17, v21, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v16 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v13, v13, v67
	v_div_scale_f32 v68, s1, v67, v13, v67
	v_fma_f32 v59, -v15, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v24, v25
	v_fmac_f32_e32 v20, v59, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v66, v10, v20
	v_fma_f32 v59, -v25, v24, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v15, v66, v10
	v_dual_fmac_f32 v24, v59, v24 :: v_dual_lshlrev_b32 v59, 16, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v71, v20
	v_dual_mul_f32 v72, v68, v24 :: v_dual_mul_f32 v59, v3, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v15, v66, v10
	v_fma_f32 v71, -v25, v72, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v59, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v20, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v72, v71, v24 :: v_dual_mul_f32 v75, 0xbfb8aa3b, v59
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v74
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v25, v72, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v21, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v21, 16, v140
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v24, v25, v24, v72
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, s3
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v5, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v66
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v25, v69, v137
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v137.h, 0x7fff, v6.h, s0
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v24, v13, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v137.l, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e64 s0, v5, v5
	v_and_b32_e32 v9, 1, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v139
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v13, v25, v13 :: v_dual_mul_f32 v68, v3, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v5, v9, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v15, v17
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v6, v6, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v21, 16, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v13.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v5, v136
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v3, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v10, v10, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v21, v21, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v24, v20
	v_fma_f32 v25, -v15, v11, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v25, v11
	v_div_scale_f32 v25, vcc_lo, v16, v6, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v20, v24, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v13, v17, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v69, v25, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v24, v66, v24
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s1, v59, v10, v59
	v_fma_f32 v72, -v15, v69, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v71, v71
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v66, v66, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v74, v67, v24 :: v_dual_fmac_f32 v69, v72, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v20, v74, v67
	v_fma_f32 v15, -v15, v69, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v74, v72, v24
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 16, v142
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v15, v11, v69
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v75, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v20, v74, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v71, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v11, v6, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v24, v74
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v68, v127
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v127.h, 0x7fff, v9.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v25, v75
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v15, v10, v59
	v_div_scale_f32 v15, null, v20, v20, v5
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v21, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v131
	v_lshlrev_b32_e32 v67, 16, v130
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v144
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v25, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v127.l, 0x7fff, v17.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, vcc_lo, v5, v20, v5
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v126
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v72, v3, v72 :: v_dual_and_b32 v13, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v21, null, v9, v9, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v6, v13, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v59, -v15, v11, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v16, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v59, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v10.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v69, v24, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v17 :: v_dual_and_b32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v25, v59, v25
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s0, v66, v9, v66
	v_fma_f32 v74, -v15, v69, v24
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v71, v71
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v59, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v75, v67, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v10, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v69, v74, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v76, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v74, -v21, v75, v67
	v_fma_f32 v15, -v15, v69, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v76
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v75, v74, v25 :: v_dual_lshlrev_b32 v74, 16, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v15, v11, v69
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v76, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v21, v75, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v71, v24
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v11, v20, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v25, v75
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v25, v68, v119
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v24, v76
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v68, v72, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v15, v9, v66
	v_div_scale_f32 v15, null, v21, v21, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v118.h, 0x7fff, v13.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v25, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v9, v68, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v25, 16, v122
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v24, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v20.l, v9.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v3, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v20
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v118.l, 0x7fff, v16.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, null, v6, v6, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v13, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v15, v11, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v5, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s1, v59, v6, v59
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v20, v11
	v_div_scale_f32 v20, vcc_lo, v17, v21, v17
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v24, v13, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v5, v20, v11 :: v_dual_mul_f32 v74, v3, v74
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v9, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v13, v66, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v15, v5, v20
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v72, v67, v13
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v5, v71, v11
	v_fma_f32 v71, -v24, v72, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v66, v66, v114
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v15, v5, v20
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v72, v71, v13 :: v_dual_mul_f32 v75, 0xbfb8aa3b, v66
	v_div_fmas_f32 v5, v15, v11, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v11, -v24, v72, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v24, v3, v69
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v20, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v21, v17
	v_div_fmas_f32 v11, v11, v13, v72
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v24, v24, v109 :: v_dual_add_f32 v15, 1.0, v15
	v_mul_f32_e32 v20, v74, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v11, v6, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v24, v5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v20, v6
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v13, v68
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v109.h, 0x7fff, v16.h, s0
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v109.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_mov_b16_e32 v9.l, v6.h
	v_and_b32_e32 v16, 1, v2
	v_mov_b16_e32 v9.h, v2.h
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v13, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v15, v15, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v5, v16, 0x7fff
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v13
	v_div_scale_f32 v5, s0, v25, v15, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v110.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v11, v11, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v6, v9, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 16, v125
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v13, v17, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v71, 16, v123
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v110.l, 0x7fff, v9.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v17, v21, v17 :: v_dual_lshlrev_b32 v74, 16, v115
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v21, v3, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v71, v3, v71
	v_mul_f32_e32 v74, v3, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v24, -v20, v10, 1.0
	v_mul_f32_e32 v6, v5, v17
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v21, v107 :: v_dual_lshlrev_b32 v21, 16, v112
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v10, v24, v10
	v_div_scale_f32 v24, s2, v66, v11, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v21, v3, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v13, v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, v24, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v21, v21, v105
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v6, v68, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v20, v69, v24
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v72, 0xbfb8aa3b, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v5, -v13, v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v69, v68, v10 :: v_dual_lshlrev_b32 v68, 16, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v5, v5, v17, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v6, -v20, v69, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	v_exp_f32_e32 v13, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v5, v5, v15, v25
	v_div_fmas_f32 v6, v6, v10, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v10, v3, v67 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v21
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v6, v11, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v13, v17
	v_exp_f32_e32 v20, v59
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v71, v97 :: v_dual_mul_f32 v10, v10, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v13
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s4
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v17, v6 :: v_dual_mul_f32 v5, v10, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v11, v11, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v20, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, vcc_lo, v16, v11, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v17, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v9, 1.0, v10 :: v_dual_lshlrev_b32 v10, 16, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v9, v9, v21
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v10, v3, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v25, -v15, v17, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v59, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v5, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v10, v10, v95 :: v_dual_fmac_f32 v17, v25, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v25, 16, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v6, v13, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v71, v66, v17
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v3, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v20, v59, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v75, -v15, v71, v66
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v59, v69, v59
	v_div_scale_f32 v69, s1, v21, v9, v21
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s0
	v_mul_f32_e32 v72, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v71, v75, v17 :: v_dual_mul_f32 v76, v69, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v15, v71, v66
	v_fma_f32 v75, -v20, v76, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v67, v67
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v17, v71
	v_fmac_f32_e32 v76, v75, v59
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v15, v11, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v17, -v20, v76, v69
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s2
	v_ldexp_f32 v66, v67, v77
	v_exp_f32_e32 v67, v72
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v72, 16, v92
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v17, v17, v59, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v72, v3, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v17, v9, v21
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v68, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v59, null, v66, v66, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v67, v20
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v74, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v17, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v21, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v9, v67, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v20, v20, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v9.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v59, v21, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.l, 0x7fff, v13.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v67, v3, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v21, v17, v21 :: v_dual_and_b32 v6, 1, v11
	v_div_scale_f32 v11, s0, v10, v66, v10
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v64, v67, v64
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v24, v11, v21 :: v_dual_lshlrev_b32 v67, 16, v250
	v_fma_f32 v13, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v64
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v251
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v67, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v59, v24, v11
	v_fmac_f32_e32 v16, v13, v16
	v_div_scale_f32 v13, s1, v25, v20, v25
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v24, v69, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v71, v13, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v9, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v11, -v59, v24, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v72, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v15, v71, v13
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v11, v21, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v71, v69, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v64
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v3, v68
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v24, v67, v87
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v11, v66, v10
	v_fma_f32 v13, -v15, v71, v13
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v5, v17, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v13, v16, v71
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_exp_f32_e32 v16, v61
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v13, v20, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v20, v21, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v24, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v59
	v_ldexp_f32 v11, v16, v61
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v20, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v15
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v13.h
	v_mov_b16_e32 v11.h, v2.h
	v_cndmask_b16 v61.l, 0x7fff, v6.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v10, v10, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v20
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v3, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v13, v11, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_and_b32 v16, 1, v2
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v24, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.h, 0x7fff, v17.h, s0
	v_add3_u32 v16, v5, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v9, v9, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v20, v15, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v25, v11
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v98
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v15, v21, v15
	v_div_scale_f32 v21, vcc_lo, v64, v10, v64
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v5, v3, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v60, v21, v15 :: v_dual_lshlrev_b32 v17, 16, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v11, v25, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v5, v85
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v20, v60, v21
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v17, v3, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v25, v54, v25
	v_div_scale_f32 v54, s1, v59, v9, v59
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v60, v66, v15 :: v_dual_mul_f32 v17, v17, v84
	v_mul_f32_e32 v67, v54, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v20, -v20, v60, v21
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v11, v67, v54
	v_div_fmas_f32 v15, v20, v15, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v67, v66, v25
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v52, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v15, v10, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.h, 0x7fff, v16.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v11, -v11, v67, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_lshlrev_b32 v60, 16, v202
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v5, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v11, v25, v67
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v21, v21, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v11, v9, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v20, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v25, 16, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.l, 0x7fff, v6.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v9, v17, v9 :: v_dual_add_f32 v10, 1.0, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v2
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v9.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v10, v10, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v5, v17, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v5, s0, v24, v21, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v6, v13
	v_fma_f32 v20, -v15, v11, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.h, 0x7fff, v17.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v11, v20, v11 :: v_dual_and_b32 v16, 1, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v20, v3, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v9, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v25, -v13, v6, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v17, v5, v11 :: v_dual_mul_f32 v20, v20, v46
	v_div_scale_f32 v46, s1, v18, v10, v18
	v_dual_fmac_f32 v6, v25, v6 :: v_dual_lshlrev_b32 v25, 16, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v15, v17, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v64, v46, v6 :: v_dual_mul_f32 v25, v3, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v17, v63, v11
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v44, 16, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v62, -v13, v64, v46
	v_fma_f32 v5, -v15, v17, v5
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v25
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v20
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v44, v3, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v64, v62, v6
	v_div_fmas_f32 v5, v5, v11, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v63
	v_exp_f32_e32 v15, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v11, -v13, v64, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v17, v3, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v21, v24
	v_div_fmas_f32 v6, v11, v6, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v25
	v_ldexp_f32 v13, v15, v13
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v44, v83
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v6, v10, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	v_exp_f32_e32 v11, v59
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v17, v82
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v15, v6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v18, 16, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.l, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v5, v17, v5 :: v_dual_lshlrev_b32 v44, 16, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v3, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v11, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v13, v13, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v38
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v11
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v38, 16, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v2
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v10, v10, v25
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v5, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v5, vcc_lo, v20, v13, v20
	v_rcp_f32_e32 v21, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v11, v15, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v2.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v44, v3, v44 :: v_dual_fmac_f32 v15, v24, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v24, -v17, v21, 1.0
	v_dual_mul_f32 v46, v5, v15 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v6, v9, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v21, v24, v21 :: v_dual_mul_f32 v24, v3, v38
	v_div_scale_f32 v38, s1, v25, v10, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v55, v55
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v24, v36
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v36, 16, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v53, -v11, v46, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, v38, v21 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v24
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v36, v3, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v46, v53, v15
	v_fma_f32 v53, -v17, v59, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v36, v36, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v5, -v11, v46, v5
	v_fmac_f32_e32 v59, v53, v21
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v5, v5, v15, v46
	v_fma_f32 v15, -v17, v59, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v24
	v_ldexp_f32 v11, v55, v11
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v21, v59
	v_div_fixup_f32 v5, v5, v13, v20
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v60
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v21, v44, v81
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v15, v10, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v44, 16, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v11, v11, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v36, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v16.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v17, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	v_mov_b16_e32 v17.l, v10.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v21, v5
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v9.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v38, 16, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v13, v13, v24
	v_fma_f32 v25, -v15, v16, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v44, v3, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v21, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v25, v16
	v_div_scale_f32 v25, vcc_lo, v18, v11, v18
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v2
	v_add3_u32 v6, v10, v6, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v46, v25, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v20, v21, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v5, v9, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v21, v31, v21
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v3, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v38, s0, v24, v13, v24
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v31, v31, v29
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v45, -v15, v46, v25
	v_mul_f32_e32 v53, v38, v21
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_mul_f32_e32 v55, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v29, v3, v29 :: v_dual_fmac_f32 v46, v45, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v45, -v20, v53, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v15, v46, v25
	v_fmac_f32_e32 v53, v45, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v16, v46
	v_fma_f32 v16, -v20, v53, v38
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v15, v11, v18
	v_div_fmas_f32 v16, v16, v21, v53
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v21, v44, v212
	scratch_load_b32 v44, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v47, v25
	v_exp_f32_e32 v25, v55
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v16, v13, v24
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v21, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.h, v2.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v10, v10
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v20, v20, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v25, v38
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v38, 16, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v16
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_mul_f32 v38, v3, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, null, v15, v15, v31
	v_rcp_f32_e32 v10, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v24, v10, 1.0
	v_dual_fmac_f32 v10, v25, v10 :: v_dual_lshlrev_b32 v25, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v3, v25
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v22
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v29, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v29, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v9.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, vcc_lo, v17, v20, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v6.h, s0
	v_mov_b16_e32 v21.l, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v44, s0, v31, v15, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v5, 1, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v16, v18, 1.0
	v_mul_f32_e32 v45, v44, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v11, v6, 0x7fff
	v_add3_u32 v5, v13, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v18, v21, v18 :: v_dual_lshlrev_b32 v21, 16, v51
	v_fma_f32 v22, -v24, v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, v9, v18
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v21, v3, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v45, v22, v10
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v21, v21, v23
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v37, -v16, v39, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v24, v45, v44
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v44, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v46, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v23, v3, v23
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v39, v37, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	v_mul_f32_e32 v46, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v16, v39, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v9, v18, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v22, v10, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, s2
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v38, v73
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v20, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v18, v37
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v15, v31
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v31, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v22, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v18, v18, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v6.h, vcc_lo
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v6.h, v2.h
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v18, 1, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v16, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v11, v11, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v9, v18, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v5.h, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v16
	v_div_scale_f32 v20, null, v15, v15, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v9, v20
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_fma_f32 v18, -v20, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v9, v18, v9 :: v_dual_lshlrev_b32 v18, 16, v48
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v3, v18
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v23, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v23, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v13.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, vcc_lo, v21, v11, v21
	v_div_scale_f32 v37, s0, v25, v15, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v10.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v39, v37, v9 :: v_dual_and_b32 v6, 1, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v10, v6, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v6, v3, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v24, 16, v32
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v6, v6, v31 :: v_dual_mul_f32 v31, v13, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v24, v3, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v6
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v16, v31, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v31, v38, v17
	v_fma_f32 v38, -v20, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v32, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v13, -v16, v31, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v39, v38, v9 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v6
	v_div_fmas_f32 v13, v13, v17, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v17, -v20, v39, v37
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v20, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v32
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v17, v9, v39
	v_div_fixup_f32 v11, v13, v11, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v31, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v15, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v5.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v16, v16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v13, null, v16, v16, v6
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v24, v20
	scratch_load_b32 v24, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v44
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v20, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v10.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v44, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v13, v11, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v11, v21, v11 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v18
	v_div_scale_f32 v21, vcc_lo, v6, v16, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v38
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	scratch_load_b32 v38, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v32, v21, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v17, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v5, null, v15, v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v25, v5
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v24, v30, v24
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v9, v24, v9 :: v_dual_lshlrev_b32 v30, 16, v40
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v24, 16, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v9.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v24, v3, v24 :: v_dual_and_b32 v17, 1, v17
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v24, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v5, v25, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v9, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v24
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v25, v31, v25
	v_div_scale_f32 v31, s0, v18, v15, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v13, v32, v21
	v_mul_f32_e32 v39, v31, v25
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v32, v38, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v5, v39, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v13, -v13, v32, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v38, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v13, v11, v32
	v_fma_f32 v5, -v5, v39, v31
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v31, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v11, v16, v6
	v_div_fmas_f32 v5, v5, v25, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s2
	v_ldexp_f32 v21, v37, v21
	v_exp_f32_e32 v13, v40
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v10, v20, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v15, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_mov_b16_e32 v9.h, v2.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v38, 16, v222
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v21, v21, v24
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v13, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.l, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v18, null, v13, v13, v30
	v_fma_f32 v20, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v10, v18
	v_fmac_f32_e32 v16, v20, v16
	v_div_scale_f32 v20, vcc_lo, v24, v21, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v18, v10, 1.0
	v_fmac_f32_e32 v10, v25, v10
	v_div_scale_f32 v25, s1, v30, v13, v30
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v31
	scratch_load_b32 v31, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v28, v6
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v28, v25, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v2
	v_add3_u32 v17, v6, v17, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v6, v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v31
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v27, v5
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v15, v6, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v5.h
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v6, v27, v16
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v27, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v15, v6, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v5, v9, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v5, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v6, v15, v16, v6
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v18, v28, v25
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v6, v21, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v28, v9, v10 :: v_dual_lshlrev_b32 v9, 16, v33
	v_fma_f32 v15, -v18, v28, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v9, v3, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v15, v10, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v15, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v13, v30
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v15, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v4, v4, v15
	scratch_load_b32 v15, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v5, v5, v27 :: v_dual_mul_f32 v4, v4, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v20, 0xbfb8aa3b, v5
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v4.h
	v_mov_b16_e32 v20.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v4, v20, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v16
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v16, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v0, v6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v6, 16, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v13, v15, v13
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v15, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v6, v3, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_and_b32 v24, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v6, v6, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v13, v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v6
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v1
	v_ldexp_f32 v10, v10, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v10, v10, v9
	v_fma_f32 v27, -v16, v15, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v28, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v21, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v15, v27, v15
	v_div_scale_f32 v27, vcc_lo, v5, v13, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v18, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, s0, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v32, v27, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v21, v31
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v31, 16, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v39, -v16, v32, v27
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v18, v18, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v25, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v0, v3, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v32, v39, v15
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v3, v38
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v28, v30, v28 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v16, v32, v27
	v_div_scale_f32 v30, null, v18, v18, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v34, v28
	v_div_fmas_f32 v15, v16, v15, v32
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v30
	v_div_scale_f32 v33, null, v21, v21, v6
	v_fma_f32 v38, -v25, v42, v34
	v_div_fixup_f32 v5, v15, v13, v5
	v_rcp_f32_e32 v40, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v38, v28
	v_div_scale_f32 v38, s2, v1, v18, v1
	v_fma_f32 v39, -v30, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v25, v42, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v34, off, off offset:12 ; 4-byte Folded Reload
	v_dual_mul_f32 v0, v0, v44 :: v_dual_fmac_f32 v37, v39, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v33, v40, 1.0
	v_div_fmas_f32 v16, v16, v28, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v0, v0, v5 :: v_dual_lshlrev_b32 v5, 16, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v25, v38, v37
	v_div_fixup_f32 v9, v16, v10, v9
	v_fmac_f32_e32 v40, v27, v40
	v_div_scale_f32 v27, s3, v6, v21, v6
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v3, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v30, v25, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v32, v27, v40 :: v_dual_fmac_f32 v25, v28, v37
	v_fma_f32 v7, -v30, v25, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v7, v7, v37, v25
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v7, v18, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v2.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v33, v32, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v31, v9
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v9, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v32, v34, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v5.h
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v33, v32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v40, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_and_b32_e32 v4, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v10, v21, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v5, v4, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v8, v9
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v8, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v8.h, 0x7fff, v24.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v7.l, v6.h
	v_cmp_o_f32_e64 s2, v6, v6
	v_and_b32_e32 v7, 1, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v3, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v2
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v0, v6, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:16 ; 4-byte Folded Reload
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b32_e32 v5, v35, v19, vcc_lo
	v_cndmask_b32_e32 v4, v19, v35, vcc_lo
	v_dual_cndmask_b32 v34, v11, v22 :: v_dual_cndmask_b32 v11, v22, v11
	v_cndmask_b32_e32 v35, v1, v17, vcc_lo
	v_cndmask_b32_e32 v1, v17, v1, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_dual_cndmask_b32 v6, v41, v58 :: v_dual_cndmask_b32 v31, v36, v52
	v_cndmask_b32_e32 v32, v52, v36, vcc_lo
	v_cndmask_b32_e32 v36, v2, v8, vcc_lo
	v_cndmask_b32_e32 v2, v8, v2, vcc_lo
	v_cndmask_b32_e32 v8, 0x1054, v17, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v22, vcc_lo
	v_cndmask_b32_e32 v33, v23, v29, vcc_lo
	v_cndmask_b32_e32 v23, v29, v23, vcc_lo
	v_permlanex16_b32 v22, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v8, 8, v8
	v_lshl_or_b32 v6, v17, 8, v17
	v_dual_cndmask_b32 v3, v12, v26 :: v_dual_cndmask_b32 v10, v43, v65
	v_cndmask_b32_e32 v13, v100, v120, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e32 v16, v111, v129, vcc_lo
	v_cndmask_b32_e32 v19, v132, v137, vcc_lo
	v_cndmask_b32_e32 v21, v145, v127, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e32 v25, v118, v110, vcc_lo
	v_cndmask_b32_e32 v27, v109, v88, vcc_lo
	v_cndmask_b32_e32 v30, v61, v54, vcc_lo
	v_cndmask_b32_e32 v0, v26, v12, vcc_lo
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v4
	v_dual_cndmask_b32 v9, v65, v43 :: v_dual_and_b32 v38, 0x7060706, v6
	v_dual_cndmask_b32 v12, v120, v100 :: v_dual_cndmask_b32 v15, v129, v111
	v_cndmask_b32_e32 v18, v137, v132, vcc_lo
	v_cndmask_b32_e32 v20, v127, v145, vcc_lo
	v_cndmask_b32_e32 v24, v110, v118, vcc_lo
	v_cndmask_b32_e32 v26, v88, v109, vcc_lo
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v0, v37
	v_perm_b32 v3, v3, v0, v38
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v22, v5, v37
	v_perm_b32 v5, v22, v5, v38
	v_perm_b32 v8, v10, v9, v37
	v_perm_b32 v9, v10, v9, v38
	v_perm_b32 v10, v13, v12, v37
	v_perm_b32 v11, v13, v12, v38
	v_perm_b32 v12, v16, v15, v37
	v_perm_b32 v13, v16, v15, v38
	v_perm_b32 v15, v17, v18, v37
	v_perm_b32 v16, v17, v18, v38
	v_perm_b32 v17, v19, v20, v37
	v_perm_b32 v18, v19, v20, v38
	v_perm_b32 v19, v21, v24, v37
	v_perm_b32 v20, v21, v24, v38
	v_perm_b32 v21, v25, v26, v37
	v_perm_b32 v22, v25, v26, v38
	v_perm_b32 v25, v30, v31, v37
	v_perm_b32 v26, v30, v31, v38
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	scratch_load_b32 v31, off, off          ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v28, v54, v61, vcc_lo
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, v58, v41, vcc_lo
	v_perm_b32 v30, v39, v34, v38
	v_perm_b32 v23, v27, v28, v37
	v_perm_b32 v24, v27, v28, v38
	v_perm_b32 v27, v32, v33, v37
	v_perm_b32 v28, v32, v33, v38
	v_perm_b32 v32, v1, v35, v38
	v_perm_b32 v6, v29, v7, v37
	v_perm_b32 v7, v29, v7, v38
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v33, v40, v36, v37
	v_perm_b32 v34, v40, v36, v38
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, v14, v31, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v31, v1, v35, v37
	v_add_nc_u32_e32 v0, 32, v14
	v_add_nc_u32_e32 v1, 64, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v14 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[2:5], v35, s[8:11], 0 offen
	buffer_store_b128 v[6:9], v0, s[8:11], 0 offen
	buffer_store_b128 v[10:13], v1, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v14
	v_add_nc_u32_e32 v1, 0x80, v14
	v_add_nc_u32_e32 v2, 0xa0, v14
	v_add_nc_u32_e32 v3, 0xc0, v14
	v_add_nc_u32_e32 v4, 0xe0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[8:11], 0 offen
	buffer_store_b128 v[19:22], v1, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v2, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v3, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 540
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 540
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 49024
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 540
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 540
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 249
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
