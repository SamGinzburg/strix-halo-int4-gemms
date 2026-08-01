	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v102, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s5, s41, s4
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v102
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
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
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v103, 15, v102
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v104, 0xf0, v102
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s17, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[0:1]
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v0, s34, v103
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v60, 0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[2:3]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v2, 32, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[4:5]
	v_or_b32_e32 v4, 0x7f0, v102
	v_or_b32_e32 v5, 0xb00, v102
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[6:7]
	v_or_b32_e32 v6, 0xf00, v102
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v102, off offset:76
	v_mul_lo_u32 v0, v1, s40
	v_or_b32_e32 v7, 0x1300, v102
	v_or_b32_e32 v8, 0x1700, v102
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v10, s41, 8, v102
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s16, s33
	v_or_b32_e32 v13, 0x1b00, v102
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v16, 1, v102
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v103, off offset:80
	v_mul_lo_u32 v0, v2, s40
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s4, s17, v[10:11]
	v_or_b32_e32 v1, 0x700, v102
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v12, 28, v16
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v66, 0, v103
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v104, off offset:84
	v_mul_lo_u32 v0, v3, s40
	v_or_b32_e32 v3, 0x3f0, v102
	v_mov_b32_e32 v119, 0
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v115, 0, v1
	v_mov_b32_e32 v117, 0
	v_lshrrev_b32_e32 v2, 1, v102
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[16:17], null, s33, 9, v[11:12]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v102
	v_mov_b32_e32 v111, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[17:18], null, s33, 10, v[11:12]
	v_mad_u64_u32 v[18:19], null, s33, 11, v[11:12]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v114, 0, v0
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_mov_b32_e32 v107, 0
	v_mad_u64_u32 v[19:20], null, s33, 12, v[11:12]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v0, 0, v4
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_mad_u64_u32 v[20:21], null, s33, 13, v[11:12]
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v0, 0, v5
	v_mad_u64_u32 v[21:22], null, s33, 14, v[11:12]
	v_mad_u64_u32 v[22:23], null, s33, 15, v[11:12]
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_mad_u64_u32 v[23:24], null, s33, 17, v[11:12]
	v_mad_u64_u32 v[24:25], null, s33, 18, v[11:12]
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v76, v66, v2
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v2, 5, v102
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_mad_u64_u32 v[25:26], null, s33, 19, v[11:12]
	v_mad_u64_u32 v[26:27], null, s33, 20, v[11:12]
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	v_mad_u64_u32 v[27:28], null, s33, 21, v[11:12]
	v_mad_u64_u32 v[28:29], null, s33, 22, v[11:12]
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, 3, v[11:12]
	v_mad_u64_u32 v[29:30], null, s33, 23, v[11:12]
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v15, 2, v104
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v2, 32, v2
	scratch_store_b64 off, v[0:1], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, 5, v[11:12]
	v_mad_u64_u32 v[30:31], null, s33, 24, v[11:12]
	v_mad_u64_u32 v[31:32], null, s33, 25, v[11:12]
	v_mad_u64_u32 v[32:33], null, s33, 26, v[11:12]
	scratch_store_b64 off, v[0:1], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, 6, v[11:12]
	v_mad_u64_u32 v[33:34], null, s33, 27, v[11:12]
	v_mad_u64_u32 v[34:35], null, s33, 28, v[11:12]
	v_or_b32_e32 v14, 0x1f00, v102
	v_add3_u32 v2, 0, v15, v2
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v15, 1, v104
	v_mad_u64_u32 v[35:36], null, s33, 29, v[11:12]
	v_mad_u64_u32 v[36:37], null, s33, 30, v[11:12]
	scratch_store_b64 off, v[0:1], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, 7, v[11:12]
	v_mad_u64_u32 v[37:38], null, s33, 31, v[11:12]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v61, 6, v102
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v113, 0, v102
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v128, 0, v14
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v134, v2, v12
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v135, 0, v15
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s3, s7
	s_mov_b32 s16, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s43, s40, s17
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s44, s16
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[0:1], off offset:68 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[39:40], off, off offset:44
	scratch_load_b64 v[41:42], off, off offset:60
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s45, s44, 5
	scratch_load_b64 v[42:43], off, off offset:68 ; 8-byte Folded Reload
	v_or_b32_e32 v0, s45, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v5, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_or_b32_e32 v0, 8, v61
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v7, 0x80000000, v0, s2
	v_or_b32_e32 v0, 12, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v12, 0x80000000, v0, s2
	v_or_b32_e32 v0, 16, v61
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v13, 0x80000000, v0, s2
	v_or_b32_e32 v0, 20, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v14, 0x80000000, v0, s2
	v_or_b32_e32 v0, 24, v61
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v15, 0x80000000, v0, s2
	v_or_b32_e32 v0, 28, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	s_mul_i32 s45, s45, s33
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0x80000000, v0, s2
	v_add_nc_u32_e32 v0, s45, v11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v1, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v0, s33, v11
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v2, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v3, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s45, v39
	scratch_load_b64 v[39:40], off, off offset:52 ; 8-byte Folded Reload
	buffer_load_u8 v4, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 2, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v8, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v39
	v_add_nc_u32_e32 v39, s45, v28
	s_clause 0x1
	buffer_load_u8 v40, v0, s[8:11], 0 offen
	buffer_load_u8 v63, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v41
	v_add_nc_u32_e32 v39, s45, v29
	s_clause 0x1
	buffer_load_u8 v41, v0, s[8:11], 0 offen
	buffer_load_u8 v64, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v42
	v_add_nc_u32_e32 v39, s45, v30
	s_clause 0x1
	buffer_load_u8 v42, v0, s[8:11], 0 offen
	buffer_load_u8 v116, v39, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 3, v11
	v_add_nc_u32_e32 v39, s45, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v118, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v32
	buffer_load_u8 v43, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v16
	buffer_load_u8 v120, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v33
	buffer_load_u8 v48, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v17
	buffer_load_u8 v122, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v34
	buffer_load_u8 v49, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v18
	buffer_load_u8 v124, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v35
	buffer_load_u8 v149, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v19
	buffer_load_u8 v126, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v36
	buffer_load_u8 v57, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v20
	buffer_load_u8 v127, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v39, s45, v37
	buffer_load_u8 v65, v39, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	buffer_load_u8 v13, v13, s[28:31], 0 offen
	buffer_load_u8 v14, v14, s[28:31], 0 offen
	buffer_load_u8 v15, v15, s[28:31], 0 offen
	buffer_load_u8 v38, v38, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v150, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v21
	buffer_load_u8 v239, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v22
	buffer_load_u8 v245, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 4, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v254, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v23
	buffer_load_u8 v255, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v24
	buffer_load_u8 v59, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v25
	buffer_load_u8 v62, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v26
	buffer_load_u8 v58, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v27
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s45, s44, s43
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s45, s45, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(16)
	ds_store_b8 v113, v5
	s_waitcnt vmcnt(15)
	ds_store_b8 v113, v6 offset:256
	s_waitcnt vmcnt(14)
	ds_store_b8 v113, v7 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v114, v12
	s_waitcnt vmcnt(12)
	ds_store_b8 v113, v13 offset:1024
	s_waitcnt vmcnt(11)
	ds_store_b8 v113, v14 offset:1280
	s_waitcnt vmcnt(10)
	ds_store_b8 v113, v15 offset:1536
	s_waitcnt vmcnt(9)
	ds_store_b8 v115, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v5, v66 offset:320
	ds_load_u8 v6, v66 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v66 offset:448
	ds_load_u8 v7, v66 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v66 offset:64
	ds_load_u8 v12, v66
	v_lshl_or_b32 v39, v6, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v12, v7, 0xc0c0004
	ds_load_u8 v12, v66 offset:192
	ds_load_u8 v13, v66 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v12, 16, v7
	scratch_load_b32 v12, off, off offset:16 ; 4-byte Folded Reload
	ds_load_u8 v246, v66 offset:704
	ds_load_u8 v247, v66 offset:640
	ds_load_u8 v248, v66 offset:576
	ds_load_u8 v249, v66 offset:512
	ds_load_u8 v250, v66 offset:960
	ds_load_u8 v251, v66 offset:896
	ds_load_u8 v252, v66 offset:832
	ds_load_u8 v253, v66 offset:768
	ds_load_u8 v44, v66 offset:1216
	ds_load_u8 v45, v66 offset:1152
	ds_load_u8 v50, v66 offset:1088
	ds_load_u8 v51, v66 offset:1024
	ds_load_u8 v55, v66 offset:1472
	ds_load_u8 v56, v66 offset:1408
	ds_load_u8 v151, v66 offset:1344
	ds_load_u8 v244, v66 offset:1280
	ds_load_u8 v5, v66 offset:1728
	ds_load_u8 v6, v66 offset:1664
	ds_load_u8 v7, v66 offset:1600
	ds_load_u8 v46, v66 offset:1536
	ds_load_u8 v47, v66 offset:1984
	ds_load_u8 v52, v66 offset:1920
	ds_load_u8 v53, v66 offset:1856
	ds_load_u8 v54, v66 offset:1792
	ds_load_u8 v144, v66 offset:208
	ds_load_u8 v145, v66 offset:144
	ds_load_u8 v146, v66 offset:80
	ds_load_u8 v147, v66 offset:464
	ds_load_u8 v148, v66 offset:400
	ds_load_u8 v173, v66 offset:336
	ds_load_u8 v176, v66 offset:272
	ds_load_u8 v162, v66 offset:720
	ds_load_u8 v163, v66 offset:656
	ds_load_u8 v165, v66 offset:592
	ds_load_u8 v167, v66 offset:528
	ds_load_u8 v171, v66 offset:976
	ds_load_u8 v174, v66 offset:912
	ds_load_u8 v179, v66 offset:848
	ds_load_u8 v182, v66 offset:784
	ds_load_u8 v164, v66 offset:1232
	ds_load_u8 v166, v66 offset:1168
	ds_load_u8 v169, v66 offset:1104
	ds_load_u8 v172, v66 offset:1040
	ds_load_u8 v177, v66 offset:1488
	ds_load_u8 v180, v66 offset:1424
	ds_load_u8 v185, v66 offset:1360
	ds_load_u8 v188, v66 offset:1296
	ds_load_u8 v168, v66 offset:1744
	ds_load_u8 v170, v66 offset:1680
	ds_load_u8 v175, v66 offset:1616
	ds_load_u8 v178, v66 offset:1552
	ds_load_u8 v183, v66 offset:2000
	ds_load_u8 v186, v66 offset:1936
	ds_load_u8 v191, v66 offset:1872
	ds_load_u8 v194, v66 offset:1808
	ds_load_u8 v152, v66 offset:224
	ds_load_u8 v153, v66 offset:160
	ds_load_u8 v154, v66 offset:96
	ds_load_u8 v155, v66 offset:480
	ds_load_u8 v156, v66 offset:416
	ds_load_u8 v199, v66 offset:352
	ds_load_u8 v202, v66 offset:288
	ds_load_u8 v181, v66 offset:736
	ds_load_u8 v184, v66 offset:672
	ds_load_u8 v189, v66 offset:608
	ds_load_u8 v192, v66 offset:544
	ds_load_u8 v197, v66 offset:992
	ds_load_u8 v200, v66 offset:928
	ds_load_u8 v205, v66 offset:864
	ds_load_u8 v207, v66 offset:800
	ds_load_u8 v187, v66 offset:1248
	ds_load_u8 v190, v66 offset:1184
	ds_load_u8 v195, v66 offset:1120
	ds_load_u8 v198, v66 offset:1056
	ds_load_u8 v203, v66 offset:1504
	ds_load_u8 v206, v66 offset:1440
	ds_load_u8 v209, v66 offset:1376
	ds_load_u8 v211, v66 offset:1312
	ds_load_u8 v193, v66 offset:1760
	ds_load_u8 v196, v66 offset:1696
	ds_load_u8 v201, v66 offset:1632
	ds_load_u8 v204, v66 offset:1568
	ds_load_u8 v208, v66 offset:2016
	ds_load_u8 v210, v66 offset:1952
	ds_load_u8 v212, v66 offset:1888
	ds_load_u8 v213, v66 offset:1824
	ds_load_u8 v157, v66 offset:240
	ds_load_u8 v158, v66 offset:176
	ds_load_u8 v159, v66 offset:112
	ds_load_u8 v160, v66 offset:496
	ds_load_u8 v161, v66 offset:432
	ds_load_u8 v214, v66 offset:368
	ds_load_u8 v215, v66 offset:304
	ds_load_u8 v238, v66 offset:16
	ds_load_u8 v223, v66 offset:32
	ds_load_u8 v217, v66 offset:48
	s_waitcnt vmcnt(0)
	ds_load_u8 v216, v12
	ds_load_u8 v218, v66 offset:944
	ds_load_u8 v219, v66 offset:880
	ds_load_u8 v220, v66 offset:816
	ds_load_u8 v221, v66 offset:752
	ds_load_u8 v222, v66 offset:688
	ds_load_u8 v224, v66 offset:624
	ds_load_u8 v225, v66 offset:560
	ds_load_u8 v226, v66 offset:1264
	ds_load_u8 v227, v66 offset:1200
	ds_load_u8 v228, v66 offset:1136
	ds_load_u8 v229, v66 offset:1072
	ds_load_u8 v230, v66 offset:1520
	ds_load_u8 v231, v66 offset:1456
	ds_load_u8 v232, v66 offset:1392
	ds_load_u8 v233, v66 offset:1328
	scratch_load_b32 v12, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v159, v217, v159, 0xc0c0004
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v234, v12
	ds_load_u8 v235, v66 offset:1968
	ds_load_u8 v236, v66 offset:1904
	ds_load_u8 v237, v66 offset:1840
	ds_load_u8 v240, v66 offset:1776
	ds_load_u8 v241, v66 offset:1712
	ds_load_u8 v242, v66 offset:1648
	ds_load_u8 v243, v66 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v113, v1
	ds_store_b8 v113, v2 offset:256
	ds_store_b8 v113, v3 offset:512
	ds_store_b8 v114, v4
	ds_store_b8 v113, v8 offset:1024
	ds_store_b8 v113, v40 offset:1280
	ds_store_b8 v113, v41 offset:1536
	ds_store_b8 v115, v42
	ds_store_b8 v113, v43 offset:2048
	ds_store_b8 v113, v48 offset:2304
	ds_store_b8 v113, v49 offset:2560
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v158, v222, v221, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v149
	ds_store_b8 v113, v57 offset:3072
	ds_store_b8 v113, v150 offset:3328
	ds_store_b8 v113, v239 offset:3584
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v245
	ds_store_b8 v113, v254 offset:4096
	ds_store_b8 v113, v255 offset:4352
	ds_store_b8 v113, v59 offset:4608
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v62
	ds_store_b8 v113, v58 offset:5120
	ds_store_b8 v113, v0 offset:5376
	ds_store_b8 v113, v63 offset:5632
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v62, v238, v146, 0xc0c0004
	v_perm_b32 v63, v145, v144, 0xc0c0004
	v_perm_b32 v144, v223, v154, 0xc0c0004
	v_perm_b32 v146, v153, v152, 0xc0c0004
	v_perm_b32 v152, v190, v187, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v64
	ds_store_b8 v113, v116 offset:6144
	ds_store_b8 v113, v118 offset:6400
	ds_store_b8 v113, v120 offset:6656
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v64, v167, v165, 0xc0c0004
	v_perm_b32 v116, v172, v169, 0xc0c0004
	v_perm_b32 v118, v166, v164, 0xc0c0004
	v_perm_b32 v120, v170, v168, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v122
	ds_store_b8 v113, v124 offset:7168
	ds_store_b8 v113, v126 offset:7424
	ds_store_b8 v113, v127 offset:7680
	ds_store_b8 v128, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v76 offset:1280
	ds_load_u8 v1, v76 offset:1024
	v_perm_b32 v65, v163, v162, 0xc0c0004
	v_perm_b32 v124, v202, v199, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v76 offset:1792
	ds_load_u8 v2, v76 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:256
	ds_load_u8 v3, v76
	v_lshl_or_b32 v41, v1, 16, v0
	v_perm_b32 v0, v253, v252, 0xc0c0004
	v_perm_b32 v1, v251, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v1, 16, v0
	ds_load_u8 v0, v76 offset:3328
	ds_load_u8 v1, v76 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v76 offset:768
	ds_load_u8 v4, v76 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v3, 16, v2
	v_perm_b32 v2, v249, v248, 0xc0c0004
	v_perm_b32 v3, v247, v246, 0xc0c0004
	v_lshl_or_b32 v48, v3, 16, v2
	ds_load_u8 v1, v76 offset:3840
	ds_load_u8 v2, v76 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:2304
	ds_load_u8 v3, v76 offset:2048
	v_lshl_or_b32 v43, v1, 16, v0
	v_perm_b32 v0, v244, v151, 0xc0c0004
	v_perm_b32 v1, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v76 offset:2816
	ds_load_u8 v4, v76 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v3, 16, v2
	v_perm_b32 v2, v51, v50, 0xc0c0004
	v_lshl_or_b32 v51, v1, 16, v0
	ds_load_u8 v0, v76 offset:5376
	ds_load_u8 v1, v76 offset:5120
	v_perm_b32 v3, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v3, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v76 offset:5888
	ds_load_u8 v2, v76 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:4352
	ds_load_u8 v3, v76 offset:4096
	v_lshl_or_b32 v45, v1, 16, v0
	v_perm_b32 v0, v54, v53, 0xc0c0004
	v_perm_b32 v1, v52, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v1, 16, v0
	ds_load_u8 v0, v76 offset:7424
	ds_load_u8 v1, v76 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v76 offset:4864
	ds_load_u8 v4, v76 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v2
	v_perm_b32 v2, v46, v7, 0xc0c0004
	v_perm_b32 v3, v6, v5, 0xc0c0004
	v_lshl_or_b32 v52, v3, 16, v2
	ds_load_u8 v1, v76 offset:7936
	ds_load_u8 v2, v76 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:6400
	ds_load_u8 v3, v76 offset:6144
	v_lshl_or_b32 v47, v1, 16, v0
	ds_load_u8 v0, v76 offset:1408
	ds_load_u8 v12, v76 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v76 offset:6912
	ds_load_u8 v4, v76 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	ds_load_u8 v12, v76 offset:1920
	ds_load_u8 v13, v76 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v76 offset:384
	ds_load_u8 v14, v76 offset:128
	v_lshl_or_b32 v46, v3, 16, v2
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_lshl_or_b32 v55, v12, 16, v0
	ds_load_u8 v0, v76 offset:3456
	ds_load_u8 v12, v76 offset:3200
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[40:41], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v76 offset:896
	ds_load_u8 v15, v76 offset:640
	v_wmma_i32_16x16x16_iu4 v[247:254], v[42:43], v[48:49], v[247:254] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[44:45], v[50:51], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[247:254], v[46:47], v[52:53], v[247:254] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v246, v248
	v_cvt_f32_i32_e32 v245, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v244, v250
	v_cvt_f32_i32_e32 v239, v251
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v252
	v_cvt_f32_i32_e32 v150, v253
	v_cvt_f32_i32_e32 v149, v254
	v_cvt_f32_i32_e32 v247, v247
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v54, v14, 16, v13
	ds_load_u8 v12, v76 offset:3968
	ds_load_u8 v13, v76 offset:3712
	v_wmma_i32_16x16x16_iu4 v[248:255], v[54:55], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v76 offset:2432
	ds_load_u8 v14, v76 offset:2176
	v_lshl_or_b32 v57, v12, 16, v0
	ds_load_u8 v0, v76 offset:5504
	ds_load_u8 v12, v76 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v76 offset:2944
	ds_load_u8 v15, v76 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v14, 16, v13
	ds_load_u8 v12, v76 offset:6016
	ds_load_u8 v13, v76 offset:5760
	v_wmma_i32_16x16x16_iu4 v[248:255], v[56:57], v[48:49], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v76 offset:4480
	ds_load_u8 v14, v76 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v13, 0xc0c0004
	ds_load_u8 v13, v76 offset:4992
	ds_load_u8 v15, v76 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v13, 0xc0c0004
	v_lshl_or_b32 v13, v12, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v0, v76 offset:7552
	ds_load_u8 v14, v76 offset:7296
	v_wmma_i32_16x16x16_iu4 v[248:255], v[12:13], v[50:51], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v14, v0, 0xc0c0004
	ds_load_u8 v14, v76 offset:8064
	ds_load_u8 v15, v76 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v76 offset:6528
	ds_load_u8 v58, v76 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v15, 0xc0c0004
	ds_load_u8 v15, v76 offset:7040
	ds_load_u8 v59, v76 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v15, 0xc0c0004
	v_lshl_or_b32 v15, v14, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v14, v59, 16, v58
	v_perm_b32 v58, v148, v147, 0xc0c0004
	v_perm_b32 v148, v184, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[248:255], v[14:15], v[52:53], v[248:255] neg_lo:[1,1,0]
	v_perm_b32 v53, v176, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v252
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v59, v58, 16, v53
	v_lshl_or_b32 v58, v63, 16, v62
	v_perm_b32 v53, v182, v179, 0xc0c0004
	v_perm_b32 v62, v174, v171, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v39, v254
	v_cvt_f32_i32_e32 v52, v248
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[162:169], v[40:41], v[58:59], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v63, v62, 16, v53
	v_lshl_or_b32 v62, v65, 16, v64
	v_perm_b32 v53, v188, v185, 0xc0c0004
	v_perm_b32 v64, v180, v177, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v51, v249
	v_cvt_f32_i32_e32 v50, v250
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[162:169], v[42:43], v[62:63], v[162:169] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v251
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v65, v64, 16, v53
	v_lshl_or_b32 v64, v118, 16, v116
	v_perm_b32 v53, v194, v191, 0xc0c0004
	v_perm_b32 v116, v186, v183, 0xc0c0004
	v_perm_b32 v118, v178, v175, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v38, v253
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[162:169], v[44:45], v[64:65], v[162:169] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v48, v255
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v127, v116, 16, v53
	v_lshl_or_b32 v126, v120, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[46:47], v[126:127], v[162:169] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v175, v163
	v_cvt_f32_i32_e32 v176, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v177, v165
	v_cvt_f32_i32_e32 v145, v166
	v_cvt_f32_i32_e32 v122, v167
	v_cvt_f32_i32_e32 v120, v168
	v_cvt_f32_i32_e32 v118, v169
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[162:169], v[54:55], v[58:59], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[56:57], v[62:63], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[12:13], v[64:65], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[14:15], v[126:127], v[162:169] neg_lo:[1,1,0]
	v_perm_b32 v126, v156, v155, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v162
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v127, v126, 16, v124
	v_lshl_or_b32 v126, v146, 16, v144
	v_perm_b32 v124, v207, v205, 0xc0c0004
	v_perm_b32 v144, v200, v197, 0xc0c0004
	v_perm_b32 v146, v192, v189, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v163
	v_cvt_f32_i32_e32 v64, v164
	v_cvt_f32_i32_e32 v63, v165
	v_cvt_f32_i32_e32 v53, v166
	v_cvt_f32_i32_e32 v58, v167
	v_cvt_f32_i32_e32 v59, v168
	v_cvt_f32_i32_e32 v62, v169
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v147, v144, 16, v124
	v_lshl_or_b32 v146, v148, 16, v146
	v_perm_b32 v124, v211, v209, 0xc0c0004
	v_perm_b32 v144, v206, v203, 0xc0c0004
	v_perm_b32 v148, v198, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[162:169], v[40:41], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v171, v144, 16, v124
	v_lshl_or_b32 v170, v152, 16, v148
	v_perm_b32 v124, v213, v212, 0xc0c0004
	v_perm_b32 v144, v210, v208, 0xc0c0004
	v_perm_b32 v148, v204, v201, 0xc0c0004
	v_perm_b32 v152, v196, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[162:169], v[42:43], v[146:147], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v173, v144, 16, v124
	v_lshl_or_b32 v172, v152, 16, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[44:45], v[170:171], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[46:47], v[172:173], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v178, v162
	v_cvt_f32_i32_e32 v179, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v164
	v_cvt_f32_i32_e32 v181, v165
	v_cvt_f32_i32_e32 v156, v166
	v_cvt_f32_i32_e32 v155, v167
	v_cvt_f32_i32_e32 v154, v168
	v_cvt_f32_i32_e32 v153, v169
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[162:169], v[54:55], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[56:57], v[146:147], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[12:13], v[170:171], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[14:15], v[172:173], v[162:169] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v162
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v162, v215, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v165
	v_cvt_f32_i32_e32 v124, v166
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v165, v157, 16, v159
	v_perm_b32 v157, v225, v224, 0xc0c0004
	v_lshl_or_b32 v166, v160, 16, v162
	v_perm_b32 v159, v220, v219, 0xc0c0004
	v_perm_b32 v160, v218, v216, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v167
	v_cvt_f32_i32_e32 v127, v168
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v167, v158, 16, v157
	v_perm_b32 v157, v233, v232, 0xc0c0004
	v_lshl_or_b32 v168, v160, 16, v159
	v_perm_b32 v158, v231, v230, 0xc0c0004
	v_perm_b32 v159, v229, v228, 0xc0c0004
	v_perm_b32 v160, v227, v226, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v169
	v_cvt_f32_i32_e32 v148, v163
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v170, v158, 16, v157
	v_perm_b32 v157, v243, v242, 0xc0c0004
	v_lshl_or_b32 v169, v160, 16, v159
	v_perm_b32 v158, v241, v240, 0xc0c0004
	v_perm_b32 v159, v237, v236, 0xc0c0004
	v_perm_b32 v160, v235, v234, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v171, v158, 16, v157
	v_lshl_or_b32 v172, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[157:164], v[40:41], v[165:166], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[42:43], v[167:168], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[44:45], v[169:170], v[157:164] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v44, v10, s45, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[46:47], v[171:172], v[157:164] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v173, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v182, v158
	v_cvt_f32_i32_e32 v183, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v184, v160
	v_cvt_f32_i32_e32 v43, v161
	v_cvt_f32_i32_e32 v42, v162
	v_cvt_f32_i32_e32 v41, v163
	v_cvt_f32_i32_e32 v40, v164
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[54:55], v[165:166], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[56:57], v[167:168], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[12:13], v[169:170], v[157:164] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off
	scratch_load_b32 v13, off, off offset:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[14:15], v[171:172], v[157:164] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:8
	scratch_load_b32 v15, off, off offset:12
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v7, v158
	v_cvt_f32_i32_e32 v6, v159
	v_cvt_f32_i32_e32 v5, v160
	v_cvt_f32_i32_e32 v8, v157
	v_cvt_f32_i32_e32 v1, v161
	v_cvt_f32_i32_e32 v3, v163
	v_cvt_f32_i32_e32 v4, v164
	v_cvt_f32_i32_e32 v2, v162
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v12, s44, v12, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, s44, v13, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, s44, v14, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s44, v15, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s44, s44, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v247, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v7, v7, v15
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v134, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v6, v6, v15
	v_mul_f32_e32 v5, v5, v15
	v_mul_f32_e32 v8, v8, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v60, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v246, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v143, v54, v45 :: v_dual_mul_f32 v54, v245, v12
	v_fmac_f32_e32 v142, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v244, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v54, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v174, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v54, v44 :: v_dual_mul_f32 v54, v175, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v176, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v54, v46 :: v_dual_mul_f32 v54, v177, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v54, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v178, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v54, v44 :: v_dual_mul_f32 v54, v179, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v180, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v181, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v54, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v173, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v182, v15
	v_mul_f32_e32 v54, v239, v12
	v_mul_f32_e32 v4, v4, v15
	v_mul_f32_e32 v43, v43, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v42, v15 :: v_dual_fmac_f32 v79, v44, v45
	v_mul_f32_e32 v44, v183, v15
	v_mul_f32_e32 v41, v41, v15
	v_mul_f32_e32 v40, v40, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v44, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v184, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v44, v47
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[44:47], v135 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v140, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v151, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v75, v43, v44 :: v_dual_fmac_f32 v74, v42, v45
	v_dual_fmac_f32 v73, v41, v46 :: v_dual_fmac_f32 v72, v40, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v150, v12
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[40:43], v135 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v149, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v137, v54, v47 :: v_dual_mul_f32 v54, v145, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v111, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v122, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v68, v5, v43 :: v_dual_fmac_f32 v71, v8, v40
	v_fmac_f32_e32 v110, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v120, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v70, v7, v41 :: v_dual_fmac_f32 v69, v6, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v118, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v54, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v156, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v52, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v44, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v51, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v133, v44, v41 :: v_dual_mul_f32 v44, v50, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v0, v12
	v_mul_f32_e32 v6, v38, v12
	v_mul_f32_e32 v7, v39, v12
	v_mul_f32_e32 v8, v48, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v44, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v49, v12
	v_mul_f32_e32 v12, v53, v13
	v_mul_f32_e32 v38, v58, v13
	v_mul_f32_e32 v39, v59, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v44, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v116, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v44, v40 :: v_dual_mul_f32 v44, v65, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v44, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v64, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v105, v44, v42 :: v_dual_mul_f32 v44, v63, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v13, v62, v13 :: v_dual_fmac_f32 v104, v44, v43
	v_mul_f32_e32 v44, v152, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v44, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v148, v14
	v_mul_f32_e32 v54, v155, v14
	v_mul_f32_e32 v40, v124, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v44, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v147, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v94, v54, v45 :: v_dual_mul_f32 v45, v3, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v154, v14
	v_mul_f32_e32 v41, v126, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v44, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v146, v14
	v_mul_f32_e32 v42, v127, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v153, v14
	v_mul_f32_e32 v14, v144, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v44, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v1, v15
	v_mul_f32_e32 v44, v2, v15
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[0:3], v135 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v54, v47
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v130, v5, v0 :: v_dual_fmac_f32 v129, v6, v1
	v_fmac_f32_e32 v125, v7, v2
	v_fmac_f32_e32 v123, v8, v3
	v_dual_fmac_f32 v103, v12, v0 :: v_dual_fmac_f32 v102, v38, v1
	v_dual_fmac_f32 v101, v39, v2 :: v_dual_fmac_f32 v100, v13, v3
	v_fmac_f32_e32 v86, v40, v0
	v_fmac_f32_e32 v84, v41, v1
	v_fmac_f32_e32 v82, v42, v2
	v_fmac_f32_e32 v81, v14, v3
	v_fmac_f32_e32 v67, v43, v0
	v_fmac_f32_e32 v87, v44, v1
	v_fmac_f32_e32 v85, v45, v2
	v_fmac_f32_e32 v83, v4, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v18, v119, v119 :: v_dual_max_f32 v23, v109, v109
	v_max_f32_e32 v22, v110, v110
	v_dual_max_f32 v40, v90, v90 :: v_dual_max_f32 v41, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v111, v111
	v_dual_max_f32 v20, v112, v112 :: v_dual_max_f32 v23, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v29, v103, v103
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v27, v105, v105 :: v_dual_max_f32 v26, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v28, v104, v104 :: v_dual_max_f32 v29, 0, v29
	v_max_f32_e32 v31, v101, v101
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v26, 0, v26
	v_max_f32_e32 v30, v102, v102
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v102, off, off offset:76
	scratch_load_b32 v103, off, off offset:80
	scratch_load_b32 v104, off, off offset:84
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v33, v99, v99
	v_dual_max_f32 v32, v100, v100 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v37, v95, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v39, v93, v93 :: v_dual_max_f32 v36, v96, v96
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v38, v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v90, 0, v40 :: v_dual_max_f32 v93, 0, v39
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v39, v91, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, 0, v38 :: v_dual_max_f32 v38, v92, v92
	v_dual_max_f32 v42, v88, v88 :: v_dual_max_f32 v91, 0, v41
	v_max_f32_e32 v89, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v39, v84, v84 :: v_dual_max_f32 v88, 0, v38
	v_max_f32_e32 v92, 0, v42
	v_dual_max_f32 v38, v86, v86 :: v_dual_max_f32 v41, v81, v81
	v_max_f32_e32 v40, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v42, v80, v80 :: v_dual_max_f32 v81, 0, v39
	v_max_f32_e32 v39, v78, v78
	v_max_f32_e32 v80, 0, v38
	v_max_f32_e32 v84, 0, v41
	v_max_f32_e32 v38, v79, v79
	v_dual_max_f32 v41, v75, v75 :: v_dual_max_f32 v6, v138, v138
	v_dual_max_f32 v7, v137, v137 :: v_dual_max_f32 v82, 0, v40
	v_dual_max_f32 v0, v60, v60 :: v_dual_max_f32 v1, v143, v143
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v95, 0, v41
	v_max_f32_e32 v41, v70, v70
	v_max_f32_e32 v78, 0, v38
	v_max_f32_e32 v38, v73, v73
	v_max_f32_e32 v40, v77, v77
	v_dual_max_f32 v4, v140, v140 :: v_dual_max_f32 v5, v139, v139
	v_max_f32_e32 v8, v136, v136
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v11, v132, v132
	v_dual_max_f32 v10, v133, v133 :: v_dual_max_f32 v79, 0, v39
	v_max_f32_e32 v94, 0, v40
	v_dual_max_f32 v39, v72, v72 :: v_dual_max_f32 v40, v71, v71
	v_max_f32_e32 v86, 0, v42
	v_max_f32_e32 v42, v74, v74
	v_dual_max_f32 v2, v142, v142 :: v_dual_max_f32 v3, v141, v141
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v13, v130, v130 :: v_dual_max_f32 v12, v131, v131
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v10, 0, v10
	v_max_f32_e32 v15, v125, v125
	v_max_f32_e32 v14, v129, v129
	v_dual_max_f32 v34, v98, v98 :: v_dual_max_f32 v35, v97, v97
	v_dual_max_f32 v72, 0, v39 :: v_dual_max_f32 v73, 0, v40
	v_max_f32_e32 v97, 0, v41
	v_dual_max_f32 v39, v67, v67 :: v_dual_max_f32 v96, 0, v42
	v_dual_max_f32 v42, v69, v69 :: v_dual_mul_f32 v45, v0, v0
	v_dual_max_f32 v40, v87, v87 :: v_dual_mul_f32 v57, v6, v6
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v17, v121, v121 :: v_dual_max_f32 v16, v123, v123
	v_max_f32_e32 v19, v117, v117
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v24, v108, v108 :: v_dual_max_f32 v25, v107, v107
	v_dual_max_f32 v98, 0, v42 :: v_dual_mul_f32 v53, v4, v4
	v_dual_max_f32 v41, v85, v85 :: v_dual_max_f32 v42, v83, v83
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v63, v8, v8
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v85, 0, v40
	v_dual_max_f32 v71, 0, v38 :: v_dual_max_f32 v38, v68, v68
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v49, v2, v2
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v68, 0, v38
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v67, v11, v11
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v83, 0, v39
	v_max_f32_e32 v87, 0, v41
	v_dual_max_f32 v99, 0, v42 :: v_dual_mul_f32 v48, v1, v1
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v59, v12, v12 :: v_dual_mul_f32 v50, v3, v3
	v_dual_mul_f32 v77, v16, v16 :: v_dual_mul_f32 v54, v5, v5
	v_dual_mul_f32 v69, v20, v20 :: v_dual_mul_f32 v60, v7, v7
	v_dual_mul_f32 v75, v17, v17 :: v_dual_mul_f32 v64, v10, v10
	v_dual_mul_f32 v61, v24, v24 :: v_dual_mul_f32 v58, v13, v13
	v_mul_f32_e32 v65, v22, v22
	v_dual_mul_f32 v0, v14, v14 :: v_dual_mul_f32 v51, v28, v28
	v_dual_mul_f32 v76, v15, v15 :: v_dual_mul_f32 v55, v26, v26
	v_dual_mul_f32 v74, v18, v18 :: v_dual_mul_f32 v47, v29, v29
	v_dual_mul_f32 v70, v19, v19 :: v_dual_mul_f32 v41, v33, v33
	v_dual_mul_f32 v66, v21, v21 :: v_dual_mul_f32 v39, v35, v35
	v_dual_mul_f32 v62, v23, v23 :: v_dual_mul_f32 v37, v37, v37
	v_mul_f32_e32 v56, v25, v25
	v_dual_mul_f32 v52, v27, v27 :: v_dual_mul_f32 v35, v93, v93
	v_dual_mul_f32 v46, v30, v30 :: v_dual_mul_f32 v33, v89, v89
	v_dual_mul_f32 v44, v31, v31 :: v_dual_mul_f32 v29, v80, v80
	v_dual_mul_f32 v42, v32, v32 :: v_dual_mul_f32 v27, v82, v82
	v_dual_mul_f32 v40, v34, v34 :: v_dual_mul_f32 v23, v79, v79
	v_dual_mul_f32 v38, v36, v36 :: v_dual_mul_f32 v25, v86, v86
	v_dual_mul_f32 v36, v43, v43 :: v_dual_mul_f32 v17, v73, v73
	v_dual_mul_f32 v34, v88, v88 :: v_dual_mul_f32 v21, v95, v95
	v_dual_mul_f32 v32, v90, v90 :: v_dual_mul_f32 v19, v71, v71
	v_dual_mul_f32 v31, v91, v91 :: v_dual_mul_f32 v30, v92, v92
	v_dual_mul_f32 v15, v98, v98 :: v_dual_mul_f32 v28, v81, v81
	v_dual_mul_f32 v26, v84, v84 :: v_dual_mul_f32 v7, v85, v85
	v_dual_mul_f32 v24, v78, v78 :: v_dual_mov_b32 v3, v9
	v_mul_f32_e32 v22, v94, v94
	v_mul_f32_e32 v20, v96, v96
	v_mul_f32_e32 v18, v72, v72
	v_mul_f32_e32 v16, v97, v97
	v_mul_f32_e32 v10, v68, v68
	v_mul_f32_e32 v8, v83, v83
	v_mul_f32_e32 v6, v87, v87
	v_mul_f32_e32 v4, v99, v99
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v48, v48 :: v_dual_max_f32 v2, v45, v45
	v_max3_f32 v5, v50, v53, v54
	v_max3_f32 v9, v64, v67, v59
	v_max3_f32 v11, v58, v0, v76
	v_dual_max_f32 v12, v75, v75 :: v_dual_max_f32 v1, v2, v1
	v_max_f32_e32 v2, v74, v74
	v_max3_f32 v43, v55, v52, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v9, v9, v11, v77
	v_max_f32_e32 v11, v41, v41
	v_max3_f32 v1, v1, v49, v5
	v_max_f32_e32 v5, v40, v40
	v_max_f32_e32 v2, v12, v2
	v_max3_f32 v12, v69, v66, v65
	v_max3_f32 v68, v47, v46, v44
	v_max3_f32 v14, v62, v61, v56
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v38, v37, v36
	v_max3_f32 v71, v32, v31, v30
	v_max3_f32 v72, v29, v28, v27
	v_max3_f32 v2, v2, v70, v12
	v_max3_f32 v12, v43, v68, v42
	v_max3_f32 v13, v57, v60, v63
	v_max3_f32 v43, v35, v34, v33
	v_max_f32_e32 v68, v24, v24
	v_max3_f32 v5, v5, v39, v11
	v_max3_f32 v11, v71, v72, v26
	v_max3_f32 v2, v2, v14, v12
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v1, v13, v9
	v_max3_f32 v13, v16, v15, v10
	v_max3_f32 v5, v5, v43, v11
	v_max3_f32 v14, v8, v7, v6
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v25, v25
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v12, v19, v18, v17
	v_max3_f32 v13, v13, v14, v4
	v_max_f32_e32 v14, v43, v43
	v_max_f32_e32 v9, v71, v68
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v68, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s25, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v43, v68, v68 :: v_dual_and_b32 v68, 3, v102
	v_max3_f32 v9, v9, v23, v11
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v2, v14
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v102
	s_mov_b32 s14, 0x7ffffffe
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v12, v13
	v_max_f32_e32 v11, v11, v11
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v102
	v_lshl_add_u32 v82, v2, 6, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v1, v11
	v_max_f32_e32 v80, v5, v43
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v11, 5, v68
	v_lshl_add_u32 v5, v68, 9, 0
	v_lshlrev_b32_e32 v12, 4, v102
	v_and_b32_e32 v43, 8, v102
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v14, 0x80, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v2, 2, v5
	v_and_or_b32 v71, 0x680, v12, v11
	v_xor_b32_e32 v72, v11, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v9, v1 :: v_dual_lshlrev_b32 v12, 1, v14
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v43, 4, v5
	v_lshrrev_b32_e32 v73, 3, v14
	v_xor_b32_e32 v71, v71, v13
	v_add_nc_u32_e32 v14, 0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v5, v12, v72
	v_add3_u32 v5, v82, v73, v71
	ds_store_b128 v1, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v78
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v71, v78, v78 :: v_dual_max_f32 v72, v79, v79
	v_max_f32_e32 v73, v81, v81
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v71, v1
	v_dual_max_f32 v71, v80, v80 :: v_dual_mov_b32 v78, v1
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v43, 3, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v9, v80 :: v_dual_max_f32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v71, v9
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v5, v79
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v5, v72, v5
	v_max_f32_e32 v72, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v73, v72
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v9
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v9, v9, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v9
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v78
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v79, v5
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v78, v1, v78 :: v_dual_max_f32 v1, v72, v72
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v71
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v79
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v72, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v9, v1
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v79, v5
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v2, v68, 4, 0
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v9, 4, v104
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add3_u32 v1, v2, v1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v68, 32, v9
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v79, v79, v79
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v5, v79
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v73, v73
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v73, 16, v9
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v71, v5
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v14, v72, v43
	ds_store_b128 v5, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v1
.Ltmp50:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v78, v78
	v_max_f32_e32 v71, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, 0x2b8cbccc, v1 :: v_dual_max_f32 v80, 0x2b8cbccc, v71
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v82, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v80
	v_rcp_f32_e32 v43, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v14, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v71, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v71, s0, s34, v68
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v68, v79, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v72, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v85, v82, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v14, v85, v82
	v_dual_max_f32 v68, 0x2b8cbccc, v68 :: v_dual_max_f32 v1, v81, v81
	v_fma_f32 v2, -v83, v84, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[71:72]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v73, v43
	v_div_scale_f32 v73, null, 0x40e00000, 0x40e00000, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v81, 0x2b8cbccc, v1 :: v_dual_fmac_f32 v84, v2, v84
	v_fma_f32 v1, -v14, v85, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v14, v73
	v_div_scale_f32 v2, s7, v80, 0x40e00000, v80
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v43, v85
	v_mul_f32_e32 v43, v2, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[71:72]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v72.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v73, v14, 1.0
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v5, -v83, v43, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v14, v71, v14
	v_div_scale_f32 v71, s8, v68, 0x40e00000, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v82, v85, 1.0
	v_fmac_f32_e32 v43, v5, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v72.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v71, v14
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, s9, v81, 0x40e00000, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v78, -v73, v87, v71
	v_fma_f32 v2, -v83, v43, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v86, v85
	s_mov_b32 vcc_lo, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v78, v14
	v_div_fmas_f32 v43, v2, v84, v43
	v_fma_f32 v78, -v82, v79, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v73, v87, v71
	v_div_fixup_f32 v43, v43, 0x40e00000, v80
	v_fmac_f32_e32 v79, v78, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v73, null, v83, v83, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v71, v14, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v82, v79, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v72.l, v43.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v14, v14, 0x40e00000, v68
	v_div_fmas_f32 v68, v71, v85, v79
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v83, v83, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v68, v68, 0x40e00000, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v73, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v72
	v_mov_b16_e32 v81.l, v14.h
	v_mov_b16_e32 v81.h, v72.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, vcc_lo, v45, v83, v45
	v_fmac_f32_e32 v80, v78, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v72.l, v68.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v83, v83, v49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v43, v71, 0x7fff
	v_and_b32_e32 v2, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v84, v80
	v_fma_f32 v43, -v79, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v87, null, v83, v83, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v14, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v73, v81, v84
	v_fmac_f32_e32 v82, v43, v82
	v_div_scale_f32 v88, s9, v48, v83, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v68, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v68, v87
	v_fmac_f32_e32 v81, v72, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v72, v88, v82
	v_fma_f32 v89, -v85, v86, 1.0
	v_div_scale_f32 v91, null, v83, v83, v53
	v_fma_f32 v73, -v73, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v79, v72, v88
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s10, v49, v83, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v87, v68, 1.0
	v_div_fmas_f32 v73, v73, v80, v81
	v_fmac_f32_e32 v72, v84, v82
	v_mul_f32_e32 v80, v89, v86
	v_rcp_f32_e32 v81, v91
	v_fmac_f32_e32 v68, v90, v68
	v_div_scale_f32 v84, s11, v50, v83, v50
	v_div_scale_f32 v90, null, v83, v83, v54
	v_div_fixup_f32 v45, v73, v83, v45
	v_fma_f32 v73, -v79, v72, v88
	v_fma_f32 v79, -v85, v80, v89
	v_mul_f32_e32 v88, v84, v68
	v_rcp_f32_e32 v92, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v93, -v91, v81, 1.0
	v_div_fmas_f32 v72, v73, v82, v72
	v_fmac_f32_e32 v80, v79, v86
	v_fma_f32 v73, -v87, v88, v84
	v_div_scale_f32 v79, s9, v53, v83, v53
	v_fmac_f32_e32 v81, v93, v81
	v_div_fixup_f32 v48, v72, v83, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v90, v92, 1.0
	v_fma_f32 v72, -v85, v80, v89
	v_fmac_f32_e32 v88, v73, v68
	v_div_scale_f32 v85, null, v83, v83, v57
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v73, v79, v81 :: v_dual_fmac_f32 v92, v82, v92
	v_div_scale_f32 v82, s12, v54, v83, v54
	v_div_fmas_f32 v72, v72, v86, v80
	v_fma_f32 v80, -v87, v88, v84
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v83, v83, v60
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v91, v73, v79
	v_mul_f32_e32 v87, v82, v92
	v_div_fmas_f32 v68, v80, v68, v88
	v_rcp_f32_e32 v80, v89
	v_div_fixup_f32 v49, v72, v83, v49
	v_fmac_f32_e32 v73, v84, v81
	v_fma_f32 v84, -v90, v87, v82
	v_fma_f32 v88, -v85, v86, 1.0
	v_div_fixup_f32 v50, v68, v83, v50
	v_div_scale_f32 v72, s10, v57, v83, v57
	v_fma_f32 v68, -v91, v73, v79
	v_fmac_f32_e32 v87, v84, v92
	v_fmac_f32_e32 v86, v88, v86
	v_fma_f32 v79, -v89, v80, 1.0
	v_div_scale_f32 v84, null, v83, v83, v63
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v83, v83, v64
	v_div_fmas_f32 v68, v68, v81, v73
	v_fma_f32 v73, -v90, v87, v82
	v_dual_mul_f32 v81, v72, v86 :: v_dual_fmac_f32 v80, v79, v80
	v_rcp_f32_e32 v79, v84
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v82, s9, v60, v83, v60
	v_div_fmas_f32 v73, v73, v92, v87
	v_fma_f32 v87, -v85, v81, v72
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v82, v80
	v_div_fixup_f32 v53, v68, v83, v53
	v_div_fixup_f32 v54, v73, v83, v54
	v_fma_f32 v91, -v84, v79, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_div_scale_f32 v87, null, v83, v83, v67
	v_fma_f32 v68, -v89, v90, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v73, s11, v63, v83, v63
	v_fma_f32 v91, -v88, v92, 1.0
	v_fma_f32 v72, -v85, v81, v72
	v_rcp_f32_e32 v85, v87
	v_fmac_f32_e32 v90, v68, v80
	v_mul_f32_e32 v68, v73, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v64, v83, v64
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v83, v83, v59
	v_div_fmas_f32 v72, v72, v86, v81
	v_fma_f32 v81, -v89, v90, v82
	v_fma_f32 v82, -v84, v68, v73
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v89, -v87, v85, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v57, v72, v83, v57
	v_fmac_f32_e32 v68, v82, v79
	v_fma_f32 v82, -v88, v86, v91
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s9, v67, v83, v67
	v_div_fmas_f32 v80, v81, v80, v90
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v72, -v84, v68, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v82, v92 :: v_dual_mul_f32 v73, v89, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v60, v80, v83, v60
	v_div_fmas_f32 v68, v72, v79, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v88, v86, v91
	v_fma_f32 v79, -v87, v73, v89
	v_div_scale_f32 v88, null, v83, v83, v0
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v84, s10, v59, v83, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v79, v85
	v_rcp_f32_e32 v79, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v81
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v63, v68, v83, v63
	v_div_fmas_f32 v72, v72, v92, v86
	v_fma_f32 v68, -v87, v73, v89
	v_mul_f32_e32 v86, v84, v81
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v64, v72, v83, v64
	v_fma_f32 v89, -v88, v79, 1.0
	v_fma_f32 v72, -v93, v86, v84
	v_div_fmas_f32 v68, v68, v85, v73
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v83, v83, v77
	v_fmac_f32_e32 v86, v72, v81
	v_div_fixup_f32 v67, v68, v83, v67
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v93, v86, v84
	v_div_fmas_f32 v68, v68, v81, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v89, v92, 1.0
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v82, null, v83, v83, v58
	v_div_scale_f32 v87, s11, v58, v83, v58
	v_div_scale_f32 v73, s9, v0, v83, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v82
	v_div_fixup_f32 v68, v68, v83, v59
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v73, v79
	v_div_scale_f32 v86, null, v78, v78, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v88, v91, v73
	v_fma_f32 v90, -v82, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v91, v81, v79 :: v_dual_fmac_f32 v80, v90, v80
	v_div_scale_f32 v90, null, v83, v83, v76
	v_mul_f32_e32 v72, v87, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v85, v90
	v_fma_f32 v84, -v82, v72, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, v84, v80
	v_fma_f32 v93, -v90, v85, 1.0
	v_div_scale_f32 v84, s10, v76, v83, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v82, v72, v87
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v82, s12, v77, v83, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v80, v72
	v_fma_f32 v72, -v88, v91, v73
	v_div_scale_f32 v88, null, v78, v78, v74
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v84, v85
	v_rcp_f32_e32 v80, v86
	v_div_fmas_f32 v79, v72, v79, v91
	v_rcp_f32_e32 v91, v88
	v_mul_f32_e32 v87, v82, v92
	v_fma_f32 v73, -v90, v81, v84
	v_div_fixup_f32 v72, v59, v83, v58
	v_div_scale_f32 v58, s9, v75, v78, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v89, v87, v82
	v_fmac_f32_e32 v81, v73, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v86, v80, 1.0
	v_div_fixup_f32 v73, v79, v83, v0
	v_fma_f32 v59, -v88, v91, 1.0
	v_div_scale_f32 v79, null, v78, v78, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_and_b32 v71, 0xffff0000, v1
	v_fma_f32 v0, -v90, v81, v84
	v_fmac_f32_e32 v87, v93, v92
	v_fmac_f32_e32 v91, v59, v91
	v_rcp_f32_e32 v59, v79
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v85, v81
	v_fma_f32 v81, -v89, v87, v82
	v_mul_f32_e32 v82, v58, v80
	v_div_scale_f32 v84, s10, v74, v78, v74
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, null, v78, v78, v69
	v_div_fmas_f32 v81, v81, v92, v87
	v_fma_f32 v87, -v86, v82, v58
	v_mul_f32_e32 v89, v84, v91
	v_fma_f32 v90, -v79, v59, 1.0
	v_rcp_f32_e32 v92, v85
	v_div_fixup_f32 v76, v0, v83, v76
	v_div_fixup_f32 v77, v81, v83, v77
	v_fmac_f32_e32 v82, v87, v80
	v_fma_f32 v0, -v88, v89, v84
	v_fmac_f32_e32 v59, v90, v59
	v_div_scale_f32 v81, s11, v70, v78, v70
	v_div_scale_f32 v83, null, v78, v78, v66
	v_fma_f32 v58, -v86, v82, v58
	v_fmac_f32_e32 v89, v0, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v81, v59
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v85, v92, 1.0
	v_rcp_f32_e32 v90, v83
	v_div_fmas_f32 v0, v58, v80, v82
	v_fma_f32 v58, -v88, v89, v84
	v_fma_f32 v80, -v79, v86, v81
	v_div_scale_f32 v88, null, v78, v78, v65
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v69, v78, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v80, v59
	v_rcp_f32_e32 v80, v88
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v82, v87, v92
	v_fma_f32 v84, -v83, v90, 1.0
	v_div_fmas_f32 v58, v58, v91, v89
	v_div_fixup_f32 v0, v0, v78, v75
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v89, -v85, v82, v87
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, s9, v66, v78, v66
	v_div_fixup_f32 v58, v58, v78, v74
	v_fma_f32 v74, -v79, v86, v81
	v_fma_f32 v79, -v88, v80, 1.0
	v_div_scale_f32 v81, null, v78, v78, v62
	v_dual_fmac_f32 v82, v89, v92 :: v_dual_mul_f32 v75, v84, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v81
	v_div_fmas_f32 v59, v74, v59, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v74, -v85, v82, v87
	v_fma_f32 v85, -v83, v75, v84
	v_div_scale_f32 v87, null, v78, v78, v61
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v86, s10, v65, v78, v65
	v_div_fmas_f32 v74, v74, v92, v82
	v_fmac_f32_e32 v75, v85, v90
	v_rcp_f32_e32 v82, v87
	v_fma_f32 v89, -v81, v79, 1.0
	v_mul_f32_e32 v85, v86, v80
	v_div_fixup_f32 v59, v59, v78, v70
	v_fma_f32 v70, -v83, v75, v84
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v78, v78, v56
	v_div_fixup_f32 v69, v74, v78, v69
	v_fma_f32 v74, -v88, v85, v86
	v_div_scale_f32 v83, s11, v62, v78, v62
	v_fma_f32 v84, -v87, v82, 1.0
	v_div_fmas_f32 v70, v70, v90, v75
	v_rcp_f32_e32 v75, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v74, v80 :: v_dual_mul_f32 v74, v83, v79
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, s9, v61, v78, v61
	v_div_scale_f32 v90, null, v78, v78, v55
	v_div_fixup_f32 v66, v70, v78, v66
	v_fma_f32 v70, -v88, v85, v86
	v_fma_f32 v86, -v81, v74, v83
	v_mul_f32_e32 v88, v84, v82
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v89, v75, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v74, v86, v79
	v_div_fmas_f32 v70, v70, v80, v85
	v_fma_f32 v80, -v87, v88, v84
	v_fmac_f32_e32 v75, v92, v75
	v_div_scale_f32 v85, s10, v56, v78, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v65, v70, v78, v65
	v_fma_f32 v86, -v90, v91, 1.0
	v_fma_f32 v70, -v81, v74, v83
	v_fmac_f32_e32 v88, v80, v82
	v_mul_f32_e32 v80, v85, v75
	v_div_scale_f32 v83, null, v78, v78, v52
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v81, s12, v55, v78, v55
	v_div_fmas_f32 v70, v70, v79, v74
	v_fma_f32 v74, -v87, v88, v84
	v_fma_f32 v79, -v89, v80, v85
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v87, null, v78, v78, v51
	v_mul_f32_e32 v86, v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v75
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v74, v74, v82, v88
	v_fma_f32 v82, -v90, v86, v81
	v_div_fixup_f32 v62, v70, v78, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v84, 1.0
	v_fma_f32 v70, -v89, v80, v85
	v_div_fixup_f32 v61, v74, v78, v61
	v_fmac_f32_e32 v86, v82, v91
	v_div_scale_f32 v74, s9, v52, v78, v52
	v_fmac_f32_e32 v84, v88, v84
	v_fma_f32 v82, -v87, v79, 1.0
	v_div_scale_f32 v85, null, v78, v78, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v78, v78, v46
	v_div_fmas_f32 v70, v70, v75, v80
	v_fma_f32 v75, -v90, v86, v81
	v_mul_f32_e32 v80, v74, v84
	v_fmac_f32_e32 v79, v82, v79
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v82, s10, v51, v78, v51
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v56, v70, v78, v56
	v_div_fmas_f32 v75, v75, v91, v86
	v_fma_f32 v86, -v83, v80, v74
	v_mul_f32_e32 v89, v82, v79
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v70, -v87, v89, v82
	v_div_fixup_f32 v55, v75, v78, v55
	v_div_scale_f32 v75, s11, v47, v78, v47
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v86, null, v78, v78, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v74, -v83, v80, v74
	v_dual_fmac_f32 v89, v70, v79 :: v_dual_mul_f32 v70, v75, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v46, v78, v46
	v_div_fmas_f32 v74, v74, v84, v80
	v_fma_f32 v80, -v87, v89, v82
	v_div_scale_f32 v92, null, v78, v78, v42
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v85, v70, v75
	v_mul_f32_e32 v84, v90, v91
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v70, v82, v81
	v_fma_f32 v82, -v88, v84, v90
	v_div_fixup_f32 v51, v79, v78, v51
	v_div_fixup_f32 v52, v74, v78, v52
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v44, v78, v44
	v_fmac_f32_e32 v84, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v71, v71, v41
	v_fma_f32 v74, -v85, v70, v75
	v_mul_f32_e32 v75, v87, v83
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s10, v42, v78, v42
	v_div_fmas_f32 v70, v74, v81, v70
	v_fma_f32 v74, -v88, v84, v90
	v_fma_f32 v81, -v86, v75, v87
	v_div_scale_f32 v88, null, v71, v71, v40
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v82, v79, 1.0
	v_fmac_f32_e32 v75, v81, v83
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v74, v74, v91, v84
	v_mul_f32_e32 v84, v85, v80
	v_div_fixup_f32 v47, v70, v78, v47
	v_fma_f32 v70, -v86, v75, v87
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v71, v71, v39
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v46, v74, v78, v46
	v_fma_f32 v74, -v92, v84, v85
	v_div_scale_f32 v86, s11, v41, v71, v41
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v70, v70, v83, v75
	v_rcp_f32_e32 v75, v89
	v_fmac_f32_e32 v84, v74, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v74, v86, v79 :: v_dual_fmac_f32 v81, v87, v81
	v_div_scale_f32 v83, s9, v40, v71, v40
	v_div_scale_f32 v87, null, v71, v71, v38
	v_div_fixup_f32 v44, v70, v78, v44
	v_fma_f32 v70, -v92, v84, v85
	v_fma_f32 v85, -v82, v74, v86
	v_mul_f32_e32 v90, v83, v81
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v75, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v74, v85, v79
	v_div_fmas_f32 v70, v70, v80, v84
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v75, v92, v75
	v_div_scale_f32 v84, s10, v39, v71, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v70, v78, v42
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v70, -v82, v74, v86
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v78, v84, v75
	v_div_scale_f32 v82, null, v71, v71, v37
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v80, s12, v38, v71, v38
	v_div_fmas_f32 v70, v70, v79, v74
	v_fma_f32 v74, -v88, v90, v83
	v_fma_f32 v79, -v89, v78, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v71, v71, v36
	v_mul_f32_e32 v85, v80, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v79, v75
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v74, v74, v81, v90
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v41, v70, v71, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v83, 1.0
	v_fma_f32 v70, -v89, v78, v84
	v_div_fixup_f32 v40, v74, v71, v40
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v74, s9, v37, v71, v37
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_scale_f32 v84, null, v71, v71, v35
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v75, v78
	v_fma_f32 v75, -v87, v85, v80
	v_mul_f32_e32 v78, v74, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s10, v36, v71, v36
	v_div_scale_f32 v87, null, v71, v71, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v75, v75, v91, v85
	v_fma_f32 v85, -v82, v78, v74
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v39, v70, v71, v39
	v_fma_f32 v70, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v71, v71, v33
	v_div_fixup_f32 v38, v75, v71, v38
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v75, s11, v35, v71, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v74, -v82, v78, v74
	v_fmac_f32_e32 v88, v70, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v70, v75, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v34, v71, v34
	v_div_fmas_f32 v74, v74, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v71, v71, v32
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v84, v70, v75
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v70, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v33, v71, v33
	v_div_fixup_f32 v37, v74, v71, v37
	v_div_fixup_f32 v36, v78, v71, v36
	v_fma_f32 v74, -v84, v70, v75
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v75, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v71, v71, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v32, v71, v32
	v_div_fmas_f32 v70, v74, v80, v70
	v_fma_f32 v74, -v87, v83, v89
	v_fma_f32 v80, -v85, v75, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v80, v82
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v35, v70, v71, v35
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v74, v74, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v70, -v85, v75, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v74, v71, v34
	v_fma_f32 v74, -v91, v83, v84
	v_div_scale_f32 v85, s11, v31, v71, v31
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v71, v71, v29
	v_div_fmas_f32 v70, v70, v82, v75
	v_fmac_f32_e32 v83, v74, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v86, v80
	v_rcp_f32_e32 v75, v88
	v_div_scale_f32 v86, null, v71, v71, v28
	v_mul_f32_e32 v74, v85, v78
	v_div_scale_f32 v82, s9, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v33, v70, v71, v33
	v_fma_f32 v70, -v91, v83, v84
	v_fma_f32 v84, -v81, v74, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v75, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v79, v83
	v_fmac_f32_e32 v74, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v75, v91, v75
	v_div_scale_f32 v83, s10, v29, v71, v29
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v32, v70, v71, v32
	v_fma_f32 v70, -v81, v74, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v75 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v71, v71, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s12, v28, v71, v28
	v_div_fmas_f32 v70, v70, v78, v74
	v_fma_f32 v74, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v71, v71, v26
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v75
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v74, v74, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v31, v70, v71, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v70, -v88, v79, v83
	v_div_fixup_f32 v30, v74, v71, v30
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v74, s9, v27, v71, v27
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v43, v43, v24
	v_div_fmas_f32 v70, v70, v75, v79
	v_fma_f32 v75, -v86, v85, v81
	v_mul_f32_e32 v79, v74, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v43, v43, v25
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v26, v71, v26
	v_div_fmas_f32 v75, v75, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v29, v70, v71, v29
	v_div_fixup_f32 v28, v75, v71, v28
	v_rcp_f32_e32 v75, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v70, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v43, v43, v22
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v74, -v84, v79, v74
	v_div_scale_f32 v84, null, v43, v43, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v70, v78 :: v_dual_fmac_f32 v83, v85, v83
	v_div_fmas_f32 v74, v74, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v70, s11, v25, v43, v25
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v89, -v88, v75, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v70, v83
	v_div_scale_f32 v82, s9, v24, v43, v24
	v_fmac_f32_e32 v75, v89, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v70
	v_mul_f32_e32 v91, v82, v75
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v23, v43, v23
	v_div_fixup_f32 v27, v74, v71, v27
	v_div_fixup_f32 v26, v78, v71, v26
	v_div_scale_f32 v78, null, v43, v43, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v87, v85 :: v_dual_fmac_f32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v74, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v71, -v84, v86, v87
	v_fma_f32 v70, -v80, v81, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v75 :: v_dual_fmac_f32 v92, v74, v92
	v_div_scale_f32 v74, s10, v22, v43, v22
	v_fmac_f32_e32 v86, v71, v85
	v_rcp_f32_e32 v71, v78
	v_div_fmas_f32 v70, v70, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_mul_f32_e32 v80, v74, v92
	v_div_scale_f32 v81, null, v43, v43, v20
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v70, v43, v25
	v_div_fmas_f32 v75, v79, v75, v91
	v_fma_f32 v79, -v84, v86, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v78, v71, 1.0
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v74
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v24, v75, v43, v24
	v_fmac_f32_e32 v71, v82, v71
	v_div_scale_f32 v82, s9, v21, v43, v21
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v70, v82, v71
	v_fma_f32 v75, -v81, v83, 1.0
	v_fma_f32 v74, -v90, v80, v74
	v_div_fixup_f32 v23, v79, v43, v23
	v_div_scale_f32 v79, null, v43, v43, v19
	v_fma_f32 v84, -v78, v70, v82
	v_fmac_f32_e32 v83, v75, v83
	v_div_scale_f32 v75, s11, v20, v43, v20
	v_div_fmas_f32 v74, v74, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v84, v71
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v75, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v74, v43, v22
	v_fma_f32 v74, -v78, v70, v82
	v_div_scale_f32 v84, null, v43, v43, v18
	v_fma_f32 v78, -v81, v80, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v74, v71, v70
	v_div_scale_f32 v71, null, v43, v43, v17
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v71
	v_div_scale_f32 v74, s9, v19, v43, v19
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v43, v43, v16
	v_div_fixup_f32 v21, v70, v43, v21
	v_fma_f32 v75, -v81, v80, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v71, v78, 1.0
	v_mul_f32_e32 v81, v74, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v70, v86
	v_div_scale_f32 v70, s10, v18, v43, v18
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v43, v43, v15
	v_div_fmas_f32 v75, v75, v83, v80
	v_fma_f32 v80, -v79, v81, v74
	v_mul_f32_e32 v83, v70, v86
	v_div_scale_f32 v89, s11, v17, v43, v17
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v70
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v16, v43, v16
	v_div_fixup_f32 v20, v75, v43, v20
	v_fma_f32 v74, -v79, v81, v74
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v75, -v71, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v84, v83, v70
	v_fmac_f32_e32 v92, v75, v78
	v_fma_f32 v75, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v15, v43, v15
	v_div_fmas_f32 v74, v74, v85, v81
	v_div_scale_f32 v81, null, v43, v43, v10
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v71, -v71, v92, v89
	v_fmac_f32_e32 v79, v75, v88
	v_mul_f32_e32 v75, v80, v91
	v_div_fmas_f32 v70, v70, v86, v83
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v74, v43, v19
	v_div_fmas_f32 v71, v71, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v75, v80
	v_div_fixup_f32 v18, v70, v43, v18
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v17, v71, v43, v17
	v_div_scale_f32 v71, null, v43, v43, v8
	v_fmac_f32_e32 v75, v82, v91
	v_fma_f32 v74, -v81, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v43, v43, v4
	v_fma_f32 v70, -v87, v75, v80
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, null, v43, v43, v7
	v_div_fixup_f32 v16, v78, v43, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v91, v75
	v_rcp_f32_e32 v75, v71
	v_rcp_f32_e32 v80, v74
	v_div_scale_f32 v79, vcc_lo, v10, v43, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v70, v43, v15
	v_div_scale_f32 v78, null, v43, v43, v6
	v_mul_f32_e32 v84, v79, v83
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v71, v75, 1.0
	v_fma_f32 v86, -v74, v80, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v82, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v70, v75
	v_div_scale_f32 v70, s9, v8, v43, v8
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v7, v43, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v70, v75
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v86, v80
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v88, -v71, v90, v70
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v81, -v74, v92, v86
	v_div_scale_f32 v89, s11, v6, v43, v6
	v_fmac_f32_e32 v90, v88, v75
	v_div_fmas_f32 v79, v79, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v81, v80
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v70, -v71, v90, v70
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v74, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v75, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v80, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v4, v43, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v89, v82
	v_div_fixup_f32 v7, v74, v43, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v42
	v_and_b32_e32 v42, 15, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v85, v94, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v10, v79, v43, v10
	v_fmac_f32_e32 v93, v88, v82
	v_div_fixup_f32 v8, v70, v43, v8
	v_fmac_f32_e32 v94, v71, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v78, v93, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v71, v43, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v75, v43, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v49
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v75, v41
	v_cvt_i32_f32_e32 v79, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v67
	v_rndne_f32_e32 v71, v76
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v76, v40
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v101, v15
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v31, 15, v0
	v_and_b32_e32 v43, 15, v47
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v51, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v102
	v_and_b32_e32 v79, 16, v102
	v_lshlrev_b32_e32 v75, 4, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v72, v77
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v73, v44
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v6, v6
	v_and_b32_e32 v17, 15, v48
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v48, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v76, 6, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v75, v13
	v_lshlrev_b32_e32 v13, 6, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v78, v38
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v92, v24
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v98, v18
	v_cvt_i32_f32_e32 v4, v4
	v_and_b32_e32 v18, 15, v49
	v_and_b32_e32 v49, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v6, 0x1b00, v13, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v100, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v95, v21
	v_cvt_i32_f32_e32 v96, v20
	v_cvt_i32_f32_e32 v97, v19
	v_and_b32_e32 v16, 15, v45
	v_and_b32_e32 v19, 15, v50
	v_and_b32_e32 v20, 15, v53
	v_and_b32_e32 v21, 15, v54
	v_and_b32_e32 v22, 15, v57
	v_and_b32_e32 v24, 15, v63
	v_and_b32_e32 v25, 15, v64
	v_and_b32_e32 v32, 15, v58
	v_and_b32_e32 v33, 15, v59
	v_and_b32_e32 v34, 15, v69
	v_and_b32_e32 v35, 15, v66
	v_and_b32_e32 v36, 15, v65
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v10, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v6, v104, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v28
	v_cvt_i32_f32_e32 v89, v27
	v_cvt_i32_f32_e32 v90, v26
	v_and_b32_e32 v23, 15, v60
	v_and_b32_e32 v26, 15, v67
	v_and_b32_e32 v27, 15, v68
	v_and_b32_e32 v28, 15, v70
	v_and_b32_e32 v29, 15, v71
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v39, 15, v56
	v_and_b32_e32 v40, 15, v55
	v_and_b32_e32 v41, 15, v52
	v_and_b32_e32 v45, 15, v73
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[15:18]
	ds_store_b128 v0, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[15:18], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v4
	ds_load_b128 v[31:34], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v4
	ds_load_b128 v[47:50], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v4
	ds_load_b128 v[63:66], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[27:30], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v37, 15, v62
	v_and_b32_e32 v38, 15, v61
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_and_b32_e32 v53, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[35:38]
	ds_store_b128 v0, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v4
	ds_load_b128 v[43:46], v4 offset:1024
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v82
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v4
	ds_load_b128 v[59:62], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v8
	v_and_b32_e32 v76, 15, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v18, 4, v13
	v_lshl_or_b32 v18, v30, 4, v22
	v_lshl_or_b32 v30, v50, 4, v42
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v103
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[67:70]
	ds_store_b128 v0, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v4, v15, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v16, 4, v11
	v_lshl_or_b32 v12, v17, 4, v12
	v_lshl_or_b32 v15, v27, 4, v19
	v_lshl_or_b32 v16, v28, 4, v20
	v_lshl_or_b32 v17, v29, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v31, 4, v23
	v_lshl_or_b32 v20, v32, 4, v24
	v_lshl_or_b32 v21, v33, 4, v25
	v_lshl_or_b32 v22, v34, 4, v26
	v_lshl_or_b32 v23, v43, 4, v35
	v_lshl_or_b32 v24, v44, 4, v36
	v_lshl_or_b32 v25, v45, 4, v37
	v_lshl_or_b32 v26, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v18.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v59, 4, v51
	v_lshl_or_b32 v32, v60, 4, v52
	v_lshl_or_b32 v33, v61, 4, v53
	v_lshl_or_b32 v34, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v4.l, 8, v26.l
	v_and_b16 v4.h, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v6.l, 0xff, v23.l
	s_mov_b32 s12, s24
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v47, 4, v39
	v_lshl_or_b32 v28, v48, 4, v40
	v_lshl_or_b32 v29, v49, 4, v41
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v71, 4, v67
	v_lshl_or_b32 v40, v72, 4, v68
	v_lshl_or_b32 v41, v73, 4, v69
	v_lshl_or_b32 v43, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v34.l
	v_and_b16 v4.h, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v6.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v63, 4, v55
	v_lshl_or_b32 v36, v64, 4, v56
	v_lshl_or_b32 v37, v65, 4, v57
	v_lshl_or_b32 v38, v66, 4, v58
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v30.l
	v_and_b16 v0.h, 0xff, v29.l
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_or_b16 v8.h, v4.h, v4.l
	v_or_b16 v8.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v43.l
	v_and_b16 v4.h, 0xff, v41.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v39.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v102
	v_lshrrev_b32_e32 v6, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v6, v4, v42
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v102
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 92
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18824
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 92
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
