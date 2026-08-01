	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_dual_mov_b32 v109, v0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v109
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s31, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s31, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s31, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v5, s2, s24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v6, null, s25, 0, s2
	v_add_nc_u32_e32 v167, s24, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[5:6]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v109
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v103, 15, v109
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v104, 0xf0, v109
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s34, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s24, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x58
	s_load_b32 s36, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s24, v103
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[3:4]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 5, v109
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v1, s30
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s21, s31, 8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s35, s33
	v_bfe_i32 v34, v109, 7, 1
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v35, 1, v109
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:368
	scratch_store_b32 off, v103, off offset:396
	v_mul_lo_u32 v0, v2, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, s21, v3
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v36, 0x7f, v109
	v_and_b32_e32 v34, 0x88, v34
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v31, 24, v2
	v_or_b32_e32 v30, 32, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:372
	scratch_store_b32 off, v104, off offset:400
	v_mov_b32_e32 v107, 0
	v_mad_u64_u32 v[112:113], null, v31, s35, s[20:21]
	v_mad_u64_u32 v[113:114], null, v30, s35, s[20:21]
	v_mov_b32_e32 v114, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 32, v1
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v24, 0x50, v2
	v_or_b32_e32 v26, 64, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v4, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 0x98, v2
	v_lshlrev_b32_e32 v41, 5, v109
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v13, 0xa8, v2
	v_or_b32_e32 v12, 0xb0, v2
	v_or_b32_e32 v11, 0xb8, v2
	v_or_b32_e32 v27, 56, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s30
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v1, 0xe0, v109
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v28, 48, v2
	v_or_b32_e32 v32, 16, v2
	v_mad_u64_u32 v[87:88], null, v26, s35, s[20:21]
	v_mad_u64_u32 v[92:93], null, v24, s35, s[20:21]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v10, 0xc0, v2
	v_lshlrev_b32_e32 v37, 5, v103
	v_lshlrev_b32_e32 v1, 4, v1
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v38, 24, v35
	v_lshlrev_b32_e32 v43, 2, v104
	v_mad_u64_u32 v[131:132], null, v15, s35, s[20:21]
	v_mov_b32_e32 v93, 0
	v_xor_b32_e32 v0, v34, v36
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v41, 32, v41
	v_or_b32_e32 v9, 0xc8, v2
	v_mad_u64_u32 v[132:133], null, v14, s35, s[20:21]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xd0, v2
	v_mad_u64_u32 v[133:134], null, v13, s35, s[20:21]
	v_or_b32_e32 v7, 0xd8, v2
	v_mad_u64_u32 v[134:135], null, v12, s35, s[20:21]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[5:6]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xe0, v2
	v_or_b32_e32 v29, 40, v2
	v_mad_u64_u32 v[89:90], null, v32, s35, s[20:21]
	v_mad_u64_u32 v[85:86], null, v28, s35, s[20:21]
	v_mad_u64_u32 v[83:84], null, v27, s35, s[20:21]
	v_mad_u64_u32 v[135:136], null, v11, s35, s[20:21]
	v_or_b32_e32 v5, 0xe8, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:104
	scratch_store_b32 off, v109, off offset:108
	v_xor_b32_e32 v36, 0x110, v0
	v_or_b32_e32 v0, s21, v109
	v_and_b32_e32 v35, 28, v35
	v_mad_u64_u32 v[136:137], null, v10, s35, s[20:21]
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_add3_u32 v41, 0, v43, v41
	v_lshlrev_b32_e32 v43, 1, v104
	v_mov_b32_e32 v104, 0
	v_or3_b32 v122, v37, v38, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xf0, v2
	v_or_b32_e32 v20, 0x70, v2
	v_or_b32_e32 v22, 0x60, v2
	v_mad_u64_u32 v[137:138], null, v9, s35, s[20:21]
	v_or_b32_e32 v3, 0xf8, v2
	v_or_b32_e32 v16, 0x90, v2
	v_or_b32_e32 v17, 0x88, v2
	v_or_b32_e32 v18, 0x80, v2
	v_or_b32_e32 v19, 0x78, v2
	v_or_b32_e32 v21, 0x68, v2
	v_or_b32_e32 v23, 0x58, v2
	v_or_b32_e32 v25, 0x48, v2
	v_or_b32_e32 v33, 8, v2
	v_mad_u64_u32 v[138:139], null, v8, s35, s[20:21]
	v_mad_u64_u32 v[80:81], null, v2, s35, s[20:21]
	v_mad_u64_u32 v[139:140], null, v7, s35, s[20:21]
	v_mad_u64_u32 v[81:82], null, v29, s35, s[20:21]
	v_mad_u64_u32 v[140:141], null, v6, s35, s[20:21]
	v_or_b32_e32 v39, 0x300, v109
	v_or_b32_e32 v40, 0x700, v109
	v_or_b32_e32 v1, 0x3f0, v109
	v_or_b32_e32 v34, 0x7f0, v109
	v_xor_b32_e32 v37, 8, v122
	v_xor_b32_e32 v38, 16, v122
	v_xor_b32_e32 v42, 24, v122
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mad_u64_u32 v[141:142], null, v5, s35, s[20:21]
	v_mov_b32_e32 v82, 0
	v_add_nc_u32_e32 v0, v41, v35
	v_mad_u64_u32 v[123:124], null, v22, s35, s[20:21]
	v_mad_u64_u32 v[127:128], null, v20, s35, s[20:21]
	v_mad_u64_u32 v[142:143], null, v4, s35, s[20:21]
	v_mad_u64_u32 v[78:79], null, v33, s35, s[20:21]
	v_mad_u64_u32 v[118:119], null, v25, s35, s[20:21]
	v_mad_u64_u32 v[120:121], null, v23, s35, s[20:21]
	v_mad_u64_u32 v[124:125], null, v21, s35, s[20:21]
	v_mad_u64_u32 v[171:172], null, v19, s35, s[20:21]
	v_mad_u64_u32 v[128:129], null, v18, s35, s[20:21]
	v_mad_u64_u32 v[168:169], null, v17, s35, s[20:21]
	v_mad_u64_u32 v[96:97], null, v16, s35, s[20:21]
	v_mad_u64_u32 v[143:144], null, v3, s35, s[20:21]
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v126, 0, v103
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v157, 0, v109
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v163, 0, v39
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v156, 0, v40
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v202, 0, v1
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v165, 0, v34
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v169, 0, v36
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v170, 0, v37
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v94, 0, v38
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v97, 0, v42
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v0, 0, v43
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v43, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s37, s30, s7
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s2, s2, s5
	s_mov_b32 s38, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v114, off offset:364
	scratch_store_b32 off, v111, off offset:360
	scratch_store_b32 off, v110, off offset:356
	scratch_store_b32 off, v108, off offset:352
	scratch_store_b32 off, v107, off offset:348
	scratch_store_b32 off, v106, off offset:344
	scratch_store_b32 off, v105, off offset:340
	scratch_store_b32 off, v104, off offset:336
	scratch_store_b32 off, v93, off offset:332
	scratch_store_b32 off, v91, off offset:328
	scratch_store_b32 off, v90, off offset:324
	scratch_store_b32 off, v88, off offset:320
	scratch_store_b32 off, v86, off offset:316
	scratch_store_b32 off, v84, off offset:312
	scratch_store_b32 off, v82, off offset:308
	scratch_store_b32 off, v79, off offset:304
	scratch_store_b32 off, v69, off offset:300
	scratch_store_b32 off, v17, off offset:296
	scratch_store_b32 off, v18, off offset:292
	scratch_store_b32 off, v19, off offset:288
	scratch_store_b32 off, v20, off offset:284
	scratch_store_b32 off, v21, off offset:280
	scratch_store_b32 off, v22, off offset:276
	scratch_store_b32 off, v23, off offset:272
	scratch_store_b32 off, v24, off offset:268
	scratch_store_b32 off, v25, off offset:264
	scratch_store_b32 off, v26, off offset:260
	scratch_store_b32 off, v27, off offset:256
	scratch_store_b32 off, v28, off offset:252
	scratch_store_b32 off, v29, off offset:248
	scratch_store_b32 off, v30, off offset:244
	scratch_store_b32 off, v31, off offset:240
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v32, off offset:236
	scratch_store_b32 off, v33, off offset:232
	scratch_store_b32 off, v34, off offset:228
	scratch_store_b32 off, v35, off offset:224
	scratch_store_b32 off, v36, off offset:220
	scratch_store_b32 off, v37, off offset:216
	scratch_store_b32 off, v38, off offset:212
	scratch_store_b32 off, v77, off offset:208
	scratch_store_b32 off, v76, off offset:204
	scratch_store_b32 off, v39, off offset:200
	scratch_store_b32 off, v40, off offset:196
	scratch_store_b32 off, v41, off offset:192
	scratch_store_b32 off, v75, off offset:188
	scratch_store_b32 off, v74, off offset:184
	scratch_store_b32 off, v73, off offset:180
	scratch_store_b32 off, v72, off offset:176
	scratch_store_b32 off, v71, off offset:172
	scratch_store_b32 off, v70, off offset:168
	scratch_store_b32 off, v68, off offset:164
	scratch_store_b32 off, v67, off offset:160
	scratch_store_b32 off, v66, off offset:156
	scratch_store_b32 off, v53, off offset:152
	scratch_store_b32 off, v52, off offset:148
	scratch_store_b32 off, v51, off offset:144
	scratch_store_b32 off, v50, off offset:140
	scratch_store_b32 off, v49, off offset:136
	scratch_store_b32 off, v48, off offset:132
	scratch_store_b32 off, v47, off offset:128
	scratch_store_b32 off, v46, off offset:124
	scratch_store_b32 off, v45, off offset:120
	scratch_store_b32 off, v43, off offset:116
	scratch_store_b32 off, v42, off offset:112
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s38, 6
	s_mov_b32 s15, -1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	s_mov_b32 s39, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v98, 6, v109
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s39, s14
	s_clause 0xc                            ; 104-byte Folded Spill
	scratch_store_b64 off, v[113:114], off offset:96
	scratch_store_b64 off, v[96:97], off offset:88
	scratch_store_b64 off, v[92:93], off offset:80
	scratch_store_b64 off, v[133:134], off offset:72
	scratch_store_b64 off, v[132:133], off offset:64
	scratch_store_b64 off, v[80:81], off offset:56
	scratch_store_b64 off, v[128:129], off offset:48
	scratch_store_b64 off, v[89:90], off offset:40
	scratch_store_b64 off, v[87:88], off offset:32
	scratch_store_b64 off, v[85:86], off offset:24
	scratch_store_b64 off, v[83:84], off offset:16
	scratch_store_b64 off, v[81:82], off offset:8
	scratch_store_b64 off, v[78:79], off
	v_dual_mov_b32 v86, v112 :: v_dual_mov_b32 v65, v157
	v_or_b32_e32 v100, s39, v98
	v_mov_b32_e32 v91, v118
	v_mov_b32_e32 v93, v123
	v_dual_mov_b32 v79, v94 :: v_dual_mov_b32 v88, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v100, s36, v[167:168]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v100
	v_dual_mov_b32 v97, v127 :: v_dual_mov_b32 v90, v134
	v_dual_mov_b32 v95, v135 :: v_dual_mov_b32 v84, v137
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	v_mov_b32_e32 v82, v140
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v102, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 4, v100
	v_mov_b32_e32 v94, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v103, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 8, v100
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v104, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 12, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v105, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 16, v100
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v106, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 20, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v107, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 24, v100
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v108, 0x80000000, v98, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v98, 28, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s36, v[167:168]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v99, 31, v109
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v99, s39, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_mov_b32 s39, 32
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v100, v80, v99
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v99
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v110, v89, v99
	v_add_nc_u32_e32 v109, v78, v99
	v_add_nc_u32_e32 v111, v112, v99
	v_add_nc_u32_e32 v112, v113, v99
	v_add_nc_u32_e32 v113, v81, v99
	v_add_nc_u32_e32 v114, v85, v99
	v_add_nc_u32_e32 v115, v83, v99
	v_add_nc_u32_e32 v116, v87, v99
	v_add_nc_u32_e32 v117, v118, v99
	v_add_nc_u32_e32 v118, v92, v99
	v_add_nc_u32_e32 v119, v120, v99
	v_mov_b32_e32 v92, v120
	v_dual_mov_b32 v87, v136 :: v_dual_add_nc_u32 v120, v123, v99
	v_add_nc_u32_e32 v121, v124, v99
	v_add_nc_u32_e32 v123, v127, v99
	v_add_nc_u32_e32 v125, v171, v99
	v_add_nc_u32_e32 v127, v128, v99
	v_add_nc_u32_e32 v128, v168, v99
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_add_nc_u32 v129, v96, v99
	v_dual_mov_b32 v85, v138 :: v_dual_add_nc_u32 v130, v131, v99
	v_dual_mov_b32 v96, v131 :: v_dual_add_nc_u32 v131, v132, v99
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	v_dual_mov_b32 v89, v139 :: v_dual_add_nc_u32 v132, v133, v99
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v133, v134, v99
	v_dual_mov_b32 v83, v141 :: v_dual_add_nc_u32 v134, v135, v99
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v112, 0x80000000, v112 :: v_dual_add_nc_u32 v135, v136, v99
	v_dual_cndmask_b32 v109, 0x80000000, v109 :: v_dual_add_nc_u32 v136, v137, v99
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_add_nc_u32 v137, v138, v99
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_add_nc_u32 v138, v139, v99
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_add_nc_u32 v139, v140, v99
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_add_nc_u32 v140, v141, v99
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_add_nc_u32 v141, v142, v99
	v_dual_cndmask_b32 v120, 0x80000000, v120 :: v_dual_add_nc_u32 v99, v143, v99
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v132, 0x80000000, v132
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v134, 0x80000000, v134
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v129, 0x80000000, v129 :: v_dual_mov_b32 v78, v143
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	v_mov_b32_e32 v81, v142
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v142, v100, s[8:11], 0 offen
	buffer_load_u8 v184, v109, s[8:11], 0 offen
	buffer_load_u8 v143, v110, s[8:11], 0 offen
	buffer_load_u8 v185, v111, s[8:11], 0 offen
	buffer_load_u8 v144, v112, s[8:11], 0 offen
	buffer_load_u8 v186, v113, s[8:11], 0 offen
	buffer_load_u8 v145, v114, s[8:11], 0 offen
	buffer_load_u8 v187, v115, s[8:11], 0 offen
	buffer_load_u8 v146, v116, s[8:11], 0 offen
	buffer_load_u8 v188, v117, s[8:11], 0 offen
	buffer_load_u8 v147, v118, s[8:11], 0 offen
	buffer_load_u8 v189, v119, s[8:11], 0 offen
	buffer_load_u8 v148, v120, s[8:11], 0 offen
	buffer_load_u8 v190, v121, s[8:11], 0 offen
	buffer_load_u8 v149, v123, s[8:11], 0 offen
	buffer_load_u8 v191, v125, s[8:11], 0 offen
	buffer_load_u8 v150, v127, s[8:11], 0 offen
	buffer_load_u8 v192, v128, s[8:11], 0 offen
	buffer_load_u8 v151, v129, s[8:11], 0 offen
	buffer_load_u8 v193, v130, s[8:11], 0 offen
	buffer_load_u8 v152, v131, s[8:11], 0 offen
	buffer_load_u8 v194, v132, s[8:11], 0 offen
	buffer_load_u8 v153, v133, s[8:11], 0 offen
	buffer_load_u8 v195, v134, s[8:11], 0 offen
	buffer_load_u8 v154, v135, s[8:11], 0 offen
	buffer_load_u8 v196, v136, s[8:11], 0 offen
	buffer_load_u8 v136, v137, s[8:11], 0 offen
	buffer_load_u8 v197, v138, s[8:11], 0 offen
	buffer_load_u8 v137, v139, s[8:11], 0 offen
	buffer_load_u8 v198, v140, s[8:11], 0 offen
	buffer_load_u8 v139, v141, s[8:11], 0 offen
	buffer_load_u8 v199, v99, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v99, v102, s[20:23], 0 offen
	buffer_load_u8 v100, v103, s[20:23], 0 offen
	buffer_load_u8 v102, v104, s[20:23], 0 offen
	buffer_load_u8 v103, v106, s[20:23], 0 offen
	buffer_load_u8 v104, v107, s[20:23], 0 offen
	buffer_load_u8 v106, v108, s[20:23], 0 offen
	buffer_load_u8 v98, v98, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s15
	s_mov_b32 s15, 0
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v157, v99
	s_waitcnt vmcnt(6)
	ds_store_b8 v157, v100 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v157, v102 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v157, v103 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v157, v104 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v163, v105
	ds_store_b8 v157, v106 offset:1536
	ds_store_b8 v156, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v140, v126 offset:192
	ds_load_u8 v141, v126 offset:128
	ds_load_u8 v155, v126 offset:208
	ds_load_u8 v173, v126 offset:144
	ds_load_u8 v157, v126 offset:224
	ds_load_u8 v158, v126 offset:160
	ds_load_u8 v159, v126 offset:240
	ds_load_u8 v160, v126 offset:176
	ds_load_u8 v162, v126 offset:448
	ds_load_u8 v164, v126 offset:384
	ds_load_u8 v166, v126 offset:464
	ds_load_u8 v172, v126 offset:400
	ds_load_u8 v174, v126 offset:480
	ds_load_u8 v176, v126 offset:416
	ds_load_u8 v178, v126 offset:496
	ds_load_u8 v179, v126 offset:432
	ds_load_u8 v180, v126 offset:320
	ds_load_u8 v181, v126 offset:256
	ds_load_u8 v182, v126 offset:336
	ds_load_u8 v183, v126 offset:272
	ds_load_u8 v101, v126 offset:352
	ds_load_u8 v0, v126 offset:288
	ds_load_u8 v80, v126 offset:368
	ds_load_u8 v124, v126 offset:304
	ds_load_u8 v66, v126 offset:64
	ds_load_u8 v67, v126 offset:80
	ds_load_u8 v68, v126 offset:96
	ds_load_u8 v69, v126 offset:112
	ds_load_u8 v70, v126
	ds_load_u8 v71, v126 offset:16
	ds_load_u8 v72, v126 offset:32
	ds_load_u8 v73, v126 offset:48
	ds_load_u8 v228, v126 offset:960
	ds_load_u8 v231, v126 offset:896
	ds_load_u8 v200, v126 offset:1024
	ds_load_u8 v222, v126 offset:976
	ds_load_u8 v225, v126 offset:912
	ds_load_u8 v211, v126 offset:992
	ds_load_u8 v214, v126 offset:928
	ds_load_u8 v206, v126 offset:944
	ds_load_u8 v103, v126 offset:832
	ds_load_u8 v105, v126 offset:768
	ds_load_u8 v247, v126 offset:848
	ds_load_u8 v251, v126 offset:784
	ds_load_u8 v234, v126 offset:864
	ds_load_u8 v236, v126 offset:800
	ds_load_u8 v220, v126 offset:880
	ds_load_u8 v223, v126 offset:816
	ds_load_u8 v113, v126 offset:704
	ds_load_u8 v116, v126 offset:640
	ds_load_u8 v138, v126 offset:720
	ds_load_u8 v175, v126 offset:656
	ds_load_u8 v252, v126 offset:736
	ds_load_u8 v254, v126 offset:672
	ds_load_u8 v244, v126 offset:752
	ds_load_u8 v249, v126 offset:688
	ds_load_u8 v134, v126 offset:576
	ds_load_u8 v74, v126 offset:512
	ds_load_u8 v128, v126 offset:592
	ds_load_u8 v130, v126 offset:528
	ds_load_u8 v118, v126 offset:608
	ds_load_u8 v120, v126 offset:544
	ds_load_u8 v111, v126 offset:624
	ds_load_u8 v115, v126 offset:560
	ds_load_u8 v224, v126 offset:1216
	ds_load_u8 v233, v126 offset:1280
	ds_load_u8 v212, v126 offset:1232
	ds_load_u8 v216, v126 offset:1168
	ds_load_u8 v207, v126 offset:1248
	ds_load_u8 v209, v126 offset:1184
	ds_load_u8 v203, v126 offset:1264
	ds_load_u8 v205, v126 offset:1200
	ds_load_u8 v246, v126 offset:1152
	ds_load_u8 v253, v126 offset:1088
	ds_load_u8 v235, v126 offset:1104
	ds_load_u8 v238, v126 offset:1040
	ds_load_u8 v227, v126 offset:1120
	ds_load_u8 v229, v126 offset:1056
	ds_load_u8 v218, v126 offset:1136
	ds_load_u8 v221, v126 offset:1072
	ds_load_u8 v117, v126 offset:1472
	ds_load_u8 v201, v126 offset:1536
	ds_load_u8 v177, v126 offset:1488
	ds_load_u8 v107, v126 offset:1424
	ds_load_u8 v255, v126 offset:1504
	ds_load_u8 v102, v126 offset:1440
	ds_load_u8 v240, v126 offset:1520
	ds_load_u8 v245, v126 offset:1456
	ds_load_u8 v135, v126 offset:1408
	ds_load_u8 v75, v126 offset:1344
	ds_load_u8 v131, v126 offset:1360
	ds_load_u8 v132, v126 offset:1296
	ds_load_u8 v121, v126 offset:1376
	ds_load_u8 v125, v126 offset:1312
	ds_load_u8 v108, v126 offset:1392
	ds_load_u8 v112, v126 offset:1328
	ds_load_u8 v226, v126 offset:1984
	ds_load_u8 v213, v126 offset:2000
	ds_load_u8 v217, v126 offset:1936
	ds_load_u8 v208, v126 offset:2016
	ds_load_u8 v210, v126 offset:1952
	ds_load_u8 v76, v202
	ds_load_u8 v161, v165
	ds_load_u8 v204, v126 offset:1968
	ds_load_u8 v250, v126 offset:1920
	ds_load_u8 v100, v126 offset:1856
	ds_load_u8 v239, v126 offset:1872
	ds_load_u8 v242, v126 offset:1808
	ds_load_u8 v230, v126 offset:1888
	ds_load_u8 v232, v126 offset:1824
	ds_load_u8 v215, v126 offset:1904
	ds_load_u8 v219, v126 offset:1840
	ds_load_u8 v106, v126 offset:1728
	ds_load_u8 v119, v126 offset:1792
	ds_load_u8 v99, v126 offset:1744
	ds_load_u8 v104, v126 offset:1680
	ds_load_u8 v243, v126 offset:1760
	ds_load_u8 v248, v126 offset:1696
	ds_load_u8 v237, v126 offset:1776
	ds_load_u8 v241, v126 offset:1712
	ds_load_u8 v129, v126 offset:1664
	ds_load_u8 v133, v126 offset:1600
	ds_load_u8 v123, v126 offset:1616
	ds_load_u8 v127, v126 offset:1552
	ds_load_u8 v110, v126 offset:1632
	ds_load_u8 v114, v126 offset:1568
	ds_load_u8 v98, v126 offset:1648
	ds_load_u8 v109, v126 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v77, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v66, v70, v66, 0xc0c0004
	v_perm_b32 v0, v0, v101, 0xc0c0004
	v_perm_b32 v67, v71, v67, 0xc0c0004
	v_perm_b32 v70, v141, v140, 0xc0c0004
	v_perm_b32 v71, v173, v155, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, 0, v77
	ds_store_b8 v77, v142
	ds_store_b8 v77, v143 offset:512
	ds_store_b8 v77, v144 offset:1024
	ds_store_b8 v77, v145 offset:1536
	ds_store_b8 v77, v146 offset:2048
	ds_store_b8 v77, v147 offset:2560
	ds_store_b8 v77, v148 offset:3072
	ds_store_b8 v77, v149 offset:3584
	ds_store_b8 v77, v150 offset:4096
	ds_store_b8 v77, v151 offset:4608
	ds_store_b8 v77, v152 offset:5120
	ds_store_b8 v77, v153 offset:5632
	ds_store_b8 v77, v154 offset:6144
	ds_store_b8 v77, v136 offset:6656
	ds_store_b8 v77, v137 offset:7168
	ds_store_b8 v77, v139 offset:7680
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v77, v181, v180, 0xc0c0004
	v_perm_b32 v136, v164, v162, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_store_b8 v169, v184
	ds_store_b8 v169, v185 offset:512
	ds_store_b8 v169, v186 offset:1024
	ds_store_b8 v169, v187 offset:1536
	ds_store_b8 v169, v188 offset:2048
	ds_store_b8 v169, v189 offset:2560
	ds_store_b8 v169, v190 offset:3072
	ds_store_b8 v169, v191 offset:3584
	ds_store_b8 v169, v192 offset:4096
	ds_store_b8 v169, v193 offset:4608
	ds_store_b8 v169, v194 offset:5120
	ds_store_b8 v169, v195 offset:5632
	ds_store_b8 v169, v196 offset:6144
	ds_store_b8 v169, v197 offset:6656
	ds_store_b8 v169, v198 offset:7168
	ds_store_b8 v169, v199 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v139, v71, 16, v67
	v_lshl_or_b32 v137, v136, 16, v77
	v_lshl_or_b32 v136, v70, 16, v66
	v_perm_b32 v66, v183, v182, 0xc0c0004
	v_perm_b32 v70, v172, v166, 0xc0c0004
	v_perm_b32 v67, v72, v68, 0xc0c0004
	v_perm_b32 v68, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v70, 16, v66
	v_perm_b32 v66, v176, v174, 0xc0c0004
	v_lshl_or_b32 v141, v68, 16, v67
	v_perm_b32 v67, v73, v69, 0xc0c0004
	v_perm_b32 v68, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v142, v66, 16, v0
	v_perm_b32 v0, v124, v80, 0xc0c0004
	v_perm_b32 v66, v179, v178, 0xc0c0004
	v_lshl_or_b32 v143, v68, 16, v67
	v_perm_b32 v67, v74, v134, 0xc0c0004
	v_perm_b32 v68, v116, v113, 0xc0c0004
	v_mov_b32_e32 v124, v94
	v_lshl_or_b32 v144, v66, 16, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v0, 0, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v66, v231, v228, 0xc0c0004
	v_mov_b32_e32 v94, v79
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v105, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[136:137], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v137, v66, 16, v0
	v_lshl_or_b32 v136, v68, 16, v67
	v_perm_b32 v0, v251, v247, 0xc0c0004
	v_perm_b32 v66, v225, v222, 0xc0c0004
	v_perm_b32 v67, v130, v128, 0xc0c0004
	v_perm_b32 v68, v175, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v66, 16, v0
	v_perm_b32 v0, v236, v234, 0xc0c0004
	v_lshl_or_b32 v138, v68, 16, v67
	v_perm_b32 v66, v214, v211, 0xc0c0004
	v_perm_b32 v67, v120, v118, 0xc0c0004
	v_perm_b32 v68, v254, v252, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v66, 16, v0
	v_perm_b32 v0, v115, v111, 0xc0c0004
	v_lshl_or_b32 v140, v68, 16, v67
	v_perm_b32 v66, v249, v244, 0xc0c0004
	v_perm_b32 v67, v223, v220, 0xc0c0004
	v_perm_b32 v68, v206, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[143:144], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[143:144], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v66, 16, v0
	v_perm_b32 v0, v233, v75, 0xc0c0004
	v_lshl_or_b32 v116, v68, 16, v67
	v_perm_b32 v66, v135, v117, 0xc0c0004
	v_perm_b32 v67, v200, v253, 0xc0c0004
	v_perm_b32 v68, v246, v224, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v170 offset1:8
	v_mov_b32_e32 v120, v92
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v135, v66, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	v_lshl_or_b32 v134, v68, 16, v67
	v_perm_b32 v66, v107, v177, 0xc0c0004
	v_perm_b32 v67, v238, v235, 0xc0c0004
	v_perm_b32 v68, v216, v212, 0xc0c0004
	v_dual_mov_b32 v142, v81 :: v_dual_mov_b32 v143, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v131, v66, 16, v0
	v_perm_b32 v0, v125, v121, 0xc0c0004
	v_lshl_or_b32 v130, v68, 16, v67
	v_perm_b32 v66, v102, v255, 0xc0c0004
	v_perm_b32 v67, v229, v227, 0xc0c0004
	v_perm_b32 v68, v209, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v112, v108, 0xc0c0004
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v66, v245, v240, 0xc0c0004
	v_perm_b32 v67, v221, v218, 0xc0c0004
	v_perm_b32 v68, v205, v203, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v66, 16, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[115:118], v79 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v107, v68, 16, v67
	scratch_load_b64 v[66:67], off, off offset:88 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v138, v85
	v_dual_mov_b32 v112, v86 :: v_dual_mov_b32 v157, v65
	scratch_load_b64 v[85:86], off, off offset:24 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v136, v87
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[140:141], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v141, v83
	v_perm_b32 v0, v119, v100, 0xc0c0004
	v_dual_mov_b32 v139, v89 :: v_dual_mov_b32 v140, v82
	scratch_load_b64 v[68:69], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[130:131], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v131, v96
	v_wmma_i32_16x16x16_iu4 v[1:8], v[115:116], v[134:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[134:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[115:116], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[117:118], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v134, v90
	v_mov_b32_e32 v118, v91
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v96, v66
	scratch_load_b64 v[66:67], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v87, v66
	scratch_load_b64 v[66:67], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v83, v66
	scratch_load_b64 v[66:67], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v201, v133, 0xc0c0004
	v_mov_b32_e32 v133, v68
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[68:69], off, off offset:64
	scratch_load_b64 v[69:70], off, off offset:48
	v_dual_mov_b32 v137, v84 :: v_dual_mov_b32 v92, v66
	v_perm_b32 v66, v250, v226, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v132, v68
	v_perm_b32 v68, v129, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v242, v239, 0xc0c0004
	v_perm_b32 v66, v217, v213, 0xc0c0004
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v67, v127, v123, 0xc0c0004
	v_perm_b32 v68, v104, v99, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[102:105], v88 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v100, v66, 16, v0
	v_perm_b32 v0, v232, v230, 0xc0c0004
	v_perm_b32 v66, v210, v208, 0xc0c0004
	v_lshl_or_b32 v99, v68, 16, v67
	v_perm_b32 v67, v114, v110, 0xc0c0004
	scratch_load_b64 v[113:114], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v135, v95 :: v_dual_mov_b32 v128, v69
	scratch_load_b64 v[68:69], off, off offset:8 ; 8-byte Folded Reload
	v_lshl_or_b32 v111, v66, 16, v0
	v_perm_b32 v0, v109, v98, 0xc0c0004
	v_perm_b32 v66, v241, v237, 0xc0c0004
	v_mov_b32_e32 v127, v97
	v_mov_b32_e32 v97, v88
	v_mov_b32_e32 v123, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v108, v66, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[99:100], v[25:32] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v81, v68
	v_perm_b32 v68, v248, v243, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v110, v68, 16, v67
	v_perm_b32 v67, v219, v215, 0xc0c0004
	v_perm_b32 v68, v204, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[110:111], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[110:111], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v109, v68, 16, v67
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[89:90], off, off offset:40
	scratch_load_b64 v[78:79], off, off
	scratch_load_b64 v[66:67], off, off offset:56
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[104:105], v[108:109], v[57:64] neg_lo:[1,1,0]
	scratch_load_b32 v109, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v80, v66
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:368
	scratch_load_b32 v66, off, off offset:372
	scratch_load_b32 v67, off, off offset:376
	scratch_load_b32 v68, off, off offset:380
	scratch_load_b32 v69, off, off offset:384
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s14, s38, s37
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s14, s14, s33
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v102, v13
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v99, v10
	v_cvt_f32_i32_e32 v100, v11
	v_cvt_f32_i32_e32 v101, v12
	v_cvt_f32_i32_e32 v103, v14
	v_cvt_f32_i32_e32 v104, v15
	v_cvt_f32_i32_e32 v105, v16
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s38, v0, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v66, s38, v66, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v67, s38, v67, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v68, s38, v68, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, v69, s14, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s6
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s38, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s38, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v17, v17, v66 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v70, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v70, v71, v0 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v71, v72, v0 :: v_dual_mul_f32 v18, v18, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v13, off, off offset:392
	scratch_load_b32 v82, off, off offset:308
	scratch_load_b32 v114, off, off offset:364
	scratch_load_b32 v79, off, off offset:304
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v72, v73, v0
	v_dual_mul_f32 v73, v74, v0 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v74, v75, v0 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v75, v76, v0 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v76, v77, v0 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v77, v98, v0 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v98, v99, v0 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v99, v100, v0 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v100, v101, v0 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v101, v102, v0 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v102, v103, v0 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v103, v104, v0 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v0, v105, v0 :: v_dual_mul_f32 v31, v31, v66
	scratch_load_b32 v105, off, off offset:340 ; 4-byte Folded Reload
	v_dual_mul_f32 v19, v19, v66 :: v_dual_lshlrev_b32 v68, 16, v68
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v111, off, off offset:360
	scratch_load_b32 v110, off, off offset:356
	scratch_load_b32 v108, off, off offset:352
	scratch_load_b32 v107, off, off offset:348
	scratch_load_b32 v106, off, off offset:344
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v33, v33, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:336
	scratch_load_b32 v93, off, off offset:332
	v_dual_mul_f32 v35, v35, v67 :: v_dual_mul_f32 v50, v50, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:328
	scratch_load_b32 v90, off, off offset:324
	v_dual_mul_f32 v34, v34, v67 :: v_dual_mul_f32 v49, v49, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:320
	scratch_load_b32 v86, off, off offset:316
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v51, v51, v68
	scratch_load_b32 v84, off, off offset:312 ; 4-byte Folded Reload
	v_dual_mul_f32 v37, v37, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v60, v60, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v61, v61, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v63, v63, v68
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(16)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:160
	scratch_load_b32 v66, off, off offset:156
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16) lgkmcnt(3)
	v_fmac_f32_e32 v114, v69, v1
	scratch_load_b32 v69, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(2)
	v_fmac_f32_e32 v66, v53, v5
	scratch_load_b32 v53, off, off offset:152 ; 4-byte Folded Reload
	v_fmac_f32_e32 v67, v52, v4
	scratch_load_b32 v52, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v69, v17, v1
	scratch_load_b32 v17, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v53, v54, v6
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v18, v2
	scratch_load_b32 v18, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v19, v3
	scratch_load_b32 v19, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v20, v4
	scratch_load_b32 v20, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v21, v5
	scratch_load_b32 v21, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v22, v6
	scratch_load_b32 v22, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v23, v7
	scratch_load_b32 v23, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v24, v8
	scratch_load_b32 v24, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v64, v64, v68 :: v_dual_fmac_f32 v111, v70, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:168
	scratch_load_b32 v68, off, off offset:164
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2) lgkmcnt(1)
	v_fmac_f32_e32 v24, v25, v9
	scratch_load_b32 v25, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v68, v51, v3
	scratch_load_b32 v51, off, off offset:144 ; 4-byte Folded Reload
	v_fmac_f32_e32 v70, v50, v2
	scratch_load_b32 v50, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v25, v26, v10
	scratch_load_b32 v26, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v51, v56, v8 :: v_dual_fmac_f32 v26, v27, v11
	scratch_load_b32 v27, off, off offset:256 ; 4-byte Folded Reload
	v_dual_fmac_f32 v110, v71, v3 :: v_dual_fmac_f32 v107, v73, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:180
	scratch_load_b32 v71, off, off offset:172
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v27, v28, v12
	scratch_load_b32 v28, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_fmac_f32_e32 v73, v47, v15
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v71, v49, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:136
	scratch_load_b32 v47, off, off offset:128
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v28, v29, v13
	scratch_load_b32 v29, off, off offset:248 ; 4-byte Folded Reload
	v_fmac_f32_e32 v105, v75, v7
	scratch_load_b32 v75, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v29, v30, v14
	scratch_load_b32 v30, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v75, v45, v13
	scratch_load_b32 v45, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v30, v31, v15
	scratch_load_b32 v31, off, off offset:240 ; 4-byte Folded Reload
	v_dual_fmac_f32 v108, v72, v4 :: v_dual_fmac_f32 v93, v77, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:208
	scratch_load_b32 v72, off, off offset:176
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v31, v32, v16
	scratch_load_b32 v32, off, off offset:236 ; 4-byte Folded Reload
	v_dual_fmac_f32 v104, v76, v8 :: v_dual_fmac_f32 v91, v98, v10
	scratch_load_b32 v76, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v77, v40, v8
	scratch_load_b32 v40, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v72, v48, v16
	scratch_load_b32 v48, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v49, v58, v10 :: v_dual_fmac_f32 v32, v33, v1
	scratch_load_b32 v33, off, off offset:232 ; 4-byte Folded Reload
	v_fmac_f32_e32 v90, v99, v11
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v40, v43, v11
	scratch_load_b32 v43, off, off offset:116 ; 4-byte Folded Reload
	v_dual_fmac_f32 v52, v55, v7 :: v_dual_fmac_f32 v45, v62, v14
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v48, v59, v11 :: v_dual_fmac_f32 v33, v34, v2
	scratch_load_b32 v34, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v35, v3
	scratch_load_b32 v35, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v86, v101, v13 :: v_dual_fmac_f32 v35, v36, v4
	scratch_load_b32 v36, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v84, v102, v14
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v37, v5
	scratch_load_b32 v37, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v88, v100, v12 :: v_dual_fmac_f32 v37, v38, v6
	scratch_load_b32 v38, off, off offset:212 ; 4-byte Folded Reload
	v_dual_fmac_f32 v106, v74, v6 :: v_dual_fmac_f32 v79, v0, v16
	scratch_load_b32 v74, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v38, v39, v7
	scratch_load_b32 v39, off, off offset:200 ; 4-byte Folded Reload
	v_fmac_f32_e32 v76, v41, v9
	scratch_load_b32 v41, off, off offset:192 ; 4-byte Folded Reload
	v_fmac_f32_e32 v82, v103, v15
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v74, v46, v14
	scratch_load_b32 v46, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v47, v60, v12
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v39, v42, v10
	scratch_load_b32 v42, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v41, v44, v12 :: v_dual_fmac_f32 v50, v57, v9
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v43, v63, v15 :: v_dual_fmac_f32 v46, v61, v13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v42, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v6, v105, v105 :: v_dual_max_f32 v7, v104, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:396
	scratch_load_b32 v104, off, off offset:400
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v14, v82, v82 :: v_dual_max_f32 v15, v79, v79
	v_max_f32_e32 v16, v69, v69
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v69, 0, v38
	v_dual_max_f32 v44, 0, v37 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v37, v77, v77 :: v_dual_max_f32 v38, v76, v76
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v40, v40, v40
	v_max_f32_e32 v79, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, 0, v37 :: v_dual_max_f32 v78, 0, v38
	v_dual_max_f32 v81, 0, v41 :: v_dual_max_f32 v80, 0, v40
	v_dual_max_f32 v37, v75, v75 :: v_dual_max_f32 v38, v74, v74
	v_dual_max_f32 v39, v73, v73 :: v_dual_max_f32 v40, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v41, v71, v71 :: v_dual_max_f32 v82, 0, v37
	v_dual_max_f32 v12, v86, v86 :: v_dual_max_f32 v13, v84, v84
	v_dual_max_f32 v83, 0, v38 :: v_dual_max_f32 v84, 0, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v85, 0, v40 :: v_dual_max_f32 v86, 0, v41
	v_dual_max_f32 v37, v70, v70 :: v_dual_max_f32 v38, v68, v68
	v_dual_max_f32 v39, v67, v67 :: v_dual_max_f32 v40, v66, v66
	v_dual_max_f32 v41, v53, v53 :: v_dual_max_f32 v0, v114, v114
	v_dual_max_f32 v1, v111, v111 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v9, v91, v91 :: v_dual_max_f32 v10, v90, v90
	v_max_f32_e32 v11, v88, v88
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v87, 0, v37
	v_max_f32_e32 v90, 0, v40
	v_dual_max_f32 v88, 0, v38 :: v_dual_max_f32 v89, 0, v39
	v_max_f32_e32 v40, v49, v49
	v_dual_max_f32 v91, 0, v41 :: v_dual_max_f32 v38, v51, v51
	v_max_f32_e32 v39, v50, v50
	v_max_f32_e32 v37, v52, v52
	v_dual_max_f32 v41, v48, v48 :: v_dual_max_f32 v2, v110, v110
	v_max_f32_e32 v3, v108, v108
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v4, v107, v107 :: v_dual_max_f32 v5, v106, v106
	v_dual_max_f32 v8, v93, v93 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_max_f32_e32 v29, 0, v29
	v_dual_max_f32 v93, 0, v38 :: v_dual_max_f32 v94, 0, v39
	v_dual_max_f32 v92, 0, v37 :: v_dual_max_f32 v95, 0, v40
	v_max_f32_e32 v40, v43, v43
	v_max_f32_e32 v38, v46, v46
	v_dual_max_f32 v96, 0, v41 :: v_dual_max_f32 v37, v47, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v39, v45, v45 :: v_dual_max_f32 v100, 0, v40
	v_dual_max_f32 v41, v42, v42 :: v_dual_mul_f32 v48, v1, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v98, 0, v38 :: v_dual_max_f32 v97, 0, v37
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v52, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v99, 0, v39 :: v_dual_mul_f32 v54, v5, v5
	v_dual_max_f32 v101, 0, v41 :: v_dual_mul_f32 v60, v7, v7
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v45, v0, v0 :: v_dual_mul_f32 v76, v10, v10
	v_dual_mul_f32 v51, v2, v2 :: v_dual_mul_f32 v62, v8, v8
	v_dual_mul_f32 v53, v4, v4 :: v_dual_mul_f32 v68, v11, v11
	v_dual_mul_f32 v59, v6, v6 :: v_dual_mul_f32 v70, v12, v12
	v_dual_mul_f32 v63, v9, v9 :: v_dual_mul_f32 v74, v14, v14
	v_dual_mul_f32 v71, v13, v13 :: v_dual_mul_f32 v66, v19, v19
	v_dual_mul_f32 v75, v15, v15 :: v_dual_mul_f32 v72, v17, v17
	v_dual_mul_f32 v73, v16, v16 :: v_dual_mul_f32 v58, v22, v22
	v_dual_mul_f32 v67, v18, v18 :: v_dual_mul_f32 v64, v20, v20
	v_dual_mul_f32 v61, v21, v21 :: v_dual_mul_f32 v56, v24, v24
	v_dual_mul_f32 v57, v23, v23 :: v_dual_mul_f32 v50, v26, v26
	v_dual_mul_f32 v55, v25, v25 :: v_dual_mul_f32 v42, v31, v31
	v_dual_mul_f32 v49, v27, v27 :: v_dual_mul_f32 v46, v29, v29
	v_dual_mul_f32 v47, v28, v28 :: v_dual_mul_f32 v40, v33, v33
	v_dual_mul_f32 v43, v30, v30 :: v_dual_mul_f32 v38, v35, v35
	v_mul_f32_e32 v41, v32, v32
	v_mul_f32_e32 v39, v34, v34
	v_dual_mul_f32 v37, v36, v36 :: v_dual_mul_f32 v32, v79, v79
	v_dual_mul_f32 v36, v44, v44 :: v_dual_mul_f32 v35, v69, v69
	v_mul_f32_e32 v28, v83, v83
	v_dual_mul_f32 v34, v77, v77 :: v_dual_mul_f32 v33, v78, v78
	v_dual_mul_f32 v30, v81, v81 :: v_dual_mul_f32 v31, v80, v80
	v_dual_mul_f32 v26, v85, v85 :: v_dual_mul_f32 v29, v82, v82
	v_dual_mul_f32 v24, v87, v87 :: v_dual_mul_f32 v27, v84, v84
	v_dual_mul_f32 v22, v89, v89 :: v_dual_mul_f32 v25, v86, v86
	v_dual_mul_f32 v20, v91, v91 :: v_dual_mul_f32 v23, v88, v88
	v_dual_mul_f32 v18, v93, v93 :: v_dual_mul_f32 v21, v90, v90
	v_dual_mul_f32 v16, v95, v95 :: v_dual_mul_f32 v19, v92, v92
	v_dual_mul_f32 v6, v97, v97 :: v_dual_mul_f32 v17, v94, v94
	v_dual_mul_f32 v8, v99, v99 :: v_dual_mul_f32 v13, v96, v96
	v_mul_f32_e32 v4, v101, v101
	v_and_b32_e32 v1, 0x80, v109
	v_mul_f32_e32 v9, v98, v98
	v_mul_f32_e32 v7, v100, v100
	v_mov_b32_e32 v3, v167
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v48, v48
	v_max_f32_e32 v2, v45, v45
	v_max3_f32 v10, v63, v76, v68
	v_max3_f32 v11, v70, v71, v74
	v_max3_f32 v5, v52, v53, v54
	v_max_f32_e32 v12, v73, v73
	v_max3_f32 v69, v32, v31, v30
	v_max3_f32 v77, v29, v28, v27
	v_max3_f32 v10, v10, v11, v75
	v_dual_max_f32 v11, v41, v41 :: v_dual_max_f32 v0, v2, v0
	v_max_f32_e32 v2, v72, v72
	v_max3_f32 v14, v59, v60, v62
	v_max3_f32 v44, v55, v50, v49
	v_max3_f32 v65, v47, v46, v43
	v_max3_f32 v0, v0, v51, v5
	v_max_f32_e32 v5, v40, v40
	v_max3_f32 v15, v58, v57, v56
	s_mov_b32 s0, 0x76543210
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 3, v1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v14, v10
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v38, v37, v36
	v_max3_f32 v14, v16, v13, v6
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v39, v11
	v_max3_f32 v11, v69, v77, v26
	v_dual_max_f32 v69, v25, v25 :: v_dual_max_f32 v2, v12, v2
	v_max3_f32 v12, v66, v64, v61
	v_max3_f32 v2, v2, v67, v12
	v_max3_f32 v12, v44, v65, v42
	v_max3_f32 v44, v35, v34, v33
	v_max_f32_e32 v65, v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v2, v2, v15, v12
	v_max3_f32 v5, v5, v44, v11
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v15, v9, v8, v7
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v44, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v69, v65
	v_max3_f32 v12, v19, v18, v17
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v65, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v14, v15, v4
	v_max_f32_e32 v15, v44, v44
	v_max3_f32 v10, v10, v23, v11
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v44, v65, v65 :: v_dual_max_f32 v77, v0, v15
	v_max3_f32 v10, v10, v12, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, v11, v11 :: v_dual_and_b32 v0, 3, v109
	v_max_f32_e32 v79, v5, v44
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v5, 4, v109
	v_lshlrev_b32_e32 v14, 4, v109
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v2, v11
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v12, v0, 9, 0
	v_lshlrev_b32_e32 v11, 5, v0
	v_and_b32_e32 v44, 8, v109
	v_lshl_add_u32 v82, v5, 6, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_and_b32 v15, 0x60, v109
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v65, v5, 2, v12
	v_and_or_b32 v14, 0x680, v14, v11
	v_lshlrev_b32_e32 v12, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v10, v2
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v69, v11, v15
	v_lshl_add_u32 v65, v44, 4, v65
	v_xor_b32_e32 v14, v14, v15
	v_lshl_add_u32 v0, v0, 4, 0
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v65, v12, v69
	v_add3_u32 v10, v82, v81, v14
	ds_store_b128 v2, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v10, v78 :: v_dual_max_f32 v65, v77, v77
	v_dual_mov_b32 v2, v77 :: v_dual_max_f32 v69, v78, v78
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v69, v10 :: v_dual_max_f32 v69, v80, v80
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v79
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v65, v2 :: v_dual_max_f32 v65, v79, v79
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v10
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v10, v10, v79
	v_max_f32_e32 v14, v65, v14
	v_max_f32_e32 v65, v77, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v10
	v_mov_b32_e32 v69, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v77, v65
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v78, v2 :: v_dual_max_f32 v69, v69, v69
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v65, v65, v77 :: v_dual_max_f32 v78, v78, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v69, v14 :: v_dual_mov_b32 v80, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v78
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v78, v78 :: v_dual_max_f32 v78, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, v2, v77
	v_max_f32_e32 v2, v69, v69
	v_max_f32_e32 v78, v10, v78
	v_max_f32_e32 v10, v80, v80
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v69, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v14, v2 :: v_dual_lshlrev_b32 v44, 3, v44
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v5
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v65, v10
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v10, 4, v104
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v69, v44
	v_add3_u32 v0, v0, v2, v44
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp44:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v44, 32, v10
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v0
.Ltmp46:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	v_or_b32_e32 v65, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v1
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	v_add_co_u32 v81, s0, s24, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s25, 0, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[81:82]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[81:82]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_dual_max_f32 v0, v77, v77 :: v_dual_max_f32 v69, v79, v79
	v_max_f32_e32 v44, v78, v78
	v_dual_max_f32 v0, 0x2b8cbccc, v0 :: v_dual_max_f32 v69, 0x2b8cbccc, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v44, 0x2b8cbccc, v44
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v79, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v69
	v_rcp_f32_e32 v14, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v77, -v5, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v77, v14
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s0, s24, v65
	v_add_co_ci_u32_e64 v78, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v85, v79, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v80, v80
	v_fma_f32 v80, -v83, v84, 1.0
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v44
	v_fma_f32 v1, -v5, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v86, 0x2b8cbccc, v2
	v_fmac_f32_e32 v84, v80, v84
	v_div_scale_f32 v2, s6, v69, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v1, v14
	v_rcp_f32_e32 v87, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[77:78]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v1, -v5, v85, v79
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v86
	v_mul_f32_e32 v5, v2, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v14, v85
	v_rcp_f32_e32 v14, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v65, v87, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v0, v1, 0x40e00000, v0
	v_fma_f32 v1, -v83, v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, s7, v44, 0x40e00000, v44
	v_fma_f32 v82, -v79, v14, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v5, v1, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v81.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v85, v80, v87 :: v_dual_fmac_f32 v14, v82, v14
	v_div_scale_f32 v82, s8, v86, 0x40e00000, v86
	v_fma_f32 v2, -v83, v5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v65, v85, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v82, v14
	v_div_fmas_f32 v83, v2, v84, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v0, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v77, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v79, v78, v82
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v69, v83, 0x40e00000, v69
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v65, -v65, v85, v80
	v_fmac_f32_e32 v78, v0, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s24, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v84, v84, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v79, v78, v82
	v_div_fmas_f32 v65, v65, v87, v85
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v69.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v14, v77, v14, v78
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[1:2]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v78, -v0, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v69, v77, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, vcc_lo, v45, v84, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v78, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v79, v14, 0x40e00000, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, v81.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v84, v84, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v79.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v81
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v44, v65, 0x40e00000, v44
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v44.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v14
	v_add3_u32 v14, v44, v2, 0x7fff
	v_add3_u32 v2, v79, v77, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v44, -v0, v83, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v44, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v86, v79, 1.0
	v_fma_f32 v0, -v0, v83, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v65, null, v84, v84, v48
	v_div_scale_f32 v91, null, v84, v84, v53
	v_div_scale_f32 v85, null, v84, v84, v51
	v_rcp_f32_e32 v82, v65
	v_div_fmas_f32 v0, v0, v80, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v91
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v87, s8, v48, v84, v48
	v_div_scale_f32 v90, null, v84, v84, v54
	v_div_scale_f32 v83, s10, v52, v84, v52
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v65, v82, 1.0
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v93, -v91, v80, 1.0
	v_fma_f32 v89, -v85, v81, 1.0
	v_div_fixup_f32 v45, v0, v84, v45
	v_fmac_f32_e32 v82, v69, v82
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v93, v80
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, s9, v51, v84, v51
	v_mul_f32_e32 v88, v87, v82
	v_div_scale_f32 v93, null, v84, v84, v68
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v65, v88, v87
	v_fmac_f32_e32 v88, v78, v82
	v_mul_f32_e32 v78, v89, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v65, v88, v87
	v_fma_f32 v65, -v85, v78, v89
	v_mul_f32_e32 v87, v83, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v82, v88
	v_fmac_f32_e32 v78, v65, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v86, v87, v83
	v_fma_f32 v88, -v90, v92, 1.0
	v_div_scale_f32 v82, s8, v53, v84, v53
	v_div_fixup_f32 v48, v0, v84, v48
	v_fma_f32 v0, -v85, v78, v89
	v_dual_fmac_f32 v87, v65, v79 :: v_dual_fmac_f32 v92, v88, v92
	v_div_scale_f32 v88, null, v84, v84, v59
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v65, v82, v80
	v_div_scale_f32 v85, s11, v54, v84, v54
	v_div_fmas_f32 v0, v0, v81, v78
	v_fma_f32 v78, -v86, v87, v83
	v_rcp_f32_e32 v83, v88
	v_div_scale_f32 v89, null, v84, v84, v60
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v91, v65, v82
	v_mul_f32_e32 v86, v85, v92
	v_div_fmas_f32 v78, v78, v79, v87
	v_rcp_f32_e32 v79, v89
	v_div_fixup_f32 v51, v0, v84, v51
	v_fmac_f32_e32 v65, v81, v80
	v_fma_f32 v81, -v90, v86, v85
	v_fma_f32 v87, -v88, v83, 1.0
	v_div_fixup_f32 v52, v78, v84, v52
	v_div_scale_f32 v78, s9, v59, v84, v59
	v_fma_f32 v0, -v91, v65, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v81, v92 :: v_dual_fmac_f32 v83, v87, v83
	v_fma_f32 v81, -v89, v79, 1.0
	v_div_scale_f32 v82, null, v84, v84, v62
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v79, v81, v79 :: v_dual_and_b32 v44, 0xffff0000, v2
	v_div_fmas_f32 v0, v0, v80, v65
	v_fma_f32 v65, -v90, v86, v85
	v_mul_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v81, v82
	v_div_scale_f32 v85, s8, v60, v84, v60
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v84, v84, v63
	v_div_fmas_f32 v65, v65, v92, v86
	v_fma_f32 v86, -v88, v80, v78
	v_mul_f32_e32 v90, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v87
	v_fma_f32 v91, -v82, v81, 1.0
	v_div_fixup_f32 v53, v0, v84, v53
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v0, -v89, v90, v85
	v_div_fixup_f32 v54, v65, v84, v54
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v65, s10, v62, v84, v62
	v_div_scale_f32 v86, null, v84, v84, v76
	v_fma_f32 v78, -v88, v80, v78
	v_fmac_f32_e32 v90, v0, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v91, -v87, v92, 1.0
	v_mul_f32_e32 v0, v65, v81
	v_rcp_f32_e32 v88, v86
	v_div_fmas_f32 v78, v78, v83, v80
	v_fma_f32 v80, -v89, v90, v85
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v63, v84, v63
	v_fma_f32 v83, -v82, v0, v65
	v_div_fmas_f32 v79, v80, v79, v90
	v_rcp_f32_e32 v80, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v86, v88, 1.0
	v_fmac_f32_e32 v0, v83, v81
	v_div_fixup_f32 v60, v79, v84, v60
	v_div_fixup_f32 v59, v78, v84, v59
	v_fma_f32 v83, -v87, v85, v91
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s8, v76, v84, v76
	v_fma_f32 v65, -v82, v0, v65
	v_fma_f32 v79, -v93, v80, 1.0
	v_div_scale_f32 v82, null, v84, v84, v70
	v_fmac_f32_e32 v85, v83, v92
	v_mul_f32_e32 v78, v89, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s9, v68, v84, v68
	v_div_fmas_f32 v0, v65, v81, v0
	v_fma_f32 v65, -v87, v85, v91
	v_fma_f32 v81, -v86, v78, v89
	v_div_scale_f32 v87, null, v84, v84, v71
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v82, v79, 1.0
	v_fmac_f32_e32 v78, v81, v88
	v_rcp_f32_e32 v81, v87
	v_div_fmas_f32 v65, v65, v92, v85
	v_mul_f32_e32 v85, v83, v80
	v_div_fixup_f32 v62, v0, v84, v62
	v_fma_f32 v0, -v86, v78, v89
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v90, null, v84, v84, v74
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v63, v65, v84, v63
	v_fma_f32 v65, -v93, v85, v83
	v_div_scale_f32 v86, s10, v70, v84, v70
	v_fma_f32 v89, -v87, v81, 1.0
	v_div_fmas_f32 v0, v0, v88, v78
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v91, null, v84, v84, v75
	v_dual_fmac_f32 v85, v65, v80 :: v_dual_mul_f32 v78, v86, v79
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, s8, v71, v84, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v92, v91
	v_div_fixup_f32 v65, v0, v84, v76
	v_fma_f32 v0, -v93, v85, v83
	v_fma_f32 v76, -v82, v78, v86
	v_mul_f32_e32 v83, v89, v81
	v_fma_f32 v93, -v90, v88, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v0, v0, v80, v85
	v_fmac_f32_e32 v78, v76, v79
	v_fma_f32 v76, -v87, v83, v89
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v80, s9, v74, v84, v74
	v_fma_f32 v85, -v91, v92, 1.0
	v_div_fixup_f32 v68, v0, v84, v68
	v_fma_f32 v0, -v82, v78, v86
	v_fmac_f32_e32 v83, v76, v81
	v_mul_f32_e32 v76, v80, v88
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v77, v77, v73
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v82, s11, v75, v84, v75
	v_div_fmas_f32 v0, v0, v79, v78
	v_fma_f32 v78, -v87, v83, v89
	v_fma_f32 v79, -v90, v76, v80
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v77, v77, v72
	v_mul_f32_e32 v87, v82, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v88
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v89
	v_div_fmas_f32 v78, v78, v81, v83
	v_fma_f32 v81, -v91, v87, v82
	v_div_fixup_f32 v70, v0, v84, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v85, v86, 1.0
	v_fma_f32 v0, -v90, v76, v80
	v_div_fixup_f32 v71, v78, v84, v71
	v_fmac_f32_e32 v87, v81, v92
	v_div_scale_f32 v78, s8, v73, v77, v73
	v_fmac_f32_e32 v86, v83, v86
	v_fma_f32 v80, -v89, v79, 1.0
	v_div_scale_f32 v81, null, v77, v77, v67
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, s9, v72, v77, v72
	v_div_fmas_f32 v0, v0, v88, v76
	v_fma_f32 v76, -v91, v87, v82
	v_dual_mul_f32 v82, v78, v86 :: v_dual_fmac_f32 v79, v80, v79
	v_rcp_f32_e32 v80, v81
	v_div_scale_f32 v88, null, v77, v77, v66
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v79
	v_div_fmas_f32 v76, v76, v92, v87
	v_fma_f32 v87, -v85, v82, v78
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v74, v0, v84, v74
	v_fma_f32 v0, -v89, v90, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v81, v80, 1.0
	v_div_fixup_f32 v75, v76, v84, v75
	v_fmac_f32_e32 v82, v87, v86
	v_div_scale_f32 v84, null, v77, v77, v64
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v76, s10, v67, v77, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v88, v92, 1.0
	v_fma_f32 v78, -v85, v82, v78
	v_fmac_f32_e32 v90, v0, v79
	v_rcp_f32_e32 v85, v84
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v76, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s11, v66, v77, v66
	v_div_fmas_f32 v78, v78, v86, v82
	v_fma_f32 v82, -v89, v90, v83
	v_div_scale_f32 v91, null, v77, v77, v61
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v81, v0, v76
	v_mul_f32_e32 v86, v87, v92
	v_fma_f32 v89, -v84, v85, 1.0
	v_div_fmas_f32 v79, v82, v79, v90
	v_rcp_f32_e32 v82, v91
	v_fmac_f32_e32 v0, v83, v80
	v_fma_f32 v83, -v88, v86, v87
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v64, v77, v64
	v_div_fixup_f32 v73, v78, v77, v73
	v_div_fixup_f32 v72, v79, v77, v72
	v_fma_f32 v76, -v81, v0, v76
	v_fmac_f32_e32 v86, v83, v92
	v_mul_f32_e32 v78, v89, v85
	v_fma_f32 v79, -v91, v82, 1.0
	v_div_scale_f32 v81, null, v77, v77, v58
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s9, v61, v77, v61
	v_div_fmas_f32 v0, v76, v80, v0
	v_fma_f32 v76, -v88, v86, v87
	v_fma_f32 v80, -v84, v78, v89
	v_fmac_f32_e32 v82, v79, v82
	v_rcp_f32_e32 v79, v81
	v_div_scale_f32 v87, null, v77, v77, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v67, v0, v77, v67
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v92, v86
	v_mul_f32_e32 v86, v83, v82
	v_fma_f32 v0, -v84, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v79, 1.0
	v_div_scale_f32 v89, null, v77, v77, v56
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v76, v77, v66
	v_fma_f32 v76, -v91, v86, v83
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v84, s10, v58, v77, v58
	v_fma_f32 v88, -v87, v80, 1.0
	v_div_fmas_f32 v0, v0, v85, v78
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v86, v76, v82
	v_mul_f32_e32 v76, v84, v79
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v85, s8, v57, v77, v57
	v_div_scale_f32 v88, null, v77, v77, v55
	v_div_fixup_f32 v64, v0, v77, v64
	v_fma_f32 v0, -v91, v86, v83
	v_fma_f32 v83, -v81, v76, v84
	v_mul_f32_e32 v90, v85, v80
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v76, v83, v79
	v_div_fmas_f32 v0, v0, v82, v86
	v_fma_f32 v82, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v83, s9, v56, v77, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v61, v0, v77, v61
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v81, v76, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v90, v82, v80 :: v_dual_mul_f32 v81, v83, v78
	v_div_scale_f32 v84, null, v77, v77, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s11, v55, v77, v55
	v_div_fmas_f32 v0, v0, v79, v76
	v_fma_f32 v76, -v87, v90, v85
	v_fma_f32 v79, -v89, v81, v83
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v87, null, v77, v77, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v82, v91 :: v_dual_fmac_f32 v81, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v76, v76, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v88, v86, v82
	v_div_fixup_f32 v58, v0, v77, v58
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v0, -v89, v81, v83
	v_div_fixup_f32 v57, v76, v77, v57
	v_fmac_f32_e32 v86, v80, v91
	v_div_scale_f32 v76, s8, v50, v77, v50
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v80, -v87, v79, 1.0
	v_div_scale_f32 v83, null, v77, v77, v47
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v77, v77, v42
	v_div_fmas_f32 v0, v0, v78, v81
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v81, v76, v85
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v82, s9, v49, v77, v49
	v_div_scale_f32 v88, null, v77, v77, v46
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v84, v81, v76
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fixup_f32 v56, v0, v77, v56
	v_fma_f32 v0, -v87, v89, v82
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v55, v78, v77, v55
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v78, s10, v47, v77, v47
	v_div_scale_f32 v86, null, v77, v77, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v76, -v84, v81, v76
	v_fmac_f32_e32 v89, v0, v79
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v78, v80
	v_rcp_f32_e32 v84, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v46, v77, v46
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v81, -v87, v89, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v83, v0, v78
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v50, v76, v77, v50
	v_div_fmas_f32 v79, v81, v79, v89
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v87, -v86, v84, 1.0
	v_fmac_f32_e32 v0, v82, v80
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v49, v79, v77, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s8, v43, v77, v43
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v81, 1.0
	v_div_scale_f32 v82, null, v69, v69, v41
	v_fma_f32 v76, -v83, v0, v78
	v_mul_f32_e32 v78, v87, v84
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v83, s9, v42, v77, v42
	v_div_fmas_f32 v0, v76, v80, v0
	v_fma_f32 v76, -v88, v85, v90
	v_fma_f32 v80, -v86, v78, v87
	v_div_scale_f32 v88, null, v69, v69, v40
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v47, v0, v77, v47
	v_fmac_f32_e32 v78, v80, v84
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v76, v76, v91, v85
	v_mul_f32_e32 v85, v83, v81
	v_fma_f32 v0, -v86, v78, v87
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v69, v69, v39
	v_div_fixup_f32 v46, v76, v77, v46
	v_fma_f32 v76, -v92, v85, v83
	v_div_scale_f32 v86, s10, v41, v69, v41
	v_fma_f32 v87, -v88, v80, 1.0
	v_div_fmas_f32 v0, v0, v84, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v76, v81 :: v_dual_mul_f32 v76, v86, v79
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v84, s8, v40, v69, v40
	v_div_scale_f32 v87, null, v69, v69, v38
	v_div_fixup_f32 v43, v0, v77, v43
	v_fma_f32 v0, -v92, v85, v83
	v_fma_f32 v83, -v82, v76, v86
	v_mul_f32_e32 v90, v84, v80
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v76, v83, v79
	v_div_fmas_f32 v0, v0, v81, v85
	v_fma_f32 v81, -v88, v90, v84
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v83, s9, v39, v69, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v0, v77, v42
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v0, -v82, v76, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v90, v81, v80 :: v_dual_mul_f32 v77, v83, v78
	v_div_scale_f32 v82, null, v69, v69, v37
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s11, v38, v69, v38
	v_div_fmas_f32 v0, v0, v79, v76
	v_fma_f32 v76, -v88, v90, v84
	v_fma_f32 v79, -v89, v77, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v69, v69, v36
	v_mul_f32_e32 v85, v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v76, v76, v80, v90
	v_fma_f32 v80, -v87, v85, v81
	v_div_fixup_f32 v41, v0, v69, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v84, 1.0
	v_fma_f32 v0, -v89, v77, v83
	v_div_fixup_f32 v40, v76, v69, v40
	v_fmac_f32_e32 v85, v80, v91
	v_div_scale_f32 v76, s8, v37, v69, v37
	v_fmac_f32_e32 v84, v88, v84
	v_fma_f32 v80, -v86, v79, 1.0
	v_div_scale_f32 v83, null, v69, v69, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v77
	v_fma_f32 v77, -v87, v85, v81
	v_mul_f32_e32 v78, v76, v84
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s9, v36, v69, v36
	v_div_scale_f32 v87, null, v69, v69, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v77, v77, v91, v85
	v_fma_f32 v85, -v82, v78, v76
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v39, v0, v69, v39
	v_fma_f32 v0, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v84
	v_div_scale_f32 v85, null, v69, v69, v33
	v_div_fixup_f32 v38, v77, v69, v38
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v77, s10, v35, v69, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v76, -v82, v78, v76
	v_fmac_f32_e32 v88, v0, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v77, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v34, v69, v34
	v_div_fmas_f32 v76, v76, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v69, v69, v32
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v83, v0, v77
	v_mul_f32_e32 v84, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v0, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s8, v33, v69, v33
	v_div_fixup_f32 v37, v76, v69, v37
	v_div_fixup_f32 v36, v78, v69, v36
	v_fma_f32 v76, -v83, v0, v77
	v_fmac_f32_e32 v84, v81, v90
	v_mul_f32_e32 v77, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v69, v69, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s9, v32, v69, v32
	v_div_fmas_f32 v0, v76, v80, v0
	v_fma_f32 v76, -v87, v84, v89
	v_fma_f32 v80, -v85, v77, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v69, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v35, v0, v69, v35
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v90, v84
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v0, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v76, v69, v34
	v_fma_f32 v76, -v91, v84, v83
	v_div_scale_f32 v85, s10, v31, v69, v31
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v69, v69, v29
	v_div_fmas_f32 v0, v0, v82, v77
	v_fmac_f32_e32 v84, v76, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v86, v80
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v69, v69, v28
	v_mul_f32_e32 v76, v85, v78
	v_div_scale_f32 v82, s8, v30, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v0, v0, v69, v33
	v_fma_f32 v33, -v91, v84, v83
	v_fma_f32 v83, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v33, v79, v84
	v_fmac_f32_e32 v76, v83, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s9, v29, v69, v29
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v32, v33, v69, v32
	v_fma_f32 v33, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v77 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v69, v69, v27
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, s11, v28, v69, v28
	v_div_fmas_f32 v33, v33, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v69, v69, v26
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v31, v33, v69, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v33, -v88, v79, v83
	v_div_fixup_f32 v30, v76, v69, v30
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v76, s8, v27, v69, v27
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v44, v44, v24
	v_div_fmas_f32 v33, v33, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v44, v44, v25
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s9, v26, v69, v26
	v_div_fmas_f32 v77, v77, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v29, v33, v69, v29
	v_div_fixup_f32 v28, v77, v69, v28
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v33, -v87, v86, v81
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v44, v44, v22
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v44, v44, v23
	v_fmac_f32_e32 v86, v33, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v76, v76, v82, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v33, s10, v25, v44, v25
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v89, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v33, v83
	v_div_scale_f32 v82, s8, v24, v44, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v89, v77
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v33
	v_mul_f32_e32 v91, v82, v77
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s11, v23, v44, v23
	v_div_fixup_f32 v27, v76, v69, v27
	v_div_fixup_f32 v26, v78, v69, v26
	v_div_scale_f32 v78, null, v44, v44, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v87, v85 :: v_dual_fmac_f32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v69, -v84, v86, v87
	v_fma_f32 v33, -v80, v81, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_fmac_f32 v92, v76, v92
	v_div_scale_f32 v76, s9, v22, v44, v22
	v_fmac_f32_e32 v86, v69, v85
	v_rcp_f32_e32 v69, v78
	v_div_fmas_f32 v33, v33, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_mul_f32_e32 v80, v76, v92
	v_div_scale_f32 v81, null, v44, v44, v20
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v33, v44, v25
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v78, v69, 1.0
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v24, v77, v44, v24
	v_fmac_f32_e32 v69, v82, v69
	v_div_scale_f32 v82, s8, v21, v44, v21
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v33, v82, v69
	v_fma_f32 v77, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	v_div_fixup_f32 v23, v79, v44, v23
	v_div_scale_f32 v79, null, v44, v44, v19
	v_fma_f32 v84, -v78, v33, v82
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s10, v20, v44, v20
	v_div_fmas_f32 v76, v76, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v84, v69
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v76, v44, v22
	v_fma_f32 v76, -v78, v33, v82
	v_div_scale_f32 v84, null, v44, v44, v18
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v76, v69, v33
	v_div_scale_f32 v69, null, v44, v44, v17
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v69
	v_div_scale_f32 v76, s8, v19, v44, v19
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v44, v44, v16
	v_div_fixup_f32 v21, v33, v44, v21
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v69, v78, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v33, v86
	v_div_scale_f32 v33, s9, v18, v44, v18
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v44, v44, v13
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v33, v86
	v_div_scale_f32 v89, s10, v17, v44, v17
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v33
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v16, v44, v16
	v_div_fixup_f32 v20, v77, v44, v20
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v69, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v33, -v84, v83, v33
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v13, v44, v13
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v69, -v69, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	v_div_scale_f32 v81, null, v44, v44, v6
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v76, v44, v19
	v_div_fmas_f32 v33, v33, v86, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v69, v69, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v18, v33, v44, v18
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v69, v44, v17
	v_div_fmas_f32 v78, v78, v88, v79
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_scale_f32 v69, null, v44, v44, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v87, v77, v80
	v_div_fixup_f32 v16, v78, v44, v16
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v44, v44, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v91, v77
	v_div_scale_f32 v79, vcc_lo, v6, v44, v6
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v77, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v33, v44, v13
	v_mul_f32_e32 v84, v79, v83
	v_div_scale_f32 v78, null, v44, v44, v7
	v_div_scale_f32 v85, null, v44, v44, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v84, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v76, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v69, v77, 1.0
	v_rcp_f32_e32 v82, v78
	v_fmac_f32_e32 v84, v88, v83
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s9, v8, v44, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v77, v33, v77
	v_div_scale_f32 v33, s8, v9, v44, v9
	v_mul_f32_e32 v92, v86, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	v_div_fixup_f32 v6, v79, v44, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v82, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v96, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v30
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v67, 15, v96
	v_cvt_i32_f32_e32 v99, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v81, v80
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v7, v44, v7
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v33, v77
	v_div_scale_f32 v91, s11, v4, v44, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v89, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v88, -v69, v90, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_cvt_i32_f32_e32 v98, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v33, -v69, v90, v33
	v_fma_f32 v69, -v85, v94, v91
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v33, v77, v90
	v_fmac_f32_e32 v94, v69, v87
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v78, v93, v89
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v9, v33, v44, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v45, v51
	v_rndne_f32_e32 v51, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v59
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v33
	v_and_b32_e32 v33, 15, v61
	v_and_b32_e32 v61, 15, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v69, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v8, v76, v44, v8
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v69, v44, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v77, v44, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v48
	v_rndne_f32_e32 v48, v52
	v_rndne_f32_e32 v52, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v76, v39
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v68, v71
	v_rndne_f32_e32 v69, v74
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v73, v42
	v_cvt_i32_f32_e32 v74, v41
	v_cvt_i32_f32_e32 v85, v29
	v_cvt_i32_f32_e32 v97, v17
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v17, 15, v52
	v_and_b32_e32 v29, 15, v72
	v_and_b32_e32 v41, 15, v46
	v_and_b32_e32 v46, 15, v76
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v109
	v_and_b32_e32 v76, 16, v109
	v_lshlrev_b32_e32 v72, 4, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v87, v27
	v_and_b32_e32 v27, 15, v70
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v73, 6, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v72, v15
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v15, 6, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v75, v40
	v_cvt_i32_f32_e32 v77, v38
	v_cvt_i32_f32_e32 v89, v25
	v_cvt_i32_f32_e32 v91, v23
	v_cvt_i32_f32_e32 v92, v22
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v73
	v_and_or_b32 v11, 0x1b00, v15, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v82, v32
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v80, v35
	v_cvt_i32_f32_e32 v81, v34
	v_cvt_i32_f32_e32 v93, v21
	v_cvt_i32_f32_e32 v95, v19
	v_cvt_i32_f32_e32 v100, v9
	v_cvt_i32_f32_e32 v101, v8
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v44
	v_and_b32_e32 v8, 15, v45
	v_and_b32_e32 v9, 15, v48
	v_and_b32_e32 v16, 15, v51
	v_and_b32_e32 v18, 15, v53
	v_and_b32_e32 v19, 15, v54
	v_and_b32_e32 v21, 15, v60
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v23, 15, v63
	v_and_b32_e32 v28, 15, v71
	v_and_b32_e32 v31, 15, v66
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v34, 15, v58
	v_and_b32_e32 v35, 15, v57
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v44, 15, v74
	v_and_b32_e32 v45, 15, v75
	v_and_b32_e32 v47, 15, v77
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v104, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v37
	v_cvt_i32_f32_e32 v79, v36
	v_cvt_i32_f32_e32 v88, v26
	v_cvt_i32_f32_e32 v94, v20
	v_and_b32_e32 v20, 15, v59
	v_and_b32_e32 v24, 15, v65
	v_and_b32_e32 v25, 15, v68
	v_and_b32_e32 v26, 15, v69
	v_and_b32_e32 v36, 15, v56
	v_and_b32_e32 v37, 15, v55
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[68:71], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[16:19]
	ds_store_b128 v0, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[24:27], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v4
	ds_load_b128 v[40:43], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v78
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v4
	ds_load_b128 v[56:59], v4 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v25, v42, 4, v34
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v0, v20, 4, v6
	v_lshl_or_b32 v6, v21, 4, v7
	v_lshl_or_b32 v7, v22, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s24, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v4
	ds_load_b128 v[72:75], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s31, 7, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v13, v23, 4, v9
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v36, 4, v28
	v_lshl_or_b32 v20, v37, 4, v29
	v_lshl_or_b32 v21, v38, 4, v30
	v_lshl_or_b32 v22, v39, 4, v31
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v26, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v0.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v16.l
	v_and_b16 v7.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v52, 4, v44
	v_lshl_or_b32 v28, v53, 4, v45
	v_lshl_or_b32 v29, v54, 4, v46
	v_lshl_or_b32 v30, v55, 4, v47
	v_lshl_or_b32 v31, v56, 4, v48
	v_lshl_or_b32 v32, v57, 4, v49
	v_lshl_or_b32 v33, v58, 4, v50
	v_lshl_or_b32 v34, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	v_lshlrev_b16 v6.h, 8, v24.l
	v_and_b16 v7.l, 0xff, v23.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	v_lshl_or_b32 v41, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v0, s[8:11], 0 offen
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v6.l, 0xff, v33.l
	v_lshlrev_b16 v6.h, 8, v32.l
	v_and_b16 v7.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v68, 4, v60
	v_lshl_or_b32 v36, v69, 4, v61
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v38, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v0, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v43.l
	v_and_b16 v6.l, 0xff, v41.l
	v_lshlrev_b16 v6.h, 8, v40.l
	v_and_b16 v7.l, 0xff, v39.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	buffer_store_b64 v[8:9], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 4, v109
	v_lshrrev_b32_e32 v6, 2, v76
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 2, v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v14.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v42
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v0, v6, v0, v42
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v109
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp47:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 408
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 408
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19692
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 408
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 408
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 101
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
