	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s37, s[0:1], 0x54
	s_load_b64 s[72:73], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s37, 0xff
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
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
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
	s_sub_i32 s5, s73, s4
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
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
	s_sub_i32 s73, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s73, s5
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
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[68:69], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s72, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s38, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s39, 0, s2
	v_add_nc_u32_e32 v9, s38, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s38, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[48:51], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v102, 15, v0
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v103, 0xf0, v0
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
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s74, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s38, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s6
	s_clause 0x1
	s_load_b32 s75, s[0:1], 0x58
	s_load_b32 s76, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v1, s38, v102
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[68:69], v[3:4]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v12, s73, 8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v2, 16, v1
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_mul_lo_u32 v1, v1, s72
	v_mov_b32_e32 v11, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[68:69], v[5:6]
	v_or_b32_e32 v5, 0x7f0, v0
	v_or_b32_e32 v6, 0xb00, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[68:69], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s72
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v8, 0x1300, v0
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v47, 0, v102
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_mov_b32_e32 v120, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s72
	v_lshrrev_b32_e32 v3, 1, v0
	v_or_b32_e32 v15, 0x1f00, v0
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v10, 2, v103
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v16, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 0x70, v3
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s72
	v_or_b32_e32 v4, 0x3f0, v0
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v61, v47, v3
	v_mov_b32_e32 v118, 0
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v0
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v3, 32, v3
	v_mov_b32_e32 v114, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s75, s37
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v96, 0, v1
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b64 off, v[11:12], off offset:16 ; 8-byte Folded Spill
	v_mov_b32_e32 v90, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s3, s7, v[12:13]
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v1, 0, v5
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v12, 28, v16
	v_mov_b32_e32 v86, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	v_add3_u32 v3, 0, v10, v3
	v_mov_b32_e32 v84, 0
	v_or_b32_e32 v2, 0x700, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[24:25], null, s37, 18, v[11:12]
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v1, 0, v7
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v98, 0, v2
	v_mad_u64_u32 v[25:26], null, s37, 19, v[11:12]
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, 0, v8
	v_mad_u64_u32 v[26:27], null, s37, 20, v[11:12]
	v_mov_b32_e32 v78, 0
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_mad_u64_u32 v[27:28], null, s37, 21, v[11:12]
	v_mad_u64_u32 v[28:29], null, s37, 22, v[11:12]
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_mad_u64_u32 v[29:30], null, s37, 23, v[11:12]
	v_mad_u64_u32 v[30:31], null, s37, 24, v[11:12]
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_mad_u64_u32 v[31:32], null, s37, 25, v[11:12]
	v_mad_u64_u32 v[32:33], null, s37, 26, v[11:12]
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v3, v12
	v_mad_u64_u32 v[33:34], null, s37, 27, v[11:12]
	v_mad_u64_u32 v[34:35], null, s37, 28, v[11:12]
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 3, v[11:12]
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v16, 1, v103
	v_mad_u64_u32 v[35:36], null, s37, 29, v[11:12]
	s_mov_b32 s40, 0
	v_mad_u64_u32 v[36:37], null, s37, 30, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 5, v[11:12]
	v_mad_u64_u32 v[37:38], null, s37, 31, v[11:12]
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	scratch_store_b64 off, v[1:2], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 6, v[11:12]
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v94, 0, v0
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v119, 0, v16
	scratch_store_b64 off, v[1:2], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 7, v[11:12]
	v_mov_b32_e32 v103, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b64 off, v[1:2], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 9, v[11:12]
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v60, 0
	scratch_store_b64 off, v[1:2], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 10, v[11:12]
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v54, 0
	scratch_store_b64 off, v[1:2], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 11, v[11:12]
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v48, 0
	scratch_store_b64 off, v[1:2], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 12, v[11:12]
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v69, 0
	scratch_store_b64 off, v[1:2], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 13, v[11:12]
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v55, 0
	scratch_store_b64 off, v[1:2], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 14, v[11:12]
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v49, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	scratch_store_b64 off, v[1:2], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 15, v[11:12]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s77, s72, s7
	s_and_b32 s65, s11, 0xffff
	s_and_b32 s53, s13, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[1:2], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 17, v[11:12]
	s_mov_b32 s52, s12
	s_and_b32 s57, s15, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s60, s8
	s_mov_b32 s61, s9
	s_mov_b32 s62, s54
	scratch_store_b64 off, v[1:2], off offset:148 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s40 :: v_dual_mov_b32 v2, s41
	v_dual_mov_b32 v3, s42 :: v_dual_mov_b32 v4, s43
	v_dual_mov_b32 v5, s44 :: v_dual_mov_b32 v6, s45
	v_dual_mov_b32 v7, s46 :: v_dual_mov_b32 v8, s47
	s_mov_b32 s63, s55
	s_mov_b32 s64, s10
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_mov_b32 s78, s40
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b64 v[12:13], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s78, 5
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v38, s37, v11
	s_mul_i32 s58, s5, s37
	s_or_b32 s4, s5, 1
	s_or_b32 s7, s5, 2
	s_or_b32 s6, s5, 3
	s_or_b32 s11, s5, 4
	s_or_b32 s9, s5, 5
	s_or_b32 s8, s5, 6
	s_or_b32 s10, s5, 7
	s_or_b32 s12, s5, 8
	s_or_b32 s13, s5, 9
	s_or_b32 s14, s5, 10
	s_or_b32 s15, s5, 11
	s_or_b32 s16, s5, 12
	s_or_b32 s17, s5, 13
	s_or_b32 s18, s5, 14
	s_or_b32 s19, s5, 15
	s_or_b32 s20, s5, 16
	s_or_b32 s21, s5, 17
	s_or_b32 s22, s5, 18
	s_or_b32 s23, s5, 19
	s_or_b32 s24, s5, 20
	s_or_b32 s25, s5, 21
	s_or_b32 s26, s5, 22
	s_or_b32 s27, s5, 23
	s_or_b32 s28, s5, 24
	s_or_b32 s29, s5, 25
	s_or_b32 s30, s5, 26
	s_or_b32 s31, s5, 27
	s_or_b32 s33, s5, 28
	s_or_b32 s34, s5, 29
	s_or_b32 s35, s5, 30
	s_or_b32 s36, s5, 31
	s_cmp_lt_i32 s5, s75
	v_add_nc_u32_e32 v41, s58, v38
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v38, 6, v0
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s4, s75
	v_add_nc_u32_e32 v40, s58, v11
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s7, s75
	v_or_b32_e32 v43, s5, v38
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s75
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v38, s37, 1, v11
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s11, s75
	v_cmp_gt_i32_e64 s7, s75, v43
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s9, s75
	v_add_nc_u32_e32 v44, s58, v38
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s8, s75
	v_lshl_add_u32 v38, s37, 2, v11
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s10, s75
	v_add_nc_u32_e32 v137, s58, v25
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s12, s75
	v_add_nc_u32_e32 v46, s58, v38
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s75
	v_lshl_add_u32 v38, s37, 3, v11
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s75
	v_add_nc_u32_e32 v138, s58, v26
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s75
	v_add_nc_u32_e32 v126, s58, v38
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s75
	v_lshl_add_u32 v38, s37, 4, v11
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s75
	v_add_nc_u32_e32 v140, s58, v28
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s75
	v_add_nc_u32_e32 v134, s58, v38
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s75
	v_mad_u64_u32 v[38:39], null, v43, s76, v[9:10]
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s75
	v_add_nc_u32_e32 v141, s58, v29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s75
	v_add_nc_u32_e32 v143, s58, v31
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s75
	v_add_nc_u32_e32 v136, s58, v24
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s75
	v_add_nc_u32_e32 v144, s58, v32
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s75
	v_add_nc_u32_e32 v146, s58, v34
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s75
	v_add_nc_u32_e32 v139, s58, v27
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s75
	v_add_nc_u32_e32 v142, s58, v30
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s75
	v_add_nc_u32_e32 v145, s58, v33
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s75
	v_add_nc_u32_e32 v147, s58, v35
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s29, s75
	v_add_nc_u32_e32 v148, s58, v36
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s30, s75
	v_add_nc_u32_e32 v149, s58, v37
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s31, s75
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s59, s55
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s33, s75
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s34, s75
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s35, s75
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s36, s75
	s_cselect_b32 s36, -1, 0
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v150, 0x80000000, v38, s7
	v_or_b32_e32 v38, 4, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v151, 0x80000000, v38, s7
	v_or_b32_e32 v38, 8, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v152, 0x80000000, v38, s7
	v_or_b32_e32 v38, 12, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v153, 0x80000000, v38, s7
	v_or_b32_e32 v38, 16, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v154, 0x80000000, v38, s7
	v_or_b32_e32 v38, 20, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v155, 0x80000000, v38, s7
	v_or_b32_e32 v38, 24, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v156, 0x80000000, v38, s7
	v_or_b32_e32 v38, 28, v43
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	v_cndmask_b32_e64 v39, 0x80000000, v40, s3
	v_cndmask_b32_e64 v40, 0x80000000, v41, s4
	v_cndmask_b32_e64 v41, 0x80000000, v44, s5
	v_cndmask_b32_e64 v44, 0x80000000, v46, s11
	s_and_b32 s7, s74, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s78, s77
	v_cndmask_b32_e64 v38, 0x80000000, v38, s7
	s_mul_i32 s3, s3, s37
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v44, v44, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s58, v12
	scratch_load_b64 v[12:13], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v43, 0x80000000, v45, s6
	s_clause 0x3
	buffer_load_u8 v45, v39, s[64:67], 0 offen
	buffer_load_u8 v40, v40, s[64:67], 0 offen
	buffer_load_u8 v41, v41, s[64:67], 0 offen
	buffer_load_u8 v43, v43, s[64:67], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v104, s58, v12
	scratch_load_b64 v[12:13], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v104, s9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s58, v12
	scratch_load_b64 v[12:13], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v46, 0x80000000, v105, s8
	buffer_load_u8 v105, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v126, s12
	buffer_load_u8 v46, v46, s[64:67], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v125, s58, v12
	scratch_load_b64 v[12:13], off, off offset:92 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v104, 0x80000000, v125, s10
	buffer_load_u8 v104, v104, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v127, s58, v12
	scratch_load_b64 v[12:13], off, off offset:100 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v127, s13
	buffer_load_u8 v225, v125, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v128, s58, v12
	scratch_load_b64 v[12:13], off, off offset:108 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v128, s14
	s_clause 0x1
	buffer_load_u8 v227, v126, s[64:67], 0 offen
	buffer_load_u8 v224, v39, s[64:67], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v129, s58, v12
	scratch_load_b64 v[12:13], off, off offset:116 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v129, s15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, s58, v12
	scratch_load_b64 v[12:13], off, off offset:124 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s58, v12
	scratch_load_b64 v[12:13], off, off offset:132 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v131, s17
	s_clause 0x1
	buffer_load_u8 v250, v126, s[64:67], 0 offen
	buffer_load_u8 v229, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v134, s20
	buffer_load_u8 v253, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v137, s23
	buffer_load_u8 v102, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v140, s26
	buffer_load_u8 v106, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v143, s29
	buffer_load_u8 v110, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v146, s33
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v132, s58, v12
	scratch_load_b64 v[12:13], off, off offset:140 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v132, s18
	buffer_load_u8 v251, v39, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v133, s58, v12
	scratch_load_b64 v[12:13], off, off offset:148 ; 8-byte Folded Reload
	buffer_load_u8 v13, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v149, s36
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v135, s58, v12
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s58, s54
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0x80000000, v135, s21
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v254, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v130, s16
	v_cndmask_b32_e64 v39, 0x80000000, v138, s24
	s_clause 0x1
	buffer_load_u8 v249, v125, s[64:67], 0 offen
	buffer_load_u8 v255, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v133, s19
	v_cndmask_b32_e64 v39, 0x80000000, v141, s27
	s_clause 0x1
	buffer_load_u8 v252, v125, s[64:67], 0 offen
	buffer_load_u8 v107, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v136, s22
	v_cndmask_b32_e64 v39, 0x80000000, v144, s30
	s_clause 0x1
	buffer_load_u8 v100, v125, s[64:67], 0 offen
	buffer_load_u8 v117, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v139, s25
	v_cndmask_b32_e64 v39, 0x80000000, v147, s34
	buffer_load_u8 v10, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v142, s28
	buffer_load_u8 v108, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v145, s31
	buffer_load_u8 v12, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v148, s35
	s_clause 0x1
	buffer_load_u8 v14, v39, s[64:67], 0 offen
	buffer_load_u8 v15, v125, s[64:67], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v39, v150, s[60:63], 0 offen
	buffer_load_u8 v125, v151, s[60:63], 0 offen
	buffer_load_u8 v127, v152, s[60:63], 0 offen
	buffer_load_u8 v128, v154, s[60:63], 0 offen
	buffer_load_u8 v129, v155, s[60:63], 0 offen
	buffer_load_u8 v130, v156, s[60:63], 0 offen
	buffer_load_u8 v38, v38, s[60:63], 0 offen
	buffer_load_u8 v131, v153, s[60:63], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v16, v126, s[64:67], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b8 v94, v39
	s_waitcnt vmcnt(7)
	ds_store_b8 v94, v125 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v94, v127 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v94, v128 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v94, v129 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v131
	ds_store_b8 v94, v130 offset:1536
	ds_store_b8 v98, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v17, off, off offset:24 ; 4-byte Folded Reload
	ds_load_u8 v38, v47 offset:320
	ds_load_u8 v39, v47 offset:256
	ds_load_u8 v165, v47 offset:336
	ds_load_u8 v168, v47 offset:272
	ds_load_u8 v136, v47 offset:352
	ds_load_u8 v137, v47 offset:288
	ds_load_u8 v125, v47 offset:368
	ds_load_u8 v126, v47 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v47 offset:448
	ds_load_u8 v129, v47 offset:384
	ds_load_u8 v170, v47 offset:464
	ds_load_u8 v173, v47 offset:400
	ds_load_u8 v140, v47 offset:480
	ds_load_u8 v141, v47 offset:416
	ds_load_u8 v127, v47 offset:496
	ds_load_u8 v128, v47 offset:432
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v129, v39, 0xc0c0004
	ds_load_u8 v131, v47 offset:64
	ds_load_u8 v132, v47
	ds_load_u8 v177, v47 offset:80
	ds_load_u8 v146, v47 offset:96
	ds_load_u8 v129, v47 offset:112
	ds_load_u8 v182, v47 offset:16
	ds_load_u8 v147, v47 offset:32
	ds_load_u8 v130, v47 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v137, v141, v140, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v126, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v132, v131, 0xc0c0004
	ds_load_u8 v134, v47 offset:192
	ds_load_u8 v135, v47 offset:128
	ds_load_u8 v183, v47 offset:208
	ds_load_u8 v184, v47 offset:144
	ds_load_u8 v150, v47 offset:224
	ds_load_u8 v151, v47 offset:160
	ds_load_u8 v131, v47 offset:240
	ds_load_u8 v132, v47 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v140, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v127, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v134, 16, v133
	ds_load_u8 v239, v47 offset:960
	ds_load_u8 v240, v47 offset:896
	ds_load_u8 v222, v47 offset:1024
	ds_load_u8 v187, v47 offset:976
	ds_load_u8 v188, v47 offset:912
	ds_load_u8 v154, v47 offset:992
	ds_load_u8 v155, v47 offset:928
	ds_load_u8 v133, v47 offset:944
	ds_load_u8 v243, v47 offset:832
	ds_load_u8 v244, v47 offset:768
	ds_load_u8 v193, v47 offset:848
	ds_load_u8 v194, v47 offset:784
	ds_load_u8 v160, v47 offset:864
	ds_load_u8 v161, v47 offset:800
	ds_load_u8 v134, v47 offset:880
	ds_load_u8 v135, v47 offset:816
	ds_load_u8 v245, v47 offset:704
	ds_load_u8 v246, v47 offset:640
	ds_load_u8 v195, v47 offset:720
	ds_load_u8 v196, v47 offset:656
	ds_load_u8 v163, v47 offset:736
	ds_load_u8 v166, v47 offset:672
	ds_load_u8 v138, v47 offset:752
	ds_load_u8 v139, v47 offset:688
	ds_load_u8 v247, v47 offset:576
	ds_load_u8 v248, v47 offset:512
	ds_load_u8 v201, v47 offset:592
	ds_load_u8 v202, v47 offset:528
	ds_load_u8 v171, v47 offset:608
	ds_load_u8 v174, v47 offset:544
	ds_load_u8 v143, v47 offset:624
	ds_load_u8 v145, v47 offset:560
	ds_load_u8 v232, v47 offset:1216
	ds_load_u8 v234, v47 offset:1280
	ds_load_u8 v203, v47 offset:1232
	ds_load_u8 v204, v47 offset:1168
	ds_load_u8 v175, v47 offset:1248
	ds_load_u8 v176, v47 offset:1184
	ds_load_u8 v142, v47 offset:1264
	ds_load_u8 v144, v47 offset:1200
	ds_load_u8 v236, v47 offset:1152
	ds_load_u8 v237, v47 offset:1088
	ds_load_u8 v207, v47 offset:1104
	ds_load_u8 v208, v47 offset:1040
	ds_load_u8 v180, v47 offset:1120
	ds_load_u8 v181, v47 offset:1056
	ds_load_u8 v148, v47 offset:1136
	ds_load_u8 v149, v47 offset:1072
	ds_load_u8 v238, v47 offset:1472
	ds_load_u8 v221, v47 offset:1536
	ds_load_u8 v209, v47 offset:1488
	ds_load_u8 v210, v47 offset:1424
	ds_load_u8 v185, v47 offset:1504
	ds_load_u8 v186, v47 offset:1440
	ds_load_u8 v152, v47 offset:1520
	ds_load_u8 v153, v47 offset:1456
	ds_load_u8 v241, v47 offset:1408
	ds_load_u8 v242, v47 offset:1344
	ds_load_u8 v211, v47 offset:1360
	ds_load_u8 v213, v47 offset:1296
	ds_load_u8 v189, v47 offset:1376
	ds_load_u8 v191, v47 offset:1312
	ds_load_u8 v157, v47 offset:1392
	ds_load_u8 v159, v47 offset:1328
	ds_load_u8 v223, v47 offset:1984
	ds_load_u8 v212, v47 offset:2000
	ds_load_u8 v214, v47 offset:1936
	ds_load_u8 v190, v47 offset:2016
	ds_load_u8 v192, v47 offset:1952
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v146, v174, v171, 0xc0c0004
	v_perm_b32 v147, v166, v163, 0xc0c0004
	v_lshl_or_b32 v136, v141, 16, v140
	v_perm_b32 v140, v161, v160, 0xc0c0004
	v_perm_b32 v141, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v150, v181, v180, 0xc0c0004
	v_perm_b32 v151, v176, v175, 0xc0c0004
	v_perm_b32 v128, v132, v131, 0xc0c0004
	v_lshl_or_b32 v141, v141, 16, v140
	v_lshl_or_b32 v140, v147, 16, v146
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v147, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v146, v191, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v146
	v_lshl_or_b32 v146, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v192, v190, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v167, v17
	scratch_load_b32 v17, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v156, v17
	ds_load_u8 v158, v47 offset:1968
	ds_load_u8 v226, v47 offset:1920
	ds_load_u8 v228, v47 offset:1856
	ds_load_u8 v215, v47 offset:1872
	ds_load_u8 v216, v47 offset:1808
	ds_load_u8 v197, v47 offset:1888
	ds_load_u8 v198, v47 offset:1824
	ds_load_u8 v162, v47 offset:1904
	ds_load_u8 v164, v47 offset:1840
	ds_load_u8 v230, v47 offset:1728
	ds_load_u8 v231, v47 offset:1792
	ds_load_u8 v217, v47 offset:1744
	ds_load_u8 v218, v47 offset:1680
	ds_load_u8 v199, v47 offset:1760
	ds_load_u8 v200, v47 offset:1696
	ds_load_u8 v169, v47 offset:1776
	ds_load_u8 v172, v47 offset:1712
	ds_load_u8 v233, v47 offset:1664
	ds_load_u8 v235, v47 offset:1600
	ds_load_u8 v219, v47 offset:1616
	ds_load_u8 v220, v47 offset:1552
	ds_load_u8 v205, v47 offset:1632
	ds_load_u8 v206, v47 offset:1568
	ds_load_u8 v178, v47 offset:1648
	ds_load_u8 v179, v47 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v94, v45
	ds_store_b8 v94, v40 offset:256
	ds_store_b8 v94, v41 offset:512
	ds_store_b8 v94, v44 offset:1024
	ds_store_b8 v94, v105 offset:1280
	ds_store_b8 v94, v46 offset:1536
	ds_store_b8 v94, v224 offset:2048
	ds_store_b8 v94, v225 offset:2304
	ds_store_b8 v94, v227 offset:2560
	ds_store_b8 v94, v249 offset:3072
	ds_store_b8 v94, v250 offset:3328
	ds_store_b8 v94, v251 offset:3584
	ds_store_b8 v94, v253 offset:4096
	ds_store_b8 v94, v254 offset:4352
	ds_store_b8 v94, v100 offset:4608
	ds_store_b8 v94, v255 offset:5120
	ds_store_b8 v94, v10 offset:5376
	ds_store_b8 v94, v106 offset:5632
	ds_store_b8 v94, v108 offset:6144
	ds_store_b8 v94, v110 offset:6400
	ds_store_b8 v94, v117 offset:6656
	ds_store_b8 v94, v13 offset:7168
	ds_store_b8 v94, v14 offset:7424
	ds_store_b8 v94, v15 offset:7680
	ds_store_b8 v96, v43
	ds_store_b8 v98, v104
	scratch_load_b32 v10, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v150, v198, v197, 0xc0c0004
	v_perm_b32 v155, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	v_perm_b32 v154, v206, v205, 0xc0c0004
	v_lshl_or_b32 v150, v155, 16, v154
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v229
	scratch_load_b32 v10, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v252
	scratch_load_b32 v10, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v102
	scratch_load_b32 v10, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v107
	scratch_load_b32 v10, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v12
	scratch_load_b32 v10, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v10, v61 offset:1280
	ds_load_u8 v12, v61 offset:1024
	ds_load_u8 v224, v61 offset:1920
	ds_load_u8 v225, v61 offset:1664
	ds_load_u8 v227, v61 offset:1408
	ds_load_u8 v229, v61 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:1792
	ds_load_u8 v13, v61 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v227, v229, v227, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v61 offset:256
	ds_load_u8 v14, v61
	ds_load_u8 v15, v61 offset:896
	ds_load_u8 v16, v61 offset:640
	ds_load_u8 v40, v61 offset:384
	ds_load_u8 v41, v61 offset:128
	v_lshl_or_b32 v250, v12, 16, v10
	v_perm_b32 v10, v244, v243, 0xc0c0004
	v_perm_b32 v12, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v244, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v61 offset:768
	ds_load_u8 v43, v61 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_lshl_or_b32 v41, v224, 16, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v15, 16, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v43, v14, 0xc0c0004
	v_lshl_or_b32 v249, v14, 16, v13
	v_perm_b32 v13, v248, v247, 0xc0c0004
	v_perm_b32 v14, v246, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v243, v14, 16, v13
	ds_load_u8 v10, v61 offset:3328
	ds_load_u8 v12, v61 offset:3072
	ds_load_u8 v13, v61 offset:3968
	ds_load_u8 v14, v61 offset:3712
	ds_load_u8 v43, v61 offset:3456
	ds_load_u8 v44, v61 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:3840
	ds_load_u8 v45, v61 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v13, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v45, v12, 0xc0c0004
	ds_load_u8 v45, v61 offset:2304
	ds_load_u8 v46, v61 offset:2048
	ds_load_u8 v100, v61 offset:2944
	ds_load_u8 v102, v61 offset:2688
	ds_load_u8 v104, v61 offset:2432
	ds_load_u8 v105, v61 offset:2176
	v_lshl_or_b32 v246, v12, 16, v10
	v_perm_b32 v10, v234, v242, 0xc0c0004
	v_perm_b32 v12, v241, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v248, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v61 offset:2816
	ds_load_u8 v106, v61 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v102, v100, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v16, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v106, v46, 0xc0c0004
	v_lshl_or_b32 v245, v46, 16, v45
	v_perm_b32 v45, v222, v237, 0xc0c0004
	v_perm_b32 v46, v236, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v247, v46, 16, v45
	ds_load_u8 v10, v61 offset:5376
	ds_load_u8 v12, v61 offset:5120
	ds_load_u8 v45, v61 offset:6016
	ds_load_u8 v46, v61 offset:5760
	ds_load_u8 v106, v61 offset:5504
	ds_load_u8 v107, v61 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:5888
	ds_load_u8 v108, v61 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v108, v12, 0xc0c0004
	ds_load_u8 v108, v61 offset:4352
	ds_load_u8 v110, v61 offset:4096
	ds_load_u8 v117, v61 offset:4992
	ds_load_u8 v238, v61 offset:4736
	ds_load_u8 v239, v61 offset:4480
	ds_load_u8 v240, v61 offset:4224
	v_lshl_or_b32 v252, v12, 16, v10
	v_perm_b32 v10, v231, v228, 0xc0c0004
	v_perm_b32 v12, v226, v223, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v110, v108, 0xc0c0004
	ds_load_u8 v110, v61 offset:4864
	ds_load_u8 v222, v61 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v238, v117, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v45, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v222, v110, 0xc0c0004
	v_lshl_or_b32 v222, v12, 16, v10
	v_lshl_or_b32 v251, v110, 16, v108
	v_perm_b32 v108, v221, v235, 0xc0c0004
	v_perm_b32 v110, v233, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v221, v110, 16, v108
	ds_load_u8 v10, v61 offset:7424
	ds_load_u8 v12, v61 offset:7168
	ds_load_u8 v108, v61 offset:8064
	ds_load_u8 v110, v61 offset:7808
	ds_load_u8 v223, v61 offset:7552
	ds_load_u8 v226, v61 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:7936
	ds_load_u8 v228, v61 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v110, v108, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v226, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v14, 16, v13
	v_perm_b32 v14, v168, v165, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v228, v12, 0xc0c0004
	ds_load_u8 v228, v61 offset:6400
	ds_load_u8 v230, v61 offset:6144
	ds_load_u8 v241, v61 offset:7040
	ds_load_u8 v242, v61 offset:6784
	ds_load_u8 v255, v61 offset:6528
	ds_load_u8 v17, v61 offset:6272
	v_lshl_or_b32 v254, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v228, v230, v228, 0xc0c0004
	ds_load_u8 v230, v61 offset:6912
	ds_load_u8 v231, v61 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v17, v255, 0xc0c0004
	v_perm_b32 v17, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v16, 16, v15
	v_perm_b32 v15, v173, v170, 0xc0c0004
	v_perm_b32 v16, v182, v177, 0xc0c0004
	v_lshl_or_b32 v183, v15, 16, v14
	v_perm_b32 v14, v194, v193, 0xc0c0004
	v_perm_b32 v15, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v182, v17, 16, v16
	v_perm_b32 v16, v202, v201, 0xc0c0004
	v_perm_b32 v17, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	v_lshl_or_b32 v188, v15, 16, v14
	v_perm_b32 v14, v213, v211, 0xc0c0004
	v_perm_b32 v15, v210, v209, 0xc0c0004
	v_lshl_or_b32 v187, v17, 16, v16
	v_lshl_or_b32 v253, v230, 16, v228
	v_wmma_i32_16x16x16_iu4 v[230:237], v[249:250], v[38:39], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v16, v208, v207, 0xc0c0004
	v_perm_b32 v17, v204, v203, 0xc0c0004
	v_lshl_or_b32 v194, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[245:246], v[243:244], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v15, v214, v212, 0xc0c0004
	v_perm_b32 v14, v216, v215, 0xc0c0004
	v_lshl_or_b32 v193, v17, 16, v16
	v_perm_b32 v16, v220, v219, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[230:237], v[251:252], v[247:248], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v17, v218, v217, 0xc0c0004
	v_lshl_or_b32 v196, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[253:254], v[221:222], v[230:237] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v17, 16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v230
	v_cvt_f32_i32_e32 v12, v231
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v232
	v_cvt_f32_i32_e32 v19, v233
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v233, s47 :: v_dual_mov_b32 v232, s46
	v_dual_mov_b32 v231, s45 :: v_dual_mov_b32 v230, s44
	v_dual_mov_b32 v229, s43 :: v_dual_mov_b32 v228, s42
	v_dual_mov_b32 v227, s41 :: v_dual_mov_b32 v226, s40
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v20, v234
	v_cvt_f32_i32_e32 v21, v235
	v_cvt_f32_i32_e32 v22, v236
	v_cvt_f32_i32_e32 v23, v237
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[249:250], v[182:183], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[40:41], v[38:39], v[226:233] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[207:214], v[245:246], v[187:188], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[43:44], v[243:244], v[234:241] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[207:214], v[251:252], v[193:194], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[45:46], v[247:248], v[234:241] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[207:214], v[253:254], v[195:196], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[104:105], v[221:222], v[234:241] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v14, v207
	v_cvt_f32_i32_e32 v15, v208
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v16, v209
	v_cvt_f32_i32_e32 v17, v210
	v_cvt_f32_i32_e32 v100, v211
	v_cvt_f32_i32_e32 v102, v212
	v_cvt_f32_i32_e32 v106, v213
	v_cvt_f32_i32_e32 v107, v214
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[40:41], v[182:183], v[226:233] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v13, v234
	v_cvt_f32_i32_e32 v225, v235
	v_cvt_f32_i32_e32 v224, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[43:44], v[187:188], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[249:250], v[136:137], v[226:233] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v223, v237
	v_cvt_f32_i32_e32 v221, v240
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[45:46], v[193:194], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[180:187], v[245:246], v[140:141], v[180:187] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v39, v239
	v_cvt_f32_i32_e32 v38, v238
	v_cvt_f32_i32_e32 v222, v241
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[104:105], v[195:196], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[251:252], v[146:147], v[180:187] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v173, v213
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[180:187], v[253:254], v[150:151], v[180:187] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v108, v207
	v_cvt_f32_i32_e32 v168, v211
	v_cvt_f32_i32_e32 v110, v208
	v_cvt_f32_i32_e32 v117, v209
	v_cvt_f32_i32_e32 v154, v180
	v_cvt_f32_i32_e32 v155, v181
	v_cvt_f32_i32_e32 v160, v182
	v_cvt_f32_i32_e32 v161, v183
	v_cvt_f32_i32_e32 v163, v184
	v_cvt_f32_i32_e32 v166, v185
	v_cvt_f32_i32_e32 v171, v186
	v_cvt_f32_i32_e32 v174, v187
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[180:187], v[40:41], v[136:137], v[226:233] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v126, 16, v125
	v_lshl_or_b32 v136, v128, 16, v127
	v_perm_b32 v125, v145, v143, 0xc0c0004
	v_perm_b32 v126, v139, v138, 0xc0c0004
	v_perm_b32 v127, v135, v134, 0xc0c0004
	v_perm_b32 v128, v133, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[180:187], v[43:44], v[140:141], v[180:187] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v165, v210
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v133, v126, 16, v125
	v_perm_b32 v125, v159, v157, 0xc0c0004
	v_lshl_or_b32 v134, v128, 16, v127
	v_perm_b32 v126, v153, v152, 0xc0c0004
	v_perm_b32 v127, v149, v148, 0xc0c0004
	v_perm_b32 v128, v144, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[180:187], v[45:46], v[146:147], v[180:187] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v170, v212
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v139, v126, 16, v125
	v_perm_b32 v125, v179, v178, 0xc0c0004
	v_lshl_or_b32 v138, v128, 16, v127
	v_perm_b32 v126, v172, v169, 0xc0c0004
	v_perm_b32 v127, v164, v162, 0xc0c0004
	v_perm_b32 v128, v158, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[180:187], v[104:105], v[150:151], v[180:187] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v214
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v140, v126, 16, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v141, v128, 16, v127
	v_wmma_i32_16x16x16_iu4 v[125:132], v[249:250], v[136:137], v[226:233] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v185
	v_cvt_f32_i32_e32 v146, v180
	v_cvt_f32_i32_e32 v147, v181
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[245:246], v[133:134], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v182
	v_cvt_f32_i32_e32 v151, v183
	v_cvt_f32_i32_e32 v175, v184
	v_cvt_f32_i32_e32 v180, v186
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[251:252], v[138:139], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v181, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[253:254], v[140:141], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v142, v126
	v_cvt_f32_i32_e32 v143, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v128
	v_cvt_f32_i32_e32 v145, v129
	v_cvt_f32_i32_e32 v148, v130
	v_cvt_f32_i32_e32 v149, v131
	v_cvt_f32_i32_e32 v152, v132
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[40:41], v[136:137], v[226:233] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[43:44], v[133:134], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[45:46], v[138:139], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[104:105], v[140:141], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v40, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v125, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v41, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v126, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v43, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v127, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v44, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v128, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v45, v129
	v_cvt_f32_i32_e32 v46, v130
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b64 v[129:130], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v104, v131
	v_cvt_f32_i32_e32 v105, v132
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v125, s78, v125, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v126, s78, v126, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v127, s78, v127, 1
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v128, s78, v128, 1
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s78, s78, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v129, v129, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v127, 0x80000000, v127, s1
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v129, v129, s[56:59], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v133, v126, s[52:55], 0 offen
	buffer_load_u16 v134, v127, s[52:55], 0 offen
	buffer_load_u16 v136, v128, s[52:55], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v127, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s78, s72
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v126, 16, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v137, 16, v125
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v10, v137
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v127, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v119
	ds_load_b128 v[129:132], v119 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v42, v10, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v12, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v10, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v18, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v10, v127 :: v_dual_mul_f32 v10, v19, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v10, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v10, 16, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v14, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v12, v125 :: v_dual_mul_f32 v12, v15, v10
	v_fmac_f32_e32 v97, v12, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v12, v127 :: v_dual_mul_f32 v12, v17, v10
	v_dual_fmac_f32 v93, v12, v128 :: v_dual_lshlrev_b32 v12, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v154, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v14, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v14, v155, v12 :: v_dual_mul_f32 v13, v13, v137
	v_mul_f32_e32 v17, v222, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v16, v221, v137 :: v_dual_fmac_f32 v79, v14, v126
	v_mul_f32_e32 v14, v160, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v14, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v161, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v14, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v14, 16, v136
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v135, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v62, v15, v125 :: v_dual_mul_f32 v15, v142, v14
	v_fmac_f32_e32 v60, v15, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v143, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v15, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v144, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v58, v15, v128 :: v_dual_mul_f32 v15, v20, v137
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v121, v15, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v21, v137
	v_mul_f32_e32 v21, v175, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v15, v130 :: v_dual_mul_f32 v15, v22, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v176, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v15, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v23, v137
	v_mul_f32_e32 v23, v180, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v15, v132 :: v_dual_mul_f32 v15, v100, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v92, v15, v129 :: v_dual_mul_f32 v15, v102, v10
	v_fmac_f32_e32 v91, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v106, v10
	v_mul_f32_e32 v20, v173, v10
	v_mul_f32_e32 v18, v168, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v170, v10 :: v_dual_fmac_f32 v90, v15, v131
	v_mul_f32_e32 v15, v107, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v15, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v163, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v76, v15, v129 :: v_dual_mul_f32 v15, v166, v12
	v_fmac_f32_e32 v75, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v171, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v15, v131 :: v_dual_mul_f32 v15, v174, v12
	v_fmac_f32_e32 v73, v15, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v145, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v15, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v148, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v149, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v15, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v152, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v15, v132
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[125:128], v119 offset:512
	ds_load_b128 v[129:132], v119 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v39, v137
	v_mul_f32_e32 v39, v46, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v115, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v13, v225, v137 :: v_dual_fmac_f32 v82, v20, v131
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v68, v21, v129 :: v_dual_fmac_f32 v109, v15, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v103, v16, v131 :: v_dual_fmac_f32 v114, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v224, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v17, v132 :: v_dual_fmac_f32 v84, v18, v129
	v_fmac_f32_e32 v83, v19, v130
	v_fmac_f32_e32 v67, v22, v130
	v_fmac_f32_e32 v113, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v223, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v23, v131
	v_fmac_f32_e32 v48, v39, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v112, v13, v128 :: v_dual_mul_f32 v13, v108, v10
	v_dual_fmac_f32 v88, v13, v125 :: v_dual_mul_f32 v13, v110, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v117, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v165, v10
	v_mul_f32_e32 v10, v177, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v13, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v146, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v10, v132 :: v_dual_fmac_f32 v72, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v147, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v150, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v70, v13, v127 :: v_dual_mul_f32 v13, v151, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v181, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v13, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v40, v14
	v_mul_f32_e32 v40, v104, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v12, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v13, v41, v14 :: v_dual_fmac_f32 v66, v40, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v43, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v44, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v50, v13, v128 :: v_dual_mul_f32 v13, v38, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v45, v14
	v_mul_f32_e32 v14, v105, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v13, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v38, v129
	v_fmac_f32_e32 v64, v14, v132
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v36, v78, v78 :: v_dual_max_f32 v37, v77, v77
	v_dual_max_f32 v38, v76, v76 :: v_dual_max_f32 v39, v75, v75
	v_dual_max_f32 v1, v42, v42 :: v_dual_max_f32 v2, v124, v124
	v_dual_max_f32 v26, v88, v88 :: v_dual_max_f32 v27, v87, v87
	v_dual_max_f32 v28, v86, v86 :: v_dual_max_f32 v29, v85, v85
	v_max_f32_e32 v30, v84, v84
	v_dual_max_f32 v40, v74, v74 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v41, 0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v45, 0, v39 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v38, v73, v73 :: v_dual_max_f32 v39, v72, v72
	v_dual_max_f32 v42, v71, v71 :: v_dual_max_f32 v43, v70, v70
	v_dual_max_f32 v44, v69, v69 :: v_dual_max_f32 v71, 0, v38
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v83, v83 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v33, v81, v81 :: v_dual_max_f32 v34, v80, v80
	v_max_f32_e32 v78, 0, v39
	v_dual_max_f32 v80, 0, v43 :: v_dual_max_f32 v81, 0, v44
	v_dual_max_f32 v38, v68, v68 :: v_dual_max_f32 v39, v67, v67
	v_max_f32_e32 v44, v62, v62
	v_dual_max_f32 v16, v103, v103 :: v_dual_max_f32 v17, v101, v101
	v_max_f32_e32 v20, v95, v95
	v_dual_max_f32 v32, v82, v82 :: v_dual_max_f32 v35, v79, v79
	v_dual_max_f32 v79, 0, v42 :: v_dual_max_f32 v42, v65, v65
	v_max_f32_e32 v43, v63, v63
	v_dual_max_f32 v83, 0, v39 :: v_dual_max_f32 v86, 0, v44
	v_max_f32_e32 v44, v56, v56
	v_dual_max_f32 v18, v99, v99 :: v_dual_max_f32 v19, v97, v97
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v23, v91, v91 :: v_dual_max_f32 v82, 0, v38
	v_dual_max_f32 v85, 0, v43 :: v_dual_max_f32 v84, 0, v42
	v_dual_max_f32 v39, v59, v59 :: v_dual_max_f32 v42, v58, v58
	v_max_f32_e32 v91, 0, v44
	v_dual_max_f32 v38, v60, v60 :: v_dual_max_f32 v43, v57, v57
	v_dual_max_f32 v3, v123, v123 :: v_dual_max_f32 v4, v122, v122
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, v121, v121 :: v_dual_max_f32 v6, v120, v120
	v_dual_max_f32 v7, v118, v118 :: v_dual_max_f32 v8, v116, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v115, v115 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v93, v93
	v_dual_max_f32 v22, v92, v92 :: v_dual_max_f32 v25, v89, v89
	v_max_f32_e32 v24, v90, v90
	v_dual_max_f32 v88, 0, v39 :: v_dual_max_f32 v39, v54, v54
	v_max_f32_e32 v89, 0, v42
	v_dual_max_f32 v87, 0, v38 :: v_dual_max_f32 v90, 0, v43
	v_dual_max_f32 v43, v52, v52 :: v_dual_max_f32 v38, v55, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v42, v53, v53 :: v_dual_max_f32 v93, 0, v39
	v_max_f32_e32 v44, v51, v51
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v114, v114
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, v112, v112
	v_max_f32_e32 v12, v113, v113
	v_dual_max_f32 v14, v111, v111 :: v_dual_max_f32 v15, v109, v109
	v_max_f32_e32 v95, 0, v43
	v_dual_max_f32 v39, v49, v49 :: v_dual_max_f32 v92, 0, v38
	v_dual_max_f32 v38, v50, v50 :: v_dual_mul_f32 v47, v1, v1
	v_dual_max_f32 v43, v66, v66 :: v_dual_max_f32 v96, 0, v44
	v_max_f32_e32 v44, v64, v64
	v_max_f32_e32 v94, 0, v42
	v_dual_max_f32 v42, v48, v48 :: v_dual_mul_f32 v51, v3, v3
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_max_f32_e32 v29, 0, v29
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_max_f32_e32 v35, 0, v35
	v_dual_max_f32 v97, 0, v38 :: v_dual_max_f32 v98, 0, v39
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v55, v5, v5
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v99, 0, v42 :: v_dual_max_f32 v100, 0, v43
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v63, v10, v10
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v101, 0, v44 :: v_dual_mul_f32 v50, v2, v2
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v59, v7, v7 :: v_dual_mul_f32 v52, v4, v4
	v_dual_mul_f32 v73, v15, v15 :: v_dual_mul_f32 v56, v6, v6
	v_mul_f32_e32 v67, v12, v12
	v_dual_mul_f32 v60, v8, v8 :: v_dual_mul_f32 v77, v17, v17
	v_dual_mul_f32 v64, v11, v11 :: v_dual_mul_f32 v75, v18, v18
	v_dual_mul_f32 v68, v13, v13 :: v_dual_mul_f32 v65, v23, v23
	v_dual_mul_f32 v72, v14, v14 :: v_dual_mul_f32 v69, v21, v21
	v_dual_mul_f32 v76, v16, v16 :: v_dual_mul_f32 v61, v25, v25
	v_dual_mul_f32 v74, v19, v19 :: v_dual_mul_f32 v53, v29, v29
	v_dual_mul_f32 v70, v20, v20 :: v_dual_mul_f32 v57, v27, v27
	v_dual_mul_f32 v66, v22, v22 :: v_dual_mul_f32 v39, v36, v36
	v_dual_mul_f32 v62, v24, v24 :: v_dual_mul_f32 v49, v30, v30
	v_mul_f32_e32 v58, v26, v26
	v_dual_mul_f32 v54, v28, v28 :: v_dual_mul_f32 v43, v34, v34
	v_mul_f32_e32 v48, v31, v31
	v_mul_f32_e32 v46, v32, v32
	v_dual_mul_f32 v44, v33, v33 :: v_dual_mul_f32 v31, v80, v80
	v_dual_mul_f32 v42, v35, v35 :: v_dual_mul_f32 v29, v82, v82
	v_dual_mul_f32 v38, v37, v37 :: v_dual_mul_f32 v27, v84, v84
	v_mul_f32_e32 v37, v41, v41
	v_dual_mul_f32 v36, v45, v45 :: v_dual_mul_f32 v25, v86, v86
	v_dual_mul_f32 v35, v40, v40 :: v_dual_mul_f32 v34, v71, v71
	v_mul_f32_e32 v23, v88, v88
	v_dual_mul_f32 v33, v78, v78 :: v_dual_mul_f32 v32, v79, v79
	v_dual_mul_f32 v21, v90, v90 :: v_dual_mul_f32 v30, v81, v81
	v_dual_mul_f32 v19, v92, v92 :: v_dual_mul_f32 v28, v83, v83
	v_dual_mul_f32 v17, v94, v94 :: v_dual_mul_f32 v26, v85, v85
	v_dual_mul_f32 v15, v96, v96 :: v_dual_mul_f32 v24, v87, v87
	v_mov_b32_e32 v3, v9
	v_dual_mul_f32 v22, v89, v89 :: v_dual_mul_f32 v7, v99, v99
	v_dual_mul_f32 v20, v91, v91 :: v_dual_and_b32 v103, 0xf0, v0
	v_mul_f32_e32 v18, v93, v93
	v_mul_f32_e32 v16, v95, v95
	v_mul_f32_e32 v10, v97, v97
	v_mul_f32_e32 v8, v98, v98
	v_mul_f32_e32 v6, v100, v100
	v_mul_f32_e32 v4, v101, v101
	v_and_b32_e32 v102, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v50, v50 :: v_dual_max_f32 v2, v47, v47
	v_max3_f32 v5, v52, v55, v56
	v_max3_f32 v9, v64, v67, v68
	v_max3_f32 v11, v72, v73, v76
	v_dual_max_f32 v12, v75, v75 :: v_dual_max_f32 v1, v2, v1
	v_max_f32_e32 v2, v74, v74
	v_max3_f32 v40, v57, v54, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v9, v9, v11, v77
	v_max_f32_e32 v11, v43, v43
	v_max3_f32 v1, v1, v51, v5
	v_max_f32_e32 v5, v42, v42
	v_max_f32_e32 v2, v12, v2
	v_max3_f32 v12, v69, v66, v65
	v_max3_f32 v41, v49, v48, v46
	v_max3_f32 v14, v62, v61, v58
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v38, v37, v36
	v_max3_f32 v45, v32, v31, v30
	v_max3_f32 v71, v29, v28, v27
	v_max3_f32 v2, v2, v70, v12
	v_max3_f32 v12, v40, v41, v44
	v_max3_f32 v13, v59, v60, v63
	v_max3_f32 v40, v35, v34, v33
	v_max3_f32 v5, v5, v39, v11
	v_max3_f32 v11, v45, v71, v26
	v_max3_f32 v2, v2, v14, v12
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v1, v13, v9
	v_max3_f32 v13, v16, v15, v10
	v_max3_f32 v5, v5, v40, v11
	v_max3_f32 v14, v8, v7, v6
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v40, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v24, v24
	v_max_f32_e32 v45, v25, v25
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v13, v13, v14, v4
	v_max_f32_e32 v14, v40, v40
	v_max3_f32 v12, v19, v18, v17
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v2, v14 :: v_dual_and_b32 v2, 4, v0
	v_max_f32_e32 v9, v45, v41
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v83, v2, 6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v23, v11
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v12, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v12, 4, v0
	v_dual_max_f32 v78, v1, v11 :: v_dual_and_b32 v13, 0x60, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v1, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x80, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v40, v41, v41 :: v_dual_and_b32 v41, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v1, v1
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 3, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v5, v40 :: v_dual_lshlrev_b32 v11, 5, v41
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v41, 9, 0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v9, v1 :: v_dual_and_b32 v40, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v45, 0x680, v12, v11
	v_lshl_add_u32 v5, v2, 2, v5
	v_lshlrev_b32_e32 v12, 1, v14
	v_xor_b32_e32 v71, v11, v13
	v_add_nc_u32_e32 v14, 0, v14
	v_xor_b32_e32 v45, v45, v13
	v_lshl_add_u32 v5, v40, 4, v5
	v_lshlrev_b32_e32 v40, 3, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v5, v12, v71
	v_add3_u32 v5, v83, v82, v45
	ds_store_b128 v1, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v78
	v_mov_b32_e32 v5, v79
	v_mov_b32_e32 v9, v80
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v45, v78, v78
	v_max_f32_e32 v71, v79, v79
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v45, v1
	v_max_f32_e32 v45, v80, v80
	v_max_f32_e32 v5, v71, v5
	v_max_f32_e32 v71, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v45, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v5 :: v_dual_max_f32 v45, v78, v71
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v71, v9
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v78, v45 :: v_dual_max_f32 v79, v79, v79
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v79
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v5, v80 :: v_dual_max_f32 v78, v78, v78
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v71
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v45, v45, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v71, v9
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v81, v45 :: v_dual_max_f32 v78, v79, v79
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v80, v80
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v1, v78 :: v_dual_max_f32 v1, v71, v71
	v_max_f32_e32 v79, v5, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v81, v81
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v71, 1, v13
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v9, v1 :: v_dual_lshlrev_b32 v1, 5, v2
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v41, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v45, v5
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v14, v71, v40
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v103
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v2, v1, v40
	ds_store_b128 v5, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v1
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 32, v9
	v_or_b32_e32 v71, 16, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v78, v78
	v_dual_max_f32 v41, v80, v80 :: v_dual_max_f32 v84, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	v_max_f32_e32 v80, 0x2b8cbccc, v41
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v84, 0x2b8cbccc, v84
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v82, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s38, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v45, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v40, s0, s38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[68:69], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v14, v45, 1.0
	v_fmac_f32_e32 v45, v41, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s39, 0, s0
	v_add_co_u32 v78, s0, s38, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v86, v82, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s39, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	v_fma_f32 v71, -v14, v86, v82
	v_fma_f32 v2, -v83, v85, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[40:41]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v81, 0x2b8cbccc, v1
	v_fmac_f32_e32 v86, v71, v45
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v84
	v_fmac_f32_e32 v85, v2, v85
	v_div_scale_f32 v2, s6, v80, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v86, v82
	v_rcp_f32_e32 v14, v71
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v41.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v45, v86
	v_mul_f32_e32 v45, v2, v85
	v_rcp_f32_e32 v86, v82
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[68:69], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v71, v14, 1.0
	v_fma_f32 v5, -v83, v45, v2
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v14, v40, v14
	v_div_scale_f32 v40, s7, v84, 0x40e00000, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v82, v86, 1.0
	v_fmac_f32_e32 v45, v5, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v41.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v88, v40, v14
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, s8, v81, 0x40e00000, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v78, -v71, v88, v40
	v_fma_f32 v2, -v83, v45, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v87, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v88, v78, v14
	v_div_fmas_f32 v45, v2, v85, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v78, -v82, v79, v87
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v71, v88, v40
	v_div_fixup_f32 v45, v45, 0x40e00000, v80
	v_fmac_f32_e32 v79, v78, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s38, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v83, v83, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v82, v79, v87
	v_div_fmas_f32 v14, v40, v14, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v40, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v41.l, v45.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v71, v71, v86, v79
	v_div_fixup_f32 v14, v14, 0x40e00000, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v83, v83, v50
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s39, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v71, v71, 0x40e00000, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v41
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v82, -v80, v40, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v14.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, v41.h
	v_mov_b16_e32 v41.l, v71.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[1:2]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v82, v40
	v_div_scale_f32 v82, vcc_lo, v47, v83, v47
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[68:69], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v83, v83, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v41, 1, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v83, v83, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v45, v78, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v82, v40
	v_fma_f32 v45, -v79, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v14, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v71, v41, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v41, v88
	v_fma_f32 v86, -v80, v81, v82
	v_fmac_f32_e32 v84, v45, v84
	v_div_scale_f32 v89, s8, v50, v83, v50
	v_div_scale_f32 v92, null, v83, v83, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v86, v40
	v_mul_f32_e32 v86, v89, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v85, v87, 1.0
	v_fma_f32 v91, -v88, v41, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v81, v82
	v_fma_f32 v82, -v79, v86, v89
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s9, v51, v83, v51
	v_fmac_f32_e32 v41, v91, v41
	v_div_scale_f32 v91, null, v83, v83, v56
	v_div_fmas_f32 v40, v80, v40, v81
	v_fmac_f32_e32 v86, v82, v84
	v_mul_f32_e32 v80, v90, v87
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v82, s10, v52, v83, v52
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v47, v40, v83, v47
	v_fma_f32 v40, -v79, v86, v89
	v_fma_f32 v79, -v85, v80, v90
	v_mul_f32_e32 v89, v82, v41
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v92, v81, 1.0
	v_div_fmas_f32 v40, v40, v84, v86
	v_fmac_f32_e32 v80, v79, v87
	v_fma_f32 v79, -v88, v89, v82
	v_fma_f32 v86, -v91, v93, 1.0
	v_fmac_f32_e32 v81, v94, v81
	v_div_scale_f32 v84, s8, v55, v83, v55
	v_div_fixup_f32 v50, v40, v83, v50
	v_fma_f32 v40, -v85, v80, v90
	v_fmac_f32_e32 v89, v79, v41
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, null, v83, v83, v59
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v79, v84, v81
	v_div_scale_f32 v85, s11, v56, v83, v56
	v_div_fmas_f32 v40, v40, v87, v80
	v_fma_f32 v80, -v88, v89, v82
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v83, v83, v60
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v92, v79, v84
	v_mul_f32_e32 v88, v85, v93
	v_div_fmas_f32 v41, v80, v41, v89
	v_rcp_f32_e32 v80, v90
	v_div_fixup_f32 v51, v40, v83, v51
	v_fmac_f32_e32 v79, v82, v81
	v_fma_f32 v82, -v91, v88, v85
	v_fma_f32 v89, -v86, v87, 1.0
	v_div_fixup_f32 v52, v41, v83, v52
	v_div_scale_f32 v41, s9, v59, v83, v59
	v_fma_f32 v40, -v92, v79, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v88, v82, v93 :: v_dual_fmac_f32 v87, v89, v87
	v_fma_f32 v82, -v90, v80, 1.0
	v_div_scale_f32 v84, null, v83, v83, v63
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v89, null, v83, v83, v64
	v_div_fmas_f32 v40, v40, v81, v79
	v_fma_f32 v79, -v91, v88, v85
	v_dual_mul_f32 v81, v41, v87 :: v_dual_fmac_f32 v80, v82, v80
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v85, s8, v60, v83, v60
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v40, v83, v55
	v_div_fmas_f32 v79, v79, v93, v88
	v_fma_f32 v88, -v86, v81, v41
	v_mul_f32_e32 v91, v85, v80
	v_rcp_f32_e32 v93, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v84, v82, 1.0
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v40, -v90, v91, v85
	v_div_fixup_f32 v56, v79, v83, v56
	v_div_scale_f32 v79, s10, v63, v83, v63
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v88, null, v83, v83, v67
	v_fma_f32 v41, -v86, v81, v41
	v_fmac_f32_e32 v91, v40, v80
	v_fma_f32 v92, -v89, v93, 1.0
	v_mul_f32_e32 v40, v79, v82
	v_rcp_f32_e32 v86, v88
	v_div_fmas_f32 v41, v41, v87, v81
	v_fma_f32 v81, -v90, v91, v85
	v_div_scale_f32 v94, null, v83, v83, v68
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v64, v83, v64
	v_fma_f32 v85, -v84, v40, v79
	v_div_fmas_f32 v80, v81, v80, v91
	v_rcp_f32_e32 v81, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v92, v93
	v_fma_f32 v90, -v88, v86, 1.0
	v_fmac_f32_e32 v40, v85, v82
	v_div_fixup_f32 v59, v41, v83, v59
	v_div_fixup_f32 v60, v80, v83, v60
	v_fma_f32 v85, -v89, v87, v92
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v67, v83, v67
	v_fma_f32 v41, -v84, v40, v79
	v_fma_f32 v80, -v94, v81, 1.0
	v_div_scale_f32 v84, null, v83, v83, v72
	v_fmac_f32_e32 v87, v85, v93
	v_mul_f32_e32 v79, v90, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v84
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s9, v68, v83, v68
	v_div_fmas_f32 v40, v41, v82, v40
	v_fma_f32 v41, -v89, v87, v92
	v_fma_f32 v82, -v88, v79, v90
	v_div_scale_f32 v89, null, v83, v83, v73
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v84, v80, 1.0
	v_fmac_f32_e32 v79, v82, v86
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v41, v41, v93, v87
	v_mul_f32_e32 v87, v85, v81
	v_div_fixup_f32 v63, v40, v83, v63
	v_fma_f32 v40, -v88, v79, v90
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v91, null, v83, v83, v76
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v64, v41, v83, v64
	v_fma_f32 v41, -v94, v87, v85
	v_div_scale_f32 v88, s10, v72, v83, v72
	v_fma_f32 v90, -v89, v82, 1.0
	v_div_fmas_f32 v40, v40, v86, v79
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v87, v41, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v41, v88, v80 :: v_dual_fmac_f32 v82, v90, v82
	v_div_scale_f32 v86, s8, v73, v83, v73
	v_div_scale_f32 v90, null, v83, v83, v77
	v_div_fixup_f32 v67, v40, v83, v67
	v_fma_f32 v40, -v94, v87, v85
	v_fma_f32 v85, -v84, v41, v88
	v_mul_f32_e32 v92, v86, v82
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v41, v85, v80
	v_div_fmas_f32 v40, v40, v81, v87
	v_fma_f32 v81, -v89, v92, v86
	v_fmac_f32_e32 v79, v94, v79
	v_div_scale_f32 v85, s9, v76, v83, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v68, v40, v83, v68
	v_fma_f32 v87, -v90, v93, 1.0
	v_fma_f32 v40, -v84, v41, v88
	v_fmac_f32_e32 v92, v81, v82
	v_mul_f32_e32 v81, v85, v79
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v84, s11, v77, v83, v77
	v_div_fmas_f32 v40, v40, v80, v41
	v_fma_f32 v41, -v89, v92, v86
	v_fma_f32 v80, -v91, v81, v85
	v_div_scale_f32 v89, null, v78, v78, v74
	v_mul_f32_e32 v88, v84, v93
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	v_rcp_f32_e32 v80, v89
	v_div_scale_f32 v87, null, v78, v78, v75
	v_div_fmas_f32 v41, v41, v82, v92
	v_fma_f32 v82, -v90, v88, v84
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v45, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v87
	v_div_fixup_f32 v72, v40, v83, v72
	v_fma_f32 v40, -v91, v81, v85
	v_fmac_f32_e32 v88, v82, v93
	v_fma_f32 v82, -v89, v80, 1.0
	v_div_scale_f32 v85, null, v78, v78, v70
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v82, v80
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v86, 1.0
	v_div_fmas_f32 v40, v40, v79, v81
	v_fma_f32 v79, -v90, v88, v84
	v_div_scale_f32 v84, s9, v74, v78, v74
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v92, v86
	v_div_fmas_f32 v79, v79, v93, v88
	v_mul_f32_e32 v91, v84, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fixup_f32 v76, v40, v83, v76
	v_div_scale_f32 v90, null, v78, v78, v69
	v_div_fixup_f32 v77, v79, v83, v77
	v_fma_f32 v40, -v89, v91, v84
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v79, s10, v70, v78, v70
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v40, v80
	v_div_scale_f32 v92, null, v78, v78, v65
	v_mul_f32_e32 v40, v79, v82
	v_div_fixup_f32 v73, v41, v83, v73
	v_div_scale_f32 v41, s8, v75, v78, v75
	v_div_scale_f32 v83, null, v78, v78, v66
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v41, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v87, v81, v41
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v88, -v90, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v87, v81, v41
	v_rcp_f32_e32 v87, v83
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s11, v69, v78, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v41, v41, v86, v81
	v_fma_f32 v81, -v89, v91, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v85, v40, v79
	v_mul_f32_e32 v86, v88, v93
	v_div_fixup_f32 v75, v41, v78, v75
	v_div_fmas_f32 v80, v81, v80, v91
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v89, -v83, v87, 1.0
	v_fmac_f32_e32 v40, v84, v82
	v_fma_f32 v84, -v90, v86, v88
	v_div_fixup_f32 v74, v80, v78, v74
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s8, v66, v78, v66
	v_fmac_f32_e32 v86, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v92, v81, 1.0
	v_div_scale_f32 v84, null, v78, v78, v62
	v_fma_f32 v41, -v85, v40, v79
	v_mul_f32_e32 v79, v89, v87
	v_fmac_f32_e32 v81, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v85, s9, v65, v78, v65
	v_div_fmas_f32 v40, v41, v82, v40
	v_fma_f32 v41, -v90, v86, v88
	v_fma_f32 v82, -v83, v79, v89
	v_div_scale_f32 v88, null, v78, v78, v61
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v70, v40, v78, v70
	v_fmac_f32_e32 v79, v82, v87
	v_rcp_f32_e32 v82, v88
	v_fma_f32 v90, -v84, v80, 1.0
	v_div_fmas_f32 v41, v41, v93, v86
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v40, -v83, v79, v89
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v78, v78, v58
	v_div_fixup_f32 v69, v41, v78, v69
	v_fma_f32 v41, -v92, v86, v85
	v_div_scale_f32 v83, s10, v62, v78, v62
	v_fma_f32 v89, -v88, v82, 1.0
	v_div_fmas_f32 v40, v40, v87, v79
	v_rcp_f32_e32 v79, v90
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v86, v41, v81 :: v_dual_mul_f32 v41, v83, v80
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v87, s8, v61, v78, v61
	v_div_scale_f32 v89, null, v78, v78, v57
	v_div_fixup_f32 v66, v40, v78, v66
	v_fma_f32 v40, -v92, v86, v85
	v_fma_f32 v85, -v84, v41, v83
	v_mul_f32_e32 v91, v87, v82
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v41, v85, v80
	v_div_fmas_f32 v40, v40, v81, v86
	v_fma_f32 v81, -v88, v91, v87
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v58, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v65, v40, v78, v65
	v_fma_f32 v86, -v89, v92, 1.0
	v_fma_f32 v40, -v84, v41, v83
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v81, v85, v79
	v_div_scale_f32 v84, null, v78, v78, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v83, s11, v57, v78, v57
	v_div_fmas_f32 v40, v40, v80, v41
	v_fma_f32 v41, -v88, v91, v87
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v78, v78, v53
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v88
	v_div_fmas_f32 v41, v41, v82, v91
	v_fma_f32 v82, -v89, v87, v83
	v_div_fixup_f32 v62, v40, v78, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v86, 1.0
	v_fma_f32 v40, -v90, v81, v85
	v_div_fixup_f32 v61, v41, v78, v61
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v41, s8, v54, v78, v54
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v82, -v88, v80, 1.0
	v_div_scale_f32 v85, null, v78, v78, v49
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v78, v78, v44
	v_div_fmas_f32 v40, v40, v79, v81
	v_fma_f32 v79, -v89, v87, v83
	v_dual_mul_f32 v81, v41, v86 :: v_dual_fmac_f32 v80, v82, v80
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v83, s9, v53, v78, v53
	v_div_scale_f32 v89, null, v78, v78, v48
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v80
	v_div_fmas_f32 v79, v79, v92, v87
	v_fma_f32 v87, -v84, v81, v41
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v82, 1.0
	v_div_fixup_f32 v58, v40, v78, v58
	v_fma_f32 v40, -v88, v90, v83
	v_fmac_f32_e32 v81, v87, v86
	v_div_fixup_f32 v57, v79, v78, v57
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v79, s10, v49, v78, v49
	v_div_scale_f32 v87, null, v78, v78, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v41, -v84, v81, v41
	v_fmac_f32_e32 v90, v40, v80
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v40, v79, v82
	v_rcp_f32_e32 v84, v87
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v48, v78, v48
	v_div_fmas_f32 v41, v41, v86, v81
	v_fma_f32 v81, -v88, v90, v83
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v85, v40, v79
	v_mul_f32_e32 v86, v91, v92
	v_div_fixup_f32 v54, v41, v78, v54
	v_div_fmas_f32 v80, v81, v80, v90
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v88, -v87, v84, 1.0
	v_fmac_f32_e32 v40, v83, v82
	v_fma_f32 v83, -v89, v86, v91
	v_div_fixup_f32 v53, v80, v78, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v46, v78, v46
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v71, v71, v43
	v_fma_f32 v41, -v85, v40, v79
	v_mul_f32_e32 v79, v88, v84
	v_fmac_f32_e32 v81, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v85, s9, v44, v78, v44
	v_div_fmas_f32 v40, v41, v82, v40
	v_fma_f32 v41, -v89, v86, v91
	v_fma_f32 v82, -v87, v79, v88
	v_div_scale_f32 v89, null, v71, v71, v42
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v49, v40, v78, v49
	v_fmac_f32_e32 v79, v82, v84
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fmas_f32 v41, v41, v92, v86
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v40, -v87, v79, v88
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v71, v71, v39
	v_div_fixup_f32 v48, v41, v78, v48
	v_fma_f32 v41, -v93, v86, v85
	v_div_scale_f32 v87, s10, v43, v71, v43
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_fmas_f32 v40, v40, v84, v79
	v_rcp_f32_e32 v79, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v41, v81 :: v_dual_mul_f32 v41, v87, v80
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v84, s8, v42, v71, v42
	v_div_scale_f32 v88, null, v71, v71, v38
	v_div_fixup_f32 v46, v40, v78, v46
	v_fma_f32 v40, -v93, v86, v85
	v_fma_f32 v85, -v83, v41, v87
	v_mul_f32_e32 v91, v84, v82
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v41, v85, v80
	v_div_fmas_f32 v40, v40, v81, v86
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v39, v71, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v40, v78, v44
	v_fma_f32 v86, -v88, v92, 1.0
	v_fma_f32 v40, -v83, v41, v87
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v78, v85, v79
	v_div_scale_f32 v83, null, v71, v71, v37
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v81, s11, v38, v71, v38
	v_div_fmas_f32 v40, v40, v80, v41
	v_fma_f32 v41, -v89, v91, v84
	v_fma_f32 v80, -v90, v78, v85
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v87, null, v71, v71, v36
	v_mul_f32_e32 v86, v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v41, v41, v82, v91
	v_fma_f32 v82, -v88, v86, v81
	v_div_fixup_f32 v43, v40, v71, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v84, 1.0
	v_fma_f32 v40, -v90, v78, v85
	v_div_fixup_f32 v42, v41, v71, v42
	v_fmac_f32_e32 v86, v82, v92
	v_div_scale_f32 v41, s8, v37, v71, v37
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v82, -v87, v80, 1.0
	v_div_scale_f32 v85, null, v71, v71, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v79, v78
	v_fma_f32 v78, -v88, v86, v81
	v_mul_f32_e32 v79, v41, v84
	v_fmac_f32_e32 v80, v82, v80
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v82, s9, v36, v71, v36
	v_div_scale_f32 v88, null, v71, v71, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v82, v80
	v_div_fmas_f32 v78, v78, v92, v86
	v_fma_f32 v86, -v83, v79, v41
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v81, 1.0
	v_div_fixup_f32 v39, v40, v71, v39
	v_fma_f32 v40, -v87, v89, v82
	v_fmac_f32_e32 v79, v86, v84
	v_div_scale_f32 v86, null, v71, v71, v33
	v_div_fixup_f32 v38, v78, v71, v38
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s10, v35, v71, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v41, -v83, v79, v41
	v_fmac_f32_e32 v89, v40, v80
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v40, v78, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v34, v71, v34
	v_div_fmas_f32 v41, v41, v84, v79
	v_fma_f32 v79, -v87, v89, v82
	v_div_scale_f32 v92, null, v71, v71, v32
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v85, v40, v78
	v_mul_f32_e32 v84, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v40, v82, v81
	v_fma_f32 v82, -v88, v84, v90
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v33, v71, v33
	v_div_fixup_f32 v37, v41, v71, v37
	v_div_fixup_f32 v36, v79, v71, v36
	v_fma_f32 v41, -v85, v40, v78
	v_fmac_f32_e32 v84, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v71, v71, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s9, v32, v71, v32
	v_div_fmas_f32 v40, v41, v81, v40
	v_fma_f32 v41, -v88, v84, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v35, v40, v71, v35
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v41, v41, v91, v84
	v_mul_f32_e32 v84, v85, v80
	v_fma_f32 v40, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v41, v71, v34
	v_fma_f32 v41, -v92, v84, v85
	v_div_scale_f32 v86, s10, v31, v71, v31
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v71, v71, v29
	v_div_fmas_f32 v40, v40, v83, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v41, v80 :: v_dual_fmac_f32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v71, v71, v28
	v_mul_f32_e32 v41, v86, v79
	v_div_scale_f32 v83, s8, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v33, v40, v71, v33
	v_fma_f32 v40, -v92, v84, v85
	v_fma_f32 v85, -v82, v41, v86
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v80, v84
	v_fmac_f32_e32 v41, v85, v79
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v29, v71, v29
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v32, v40, v71, v32
	v_fma_f32 v40, -v82, v41, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v85, null, v71, v71, v27
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v82, s11, v28, v71, v28
	v_div_fmas_f32 v40, v40, v79, v41
	v_fma_f32 v41, -v88, v90, v83
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v88, null, v71, v71, v26
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v88
	v_div_fmas_f32 v41, v41, v81, v90
	v_fma_f32 v81, -v87, v86, v82
	v_div_fixup_f32 v31, v40, v71, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v83, 1.0
	v_fma_f32 v40, -v89, v80, v84
	v_div_fixup_f32 v30, v41, v71, v30
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v41, s8, v27, v71, v27
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v81, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v45, v45, v24
	v_div_fmas_f32 v40, v40, v78, v80
	v_fma_f32 v78, -v87, v86, v82
	v_mul_f32_e32 v80, v41, v83
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v45, v45, v25
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v82, s9, v26, v71, v26
	v_div_fmas_f32 v78, v78, v91, v86
	v_rcp_f32_e32 v84, v81
	v_fma_f32 v86, -v85, v80, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v82, v79
	v_div_fixup_f32 v29, v40, v71, v29
	v_div_fixup_f32 v28, v78, v71, v28
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v40, -v88, v87, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v91, null, v45, v45, v22
	v_fma_f32 v86, -v81, v84, 1.0
	v_fma_f32 v41, -v85, v80, v41
	v_div_scale_f32 v85, null, v45, v45, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v40, v79 :: v_dual_fmac_f32 v84, v86, v84
	v_div_fmas_f32 v41, v41, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v40, s10, v25, v45, v25
	v_fma_f32 v80, -v88, v87, v82
	v_fma_f32 v90, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v82, v40, v84
	v_div_scale_f32 v83, s8, v24, v45, v24
	v_fmac_f32_e32 v78, v90, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v85, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v79, v80, v79, v87
	v_fma_f32 v90, -v81, v82, v40
	v_mul_f32_e32 v92, v83, v78
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s11, v23, v45, v23
	v_div_fixup_f32 v27, v41, v71, v27
	v_div_fixup_f32 v26, v79, v71, v26
	v_div_scale_f32 v79, null, v45, v45, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v87, v88, v86 :: v_dual_fmac_f32 v82, v90, v84
	v_fma_f32 v80, -v89, v92, v83
	v_fma_f32 v71, -v91, v93, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v41, -v85, v87, v88
	v_fma_f32 v40, -v81, v82, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v80, v78 :: v_dual_fmac_f32 v93, v71, v93
	v_div_scale_f32 v71, s9, v22, v45, v22
	v_fmac_f32_e32 v87, v41, v86
	v_rcp_f32_e32 v41, v79
	v_div_fmas_f32 v40, v40, v84, v82
	v_fma_f32 v80, -v89, v92, v83
	v_mul_f32_e32 v81, v71, v93
	v_div_scale_f32 v82, null, v45, v45, v20
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v40, v45, v25
	v_div_fmas_f32 v78, v80, v78, v92
	v_fma_f32 v80, -v85, v87, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v79, v41, 1.0
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v91, v81, v71
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v24, v78, v45, v24
	v_fmac_f32_e32 v41, v83, v41
	v_div_scale_f32 v83, s8, v21, v45, v21
	v_fmac_f32_e32 v81, v85, v93
	v_div_fmas_f32 v80, v80, v86, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v83, v41
	v_fma_f32 v78, -v82, v84, 1.0
	v_fma_f32 v71, -v91, v81, v71
	v_div_fixup_f32 v23, v80, v45, v23
	v_div_scale_f32 v80, null, v45, v45, v19
	v_fma_f32 v85, -v79, v40, v83
	v_fmac_f32_e32 v84, v78, v84
	v_div_scale_f32 v78, s10, v20, v45, v20
	v_div_fmas_f32 v71, v71, v93, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v85, v41
	v_rcp_f32_e32 v86, v80
	v_mul_f32_e32 v81, v78, v84
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v71, v45, v22
	v_fma_f32 v71, -v79, v40, v83
	v_div_scale_f32 v85, null, v45, v45, v18
	v_fma_f32 v79, -v82, v81, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v71, v41, v40
	v_div_scale_f32 v41, null, v45, v45, v17
	v_fma_f32 v83, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v79, v84
	v_rcp_f32_e32 v79, v41
	v_div_scale_f32 v71, s8, v19, v45, v19
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v45, v45, v16
	v_div_fixup_f32 v21, v40, v45, v21
	v_fma_f32 v78, -v82, v81, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v41, v79, 1.0
	v_mul_f32_e32 v82, v71, v86
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v40, v87
	v_div_scale_f32 v40, s9, v18, v45, v18
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v45, v45, v15
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v80, v82, v71
	v_mul_f32_e32 v84, v40, v87
	v_div_scale_f32 v90, s10, v17, v45, v17
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v40
	v_mul_f32_e32 v93, v90, v79
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v16, v45, v16
	v_div_fixup_f32 v20, v78, v45, v20
	v_fma_f32 v71, -v80, v82, v71
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v78, -v41, v93, v90
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v40, -v85, v84, v40
	v_fmac_f32_e32 v93, v78, v79
	v_fma_f32 v78, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s8, v15, v45, v15
	v_div_fmas_f32 v71, v71, v86, v82
	v_fma_f32 v41, -v41, v93, v90
	v_fmac_f32_e32 v80, v78, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v81, v92
	v_div_scale_f32 v82, null, v45, v45, v10
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v71, v45, v19
	v_div_fmas_f32 v40, v40, v87, v84
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v84, v82
	v_div_fmas_f32 v41, v41, v79, v93
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	v_div_fixup_f32 v18, v40, v45, v18
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v41, v45, v17
	v_div_scale_f32 v41, null, v45, v45, v8
	v_fmac_f32_e32 v78, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v71, -v82, v84, 1.0
	v_div_fmas_f32 v79, v79, v89, v80
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, null, v45, v45, v4
	v_fma_f32 v40, -v88, v78, v81
	v_fmac_f32_e32 v84, v71, v84
	v_div_fixup_f32 v16, v79, v45, v16
	v_div_scale_f32 v79, null, v45, v45, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v92, v78
	v_div_scale_f32 v80, vcc_lo, v10, v45, v10
	v_rcp_f32_e32 v78, v41
	v_rcp_f32_e32 v83, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v40, v45, v15
	v_mul_f32_e32 v85, v80, v84
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v71, null, v45, v45, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v82, v85, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v41, v78, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v79, v83, 1.0
	v_rcp_f32_e32 v81, v71
	v_fmac_f32_e32 v85, v89, v84
	v_fma_f32 v92, -v86, v88, 1.0
	v_fmac_f32_e32 v78, v40, v78
	v_div_scale_f32 v40, s8, v8, v45, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v82, v85, v80
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s10, v6, v45, v6
	v_mul_f32_e32 v91, v40, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v84, v85
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_mul_f32_e32 v94, v90, v83
	v_fma_f32 v89, -v41, v91, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s11, v4, v45, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v85, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v89, v78
	v_fma_f32 v89, -v79, v94, v90
	v_fma_f32 v87, -v71, v81, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v41, v91, v40
	v_fmac_f32_e32 v94, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v92, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v78, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v10, v80, v45, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v40, v45, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v47
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v52, v59
	v_rndne_f32_e32 v59, v64
	v_rndne_f32_e32 v64, v72
	v_rndne_f32_e32 v72, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v44
	v_and_b32_e32 v44, 15, v54
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v64
	v_and_b32_e32 v64, 15, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v41, v88
	v_fma_f32 v41, -v79, v94, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s9, v7, v45, v7
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v86, v95, v92
	v_mul_f32_e32 v93, v87, v81
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v71, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v82, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v71, v93, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v81, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v41, v83, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v71, v45, v7
	v_div_fmas_f32 v78, v78, v88, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v41, v45, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v50
	v_rndne_f32_e32 v50, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v78, v45, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v51
	v_rndne_f32_e32 v51, v56
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v60
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v63
	v_rndne_f32_e32 v60, v67
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v67, v73
	v_rndne_f32_e32 v68, v76
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v77, v42
	v_cvt_i32_f32_e32 v78, v38
	v_cvt_i32_f32_e32 v95, v21
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v101, v15
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v15, 15, v40
	v_and_b32_e32 v16, 15, v41
	v_and_b32_e32 v21, 15, v52
	v_and_b32_e32 v52, 15, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v39, 10, v0
	v_and_b32_e32 v40, 16, v0
	v_lshlrev_b32_e32 v41, 4, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v96, v20
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v6, v6
	v_and_b32_e32 v20, 15, v51
	v_and_b32_e32 v51, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v39, 0x1800, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v41, v13
	v_lshlrev_b32_e32 v13, 6, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v53, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v78, 6, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v76, v43
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v92, v24
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v4, v4
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v55, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v39, 0, v39, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v6, 0x1b00, v13, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v74, v46
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v86, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v28
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v98, v18
	v_and_b32_e32 v18, 15, v47
	v_and_b32_e32 v19, 15, v50
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v32, 15, v73
	v_and_b32_e32 v33, 15, v70
	v_and_b32_e32 v34, 15, v69
	v_and_b32_e32 v35, 15, v66
	v_and_b32_e32 v50, 15, v76
	v_and_b32_e32 v56, 15, v81
	v_and_b32_e32 v66, 15, v91
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_and_b32_e32 v79, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v39, v10, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v6, v103, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v26
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v25, 15, v60
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v38, 15, v61
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v43, 15, v57
	v_and_b32_e32 v46, 15, v49
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v48, 15, v74
	v_and_b32_e32 v49, 15, v75
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v86
	v_and_b32_e32 v74, 15, v99
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[15:18]
	ds_store_b128 v7, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[15:18], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[31:34]
	ds_store_b128 v7, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v4
	ds_load_b128 v[31:34], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[50:53]
	ds_store_b128 v7, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v4
	ds_load_b128 v[50:53], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[66:69]
	ds_store_b128 v7, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v4
	ds_load_b128 v[66:69], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[19:22]
	ds_store_b128 v7, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[27:30], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v65
	v_and_b32_e32 v37, 15, v62
	v_med3_f32 v8, v8, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v7, v[35:38]
	ds_store_b128 v7, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v4
	ds_load_b128 v[45:48], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v70, 15, v95
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[54:57]
	ds_store_b128 v7, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[62:65], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v15, 4, v10
	v_lshl_or_b32 v15, v17, 4, v12
	v_lshl_or_b32 v17, v28, 4, v20
	v_lshl_or_b32 v20, v31, 4, v23
	v_lshl_or_b32 v31, v53, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v102
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s38, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[70:73]
	ds_store_b128 v7, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v4
	ds_load_b128 v[74:77], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s37, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s73, 7, v44
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s37, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v16, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v18, 4, v13
	v_lshl_or_b32 v16, v27, 4, v19
	v_lshl_or_b32 v18, v29, 4, v21
	v_lshl_or_b32 v19, v30, 4, v22
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v32, 4, v24
	v_lshl_or_b32 v22, v33, 4, v25
	v_lshl_or_b32 v23, v34, 4, v26
	v_lshl_or_b32 v24, v45, 4, v35
	v_lshl_or_b32 v25, v46, 4, v36
	v_lshl_or_b32 v26, v47, 4, v37
	v_lshl_or_b32 v27, v48, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v62, 4, v54
	v_lshl_or_b32 v33, v63, 4, v55
	v_lshl_or_b32 v34, v64, 4, v56
	v_lshl_or_b32 v35, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s49, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v50, 4, v41
	v_lshl_or_b32 v29, v51, 4, v42
	v_lshl_or_b32 v30, v52, 4, v43
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v74, 4, v70
	v_lshl_or_b32 v42, v75, 4, v71
	v_lshl_or_b32 v43, v76, 4, v72
	v_lshl_or_b32 v45, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v66, 4, v58
	v_lshl_or_b32 v37, v67, 4, v59
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v6.l, 0xff, v43.l
	v_lshlrev_b16 v6.h, 8, v42.l
	v_and_b16 v7.l, 0xff, v41.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s37, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s37, s37, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s37, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s51, 0xffff
	s_mov_b32 s8, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s73, 1
	s_and_b32 vcc_lo, vcc_lo, s74
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 160
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 160
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19844
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 160
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 160
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 39
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
