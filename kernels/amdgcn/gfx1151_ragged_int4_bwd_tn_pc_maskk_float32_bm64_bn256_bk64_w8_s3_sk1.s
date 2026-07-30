	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v215, v0 :: v_dual_mov_b32 v8, 0
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v70, 63, v215
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v66, 6, v215
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v216, 15, v215
	v_or_b32_e32 v149, 0x3f0, v215
	v_or_b32_e32 v150, 0x7f0, v215
	v_add_nc_u32_e32 v101, 0, v215
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_or_b32_e32 v69, 12, v66
	v_or_b32_e32 v71, 28, v66
	v_add_nc_u32_e32 v100, 0, v216
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s29, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s30, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s30, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v0, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s8, s2, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 1, v215
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v217, 0x70, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s31, s30, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s7, s6, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[30:31], 2
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s2, s2, s7
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s33, s6, 6
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s31, s2, 8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v0, s33, v70
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s20, s[4:5], 0x0
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x38
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v65, s31, v215
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s2, s3, 5
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s28, v0
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s20, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s20, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s29, v65
	.loc	1 1043 39                       ; ragged.py:1043:39
	s_lshl_b32 s21, s3, 5
	.loc	1 1049 39                       ; ragged.py:1049:39
	s_mul_i32 s3, s30, s4
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_ge_i32 s2, s21
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_or_b32_e32 v0, 0x300, v215
	v_or_b32_e32 v2, 0xb00, v215
	v_or_b32_e32 v3, 0xf00, v215
	v_mov_b32_e32 v41, 0
	v_or_b32_e32 v4, 0x1300, v215
	v_add_nc_u32_e32 v108, 0, v0
	v_add_nc_u32_e32 v0, 0, v2
	v_or_b32_e32 v5, 0x1700, v215
	v_mov_b32_e32 v43, v41
	scratch_store_b32 off, v215, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v45, v41
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v216, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b00, v215
	v_mov_b32_e32 v47, v41
	.loc	1 1046 23                       ; ragged.py:1046:23
	v_mad_u64_u32 v[67:68], null, s28, v66, v[70:71]
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v217, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v57, v41
	v_mad_u64_u32 v[68:69], null, s28, v69, v[70:71]
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v0, 0, v5
	v_mov_b32_e32 v61, v41
	v_or_b32_e32 v1, 0x700, v215
	v_or_b32_e32 v7, 0x1f00, v215
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v107, v100, v217
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v109, 0, v1
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v70
	v_mad_u64_u32 v[69:70], null, s28, v71, v[70:71]
	v_mad_u64_u32 v[70:71], null, s29, 3, v[65:66]
	v_mad_u64_u32 v[71:72], null, s29, 5, v[65:66]
	v_mad_u64_u32 v[72:73], null, s29, 6, v[65:66]
	v_mad_u64_u32 v[73:74], null, s29, 7, v[65:66]
	v_mad_u64_u32 v[74:75], null, s29, 9, v[65:66]
	v_mad_u64_u32 v[75:76], null, s29, 10, v[65:66]
	v_mad_u64_u32 v[76:77], null, s29, 11, v[65:66]
	v_mad_u64_u32 v[77:78], null, s29, 12, v[65:66]
	v_mad_u64_u32 v[78:79], null, s29, 13, v[65:66]
	v_mad_u64_u32 v[79:80], null, s29, 14, v[65:66]
	v_mad_u64_u32 v[80:81], null, s29, 15, v[65:66]
	v_mad_u64_u32 v[81:82], null, s29, 17, v[65:66]
	v_mad_u64_u32 v[82:83], null, s29, 18, v[65:66]
	v_mad_u64_u32 v[83:84], null, s29, 19, v[65:66]
	v_mad_u64_u32 v[84:85], null, s29, 20, v[65:66]
	v_mad_u64_u32 v[85:86], null, s29, 21, v[65:66]
	v_mad_u64_u32 v[86:87], null, s29, 22, v[65:66]
	v_mad_u64_u32 v[87:88], null, s29, 23, v[65:66]
	v_mad_u64_u32 v[88:89], null, s29, 24, v[65:66]
	v_mad_u64_u32 v[89:90], null, s29, 25, v[65:66]
	v_mad_u64_u32 v[90:91], null, s29, 26, v[65:66]
	v_mad_u64_u32 v[91:92], null, s29, 27, v[65:66]
	v_mad_u64_u32 v[92:93], null, s29, 28, v[65:66]
	v_mad_u64_u32 v[93:94], null, s29, 29, v[65:66]
	v_mad_u64_u32 v[94:95], null, s29, 30, v[65:66]
	v_mad_u64_u32 v[95:96], null, s29, 31, v[65:66]
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v115, 0, v7
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_lshl_b32 s24, s28, 2
	s_lshl_b32 s25, s28, 3
	s_lshl_b32 s26, s28, 4
	s_mul_i32 s27, s28, 20
	s_mul_i32 s34, s28, 24
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v66, off offset:32
	scratch_store_b64 off, v[0:1], off offset:36
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1056 42 is_stmt 1             ; ragged.py:1056:42
	s_add_i32 s35, s2, s3
	v_add_nc_u32_e32 v66, s29, v65
	s_mul_i32 s36, s35, s28
	v_lshl_add_u32 v96, s29, 1, v65
	.loc	1 1057 42                       ; ragged.py:1057:42
	s_mul_i32 s35, s35, s29
	.loc	1 1056 42                       ; ragged.py:1056:42
	s_add_i32 s36, s36, s33
	v_lshl_add_u32 v98, s29, 2, v65
	v_lshl_add_u32 v104, s29, 3, v65
	.loc	1 1057 42                       ; ragged.py:1057:42
	v_add_nc_u32_e32 v0, s35, v65
	v_lshl_add_u32 v118, s29, 4, v65
	v_add_nc_u32_e32 v134, s36, v67
	v_add_nc_u32_e32 v66, s35, v66
	v_add_nc_u32_e32 v96, s35, v96
	v_add_nc_u32_e32 v140, s36, v68
	v_add_nc_u32_e32 v97, s35, v70
	v_add_nc_u32_e32 v98, s35, v98
	v_add_nc_u32_e32 v99, s35, v71
	v_add_nc_u32_e32 v102, s35, v72
	v_add_nc_u32_e32 v104, s35, v104
	v_add_nc_u32_e32 v105, s35, v74
	v_add_nc_u32_e32 v106, s35, v75
	v_add_nc_u32_e32 v141, s36, v69
	.loc	1 1057 34 is_stmt 0             ; ragged.py:1057:34
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1057 42                       ; ragged.py:1057:42
	v_add_nc_u32_e32 v103, s35, v73
	v_add_nc_u32_e32 v110, s35, v76
	v_add_nc_u32_e32 v111, s35, v77
	v_add_nc_u32_e32 v112, s35, v78
	v_add_nc_u32_e32 v116, s35, v79
	v_add_nc_u32_e32 v117, s35, v80
	v_add_nc_u32_e32 v118, s35, v118
	v_add_nc_u32_e32 v119, s35, v81
	v_add_nc_u32_e32 v120, s35, v82
	v_add_nc_u32_e32 v121, s35, v83
	v_add_nc_u32_e32 v122, s35, v84
	v_add_nc_u32_e32 v123, s35, v85
	v_add_nc_u32_e32 v124, s35, v86
	v_add_nc_u32_e32 v125, s35, v87
	v_add_nc_u32_e32 v126, s35, v88
	v_add_nc_u32_e32 v127, s35, v89
	v_add_nc_u32_e32 v128, s35, v90
	v_add_nc_u32_e32 v129, s35, v91
	v_add_nc_u32_e32 v130, s35, v92
	v_add_nc_u32_e32 v131, s35, v93
	v_add_nc_u32_e32 v132, s35, v94
	v_add_nc_u32_e32 v133, s35, v95
	v_add_nc_u32_e32 v135, s24, v134
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_add_nc_u32_e32 v136, s25, v134
	v_add_nc_u32_e32 v137, s26, v134
	v_add_nc_u32_e32 v138, s27, v134
	v_add_nc_u32_e32 v139, s34, v134
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	.loc	1 1056 34 is_stmt 1             ; ragged.py:1056:34
	v_cndmask_b32_e64 v140, 0x80000000, v140, s1
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v134, 0x80000000, v134, s1
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v141, 0x80000000, v141, s1
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	s_clause 0x1f
	buffer_load_u8 v232, v0, s[8:11], 0 offen
	buffer_load_u8 v233, v66, s[8:11], 0 offen
	buffer_load_u8 v234, v96, s[8:11], 0 offen
	buffer_load_u8 v226, v97, s[8:11], 0 offen
	buffer_load_u8 v235, v98, s[8:11], 0 offen
	buffer_load_u8 v236, v99, s[8:11], 0 offen
	buffer_load_u8 v237, v102, s[8:11], 0 offen
	buffer_load_u8 v227, v103, s[8:11], 0 offen
	buffer_load_u8 v238, v104, s[8:11], 0 offen
	buffer_load_u8 v239, v105, s[8:11], 0 offen
	buffer_load_u8 v240, v106, s[8:11], 0 offen
	buffer_load_u8 v228, v110, s[8:11], 0 offen
	buffer_load_u8 v241, v111, s[8:11], 0 offen
	buffer_load_u8 v242, v112, s[8:11], 0 offen
	buffer_load_u8 v243, v116, s[8:11], 0 offen
	buffer_load_u8 v229, v117, s[8:11], 0 offen
	buffer_load_u8 v244, v118, s[8:11], 0 offen
	buffer_load_u8 v245, v119, s[8:11], 0 offen
	buffer_load_u8 v246, v120, s[8:11], 0 offen
	buffer_load_u8 v230, v121, s[8:11], 0 offen
	buffer_load_u8 v248, v122, s[8:11], 0 offen
	buffer_load_u8 v249, v123, s[8:11], 0 offen
	buffer_load_u8 v250, v124, s[8:11], 0 offen
	buffer_load_u8 v231, v125, s[8:11], 0 offen
	buffer_load_u8 v99, v126, s[8:11], 0 offen
	buffer_load_u8 v66, v127, s[8:11], 0 offen
	buffer_load_u8 v104, v128, s[8:11], 0 offen
	buffer_load_u8 v253, v129, s[8:11], 0 offen
	buffer_load_u8 v105, v130, s[8:11], 0 offen
	buffer_load_u8 v106, v131, s[8:11], 0 offen
	buffer_load_u8 v102, v132, s[8:11], 0 offen
	buffer_load_u8 v254, v133, s[8:11], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v0, 0x80000000, v135, s1
	v_cndmask_b32_e64 v96, 0x80000000, v136, s1
	v_cndmask_b32_e64 v97, 0x80000000, v137, s1
	v_cndmask_b32_e64 v98, 0x80000000, v138, s1
	v_cndmask_b32_e64 v103, 0x80000000, v139, s1
	s_clause 0x7
	buffer_load_u8 v110, v140, s[4:7], 0 offen
	buffer_load_u8 v111, v134, s[4:7], 0 offen
	buffer_load_u8 v112, v141, s[4:7], 0 offen
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v97, v97, s[4:7], 0 offen
	buffer_load_u8 v98, v98, s[4:7], 0 offen
	buffer_load_u8 v103, v103, s[4:7], 0 offen
	buffer_load_u8 v96, v96, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1068 21                       ; ragged.py:1068:21
	s_add_i32 s2, s2, 32
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v108, v110
	s_waitcnt vmcnt(6)
	ds_store_b8 v101, v111
	s_waitcnt vmcnt(5)
	ds_store_b8 v109, v112
	s_waitcnt vmcnt(4)
	ds_store_b8 v101, v0 offset:256
	s_waitcnt vmcnt(0)
	ds_store_b8 v101, v96 offset:512
	ds_store_b8 v101, v97 offset:1024
	ds_store_b8 v101, v98 offset:1280
	ds_store_b8 v101, v103 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v0, v100 offset:320
	ds_load_u8 v96, v100 offset:256
	ds_load_u8 v251, v100 offset:336
	ds_load_u8 v252, v100 offset:272
	ds_load_u8 v218, v100 offset:288
	ds_load_u8 v190, v100 offset:304
	ds_load_u8 v189, v100 offset:240
	v_add_nc_u32_e32 v112, 0, v150
	ds_load_u8 v224, v100 offset:224
	ds_load_u8 v225, v100 offset:96
	ds_load_u8 v247, v100 offset:352
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_lt_i32 s2, s21
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v116, v112
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v96, v96, v0, 0xc0c0004
	ds_load_u8 v0, v100 offset:448
	ds_load_u8 v97, v100 offset:384
	ds_load_u8 v255, v100 offset:464
	ds_load_u8 v98, v100 offset:400
	ds_load_u8 v219, v100 offset:416
	ds_load_u8 v194, v100 offset:432
	ds_load_u8 v196, v100 offset:368
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v97, v97, v0, 0xc0c0004
	ds_load_u8 v0, v100 offset:64
	ds_load_u8 v111, v100
	ds_load_u8 v103, v100 offset:80
	ds_load_u8 v110, v100 offset:16
	ds_load_u8 v220, v100 offset:32
	ds_load_u8 v201, v100 offset:48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v98, v98, v255, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v111, v0, 0xc0c0004
	ds_load_u8 v117, v100 offset:192
	ds_load_u8 v118, v100 offset:128
	ds_load_u8 v0, v100 offset:208
	ds_load_u8 v112, v100 offset:144
	ds_load_u8 v222, v100 offset:160
	ds_load_u8 v207, v100 offset:176
	ds_load_u8 v208, v100 offset:112
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v112, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v96, v117, 16, v111
	v_add_nc_u32_e32 v111, 0, v149
	ds_load_u8 v135, v111
	ds_load_u8 v133, v100 offset:1088
	ds_load_u8 v134, v100 offset:1024
	ds_load_u8 v120, v100 offset:1104
	ds_load_u8 v121, v100 offset:1040
	ds_load_u8 v118, v100 offset:1120
	ds_load_u8 v119, v100 offset:1056
	ds_load_u8 v117, v100 offset:1072
	ds_load_u8 v140, v100 offset:992
	ds_load_u8 v193, v100 offset:576
	ds_load_u8 v195, v100 offset:512
	ds_load_u8 v146, v100 offset:592
	ds_load_u8 v148, v100 offset:528
	ds_load_u8 v111, v100 offset:480
	ds_load_u8 v157, v100 offset:544
	ds_load_u8 v155, v100 offset:560
	ds_load_u8 v223, v100 offset:496
	ds_load_u8 v210, v100 offset:960
	ds_load_u8 v211, v100 offset:896
	ds_load_u8 v169, v100 offset:976
	ds_load_u8 v171, v100 offset:912
	ds_load_u8 v165, v100 offset:928
	ds_load_u8 v167, v100 offset:864
	ds_load_u8 v161, v100 offset:944
	ds_load_u8 v162, v100 offset:880
	ds_load_u8 v213, v100 offset:832
	ds_load_u8 v214, v100 offset:768
	ds_load_u8 v182, v100 offset:848
	ds_load_u8 v183, v100 offset:784
	ds_load_u8 v174, v100 offset:736
	ds_load_u8 v177, v100 offset:800
	ds_load_u8 v168, v100 offset:816
	ds_load_u8 v172, v100 offset:752
	ds_load_u8 v216, v100 offset:704
	ds_load_u8 v217, v100 offset:640
	ds_load_u8 v187, v100 offset:720
	ds_load_u8 v188, v100 offset:656
	ds_load_u8 v184, v100 offset:672
	ds_load_u8 v186, v100 offset:608
	ds_load_u8 v180, v100 offset:688
	ds_load_u8 v185, v100 offset:624
	ds_load_u8 v164, v100 offset:1344
	ds_load_u8 v166, v100 offset:1280
	ds_load_u8 v131, v100 offset:1360
	ds_load_u8 v132, v100 offset:1296
	ds_load_u8 v129, v100 offset:1376
	ds_load_u8 v130, v100 offset:1312
	ds_load_u8 v128, v100 offset:1328
	ds_load_u8 v127, v100 offset:1264
	ds_load_u8 v170, v100 offset:1216
	ds_load_u8 v209, v100 offset:1152
	ds_load_u8 v159, v100 offset:1232
	ds_load_u8 v160, v100 offset:1168
	ds_load_u8 v154, v100 offset:1248
	ds_load_u8 v156, v100 offset:1184
	ds_load_u8 v153, v100 offset:1200
	ds_load_u8 v158, v100 offset:1136
	ds_load_u8 v114, v100 offset:1600
	ds_load_u8 v152, v100 offset:1536
	ds_load_u8 v125, v100 offset:1616
	ds_load_u8 v126, v100 offset:1552
	ds_load_u8 v123, v100 offset:1632
	ds_load_u8 v124, v100 offset:1568
	ds_load_u8 v122, v100 offset:1584
	ds_load_u8 v163, v100 offset:1520
	ds_load_u8 v215, v100 offset:1472
	ds_load_u8 v221, v100 offset:1408
	ds_load_u8 v205, v100 offset:1488
	ds_load_u8 v206, v100 offset:1424
	ds_load_u8 v200, v100 offset:1504
	ds_load_u8 v202, v100 offset:1440
	ds_load_u8 v197, v100 offset:1456
	ds_load_u8 v204, v100 offset:1392
	ds_load_u8 v191, v100 offset:1984
	ds_load_u8 v192, v100 offset:1920
	ds_load_u8 v142, v100 offset:2000
	ds_load_u8 v143, v100 offset:1936
	ds_load_u8 v138, v100 offset:2016
	ds_load_u8 v139, v100 offset:1952
	ds_load_u8 v136, v100 offset:1968
	ds_load_u8 v137, v100 offset:1904
	ds_load_u8 v198, v100 offset:1856
	ds_load_u8 v199, v100 offset:1792
	ds_load_u8 v113, v100 offset:1872
	ds_load_u8 v151, v100 offset:1808
	ds_load_u8 v145, v100 offset:1888
	ds_load_u8 v147, v100 offset:1824
	ds_load_u8 v141, v100 offset:1840
	ds_load_u8 v144, v100 offset:1776
	ds_load_u8 v203, v100 offset:1728
	ds_load_u8 v212, v100 offset:1664
	ds_load_u8 v178, v100 offset:1744
	ds_load_u8 v179, v100 offset:1680
	ds_load_u8 v175, v100 offset:1760
	ds_load_u8 v176, v100 offset:1696
	ds_load_u8 v173, v100 offset:1712
	ds_load_u8 v181, v100 offset:1648
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v101, v232
	ds_store_b8 v101, v233 offset:256
	ds_store_b8 v101, v234 offset:512
	ds_store_b8 v101, v235 offset:1024
	ds_store_b8 v101, v236 offset:1280
	ds_store_b8 v101, v237 offset:1536
	ds_store_b8 v101, v238 offset:2048
	ds_store_b8 v101, v239 offset:2304
	ds_store_b8 v101, v240 offset:2560
	ds_store_b8 v101, v241 offset:3072
	ds_store_b8 v101, v242 offset:3328
	ds_store_b8 v101, v243 offset:3584
	ds_store_b8 v101, v244 offset:4096
	ds_store_b8 v101, v245 offset:4352
	ds_store_b8 v101, v246 offset:4608
	ds_store_b8 v101, v248 offset:5120
	ds_store_b8 v101, v249 offset:5376
	ds_store_b8 v101, v250 offset:5632
	ds_store_b8 v101, v99 offset:6144
	ds_store_b8 v101, v66 offset:6400
	ds_store_b8 v101, v104 offset:6656
	ds_store_b8 v101, v105 offset:7168
	ds_store_b8 v101, v106 offset:7424
	ds_store_b8 v101, v102 offset:7680
	ds_store_b8 v108, v226
	ds_store_b8 v109, v227
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v228
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v229
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v230
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v231
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v253
	ds_store_b8 v115, v254
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v66, v107 offset:1280
	ds_load_u8 v99, v107 offset:1024
	ds_load_u8 v102, v107 offset:1920
	ds_load_u8 v106, v107 offset:1664
	ds_load_u8 v226, v107 offset:1408
	ds_load_u8 v227, v107 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v99, v66, 0xc0c0004
	ds_load_u8 v99, v107 offset:1792
	ds_load_u8 v104, v107 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v104, v99, 0xc0c0004
	ds_load_u8 v104, v107 offset:256
	ds_load_u8 v105, v107
	ds_load_u8 v228, v107 offset:896
	ds_load_u8 v229, v107 offset:640
	ds_load_u8 v230, v107 offset:384
	ds_load_u8 v231, v107 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v107 offset:768
	ds_load_u8 v232, v107 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v232, v232, v105, 0xc0c0004
	v_lshl_or_b32 v105, v99, 16, v66
	v_perm_b32 v66, v227, v226, 0xc0c0004
	v_perm_b32 v99, v106, v102, 0xc0c0004
	v_perm_b32 v102, v231, v230, 0xc0c0004
	v_perm_b32 v106, v229, v228, 0xc0c0004
	v_lshl_or_b32 v104, v232, 16, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v227, v99, 16, v66
	v_perm_b32 v66, v252, v251, 0xc0c0004
	v_lshl_or_b32 v226, v106, 16, v102
	v_perm_b32 v102, v110, v103, 0xc0c0004
	v_perm_b32 v106, v222, v224, 0xc0c0004
	v_perm_b32 v110, v207, v189, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v66
	v_perm_b32 v66, v219, v111, 0xc0c0004
	v_lshl_or_b32 v98, v0, 16, v102
	v_perm_b32 v0, v218, v247, 0xc0c0004
	v_perm_b32 v102, v220, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[98:99], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_lshl_or_b32 v102, v106, 16, v102
	v_perm_b32 v0, v190, v196, 0xc0c0004
	v_perm_b32 v66, v194, v223, 0xc0c0004
	v_perm_b32 v106, v201, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[226:227], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[226:227], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v66, 16, v0
	v_lshl_or_b32 v110, v110, 16, v106
	v_perm_b32 v0, v214, v213, 0xc0c0004
	v_perm_b32 v66, v211, v210, 0xc0c0004
	v_perm_b32 v96, v195, v193, 0xc0c0004
	v_perm_b32 v98, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[110:111], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[226:227], v[110:111], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v66, 16, v0
	ds_load_u8 v0, v107 offset:3328
	ds_load_u8 v66, v107 offset:3072
	ds_load_u8 v102, v107 offset:3968
	ds_load_u8 v103, v107 offset:3712
	ds_load_u8 v104, v107 offset:3456
	ds_load_u8 v105, v107 offset:3200
	v_lshl_or_b32 v96, v98, 16, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v107 offset:3840
	ds_load_u8 v98, v107 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v98, v66, 0xc0c0004
	ds_load_u8 v98, v107 offset:2304
	ds_load_u8 v99, v107 offset:2048
	ds_load_u8 v106, v107 offset:2944
	ds_load_u8 v110, v107 offset:2688
	ds_load_u8 v111, v107 offset:2432
	ds_load_u8 v112, v107 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v107 offset:2816
	ds_load_u8 v189, v107 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v99, 0xc0c0004
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v105, v104, 0xc0c0004
	v_perm_b32 v66, v103, v102, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	v_perm_b32 v104, v110, v106, 0xc0c0004
	v_perm_b32 v106, v188, v187, 0xc0c0004
	v_perm_b32 v110, v184, v174, 0xc0c0004
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v183, v182, 0xc0c0004
	v_lshl_or_b32 v102, v104, 16, v102
	v_perm_b32 v66, v171, v169, 0xc0c0004
	v_perm_b32 v104, v148, v146, 0xc0c0004
	v_perm_b32 v112, v161, v135, 0xc0c0004
	v_lshl_or_b32 v98, v189, 16, v98
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_lshl_or_b32 v104, v106, 16, v104
	v_perm_b32 v0, v177, v167, 0xc0c0004
	v_perm_b32 v66, v165, v140, 0xc0c0004
	v_perm_b32 v106, v157, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v66, 16, v0
	v_lshl_or_b32 v110, v110, 16, v106
	v_perm_b32 v0, v155, v185, 0xc0c0004
	v_perm_b32 v66, v180, v172, 0xc0c0004
	v_perm_b32 v106, v168, v162, 0xc0c0004
	v_perm_b32 v96, v134, v133, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[110:111], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v66, 16, v0
	v_lshl_or_b32 v162, v112, 16, v106
	v_perm_b32 v0, v166, v164, 0xc0c0004
	v_perm_b32 v66, v221, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[161:162], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v66, 16, v0
	ds_load_u8 v0, v107 offset:5376
	ds_load_u8 v66, v107 offset:5120
	ds_load_u8 v102, v107 offset:6016
	ds_load_u8 v103, v107 offset:5760
	ds_load_u8 v104, v107 offset:5504
	ds_load_u8 v105, v107 offset:5248
	v_perm_b32 v98, v209, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v98, 16, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v107 offset:5888
	ds_load_u8 v98, v107 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v98, v66, 0xc0c0004
	ds_load_u8 v98, v107 offset:4352
	ds_load_u8 v99, v107 offset:4096
	ds_load_u8 v106, v107 offset:4992
	ds_load_u8 v110, v107 offset:4736
	ds_load_u8 v111, v107 offset:4480
	ds_load_u8 v112, v107 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v107 offset:4864
	ds_load_u8 v133, v107 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v99, 0xc0c0004
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v105, v104, 0xc0c0004
	v_perm_b32 v66, v103, v102, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	v_perm_b32 v104, v110, v106, 0xc0c0004
	v_perm_b32 v106, v160, v159, 0xc0c0004
	v_perm_b32 v110, v156, v154, 0xc0c0004
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	v_lshl_or_b32 v102, v104, 16, v102
	v_perm_b32 v66, v206, v205, 0xc0c0004
	v_perm_b32 v104, v121, v120, 0xc0c0004
	v_perm_b32 v112, v153, v127, 0xc0c0004
	v_lshl_or_b32 v98, v133, 16, v98
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_lshl_or_b32 v104, v106, 16, v104
	v_perm_b32 v0, v130, v129, 0xc0c0004
	v_perm_b32 v66, v202, v200, 0xc0c0004
	v_perm_b32 v106, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v66, 16, v0
	v_lshl_or_b32 v110, v110, 16, v106
	v_perm_b32 v0, v128, v204, 0xc0c0004
	v_perm_b32 v66, v197, v163, 0xc0c0004
	v_perm_b32 v106, v117, v158, 0xc0c0004
	v_perm_b32 v96, v152, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[110:111], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v66, 16, v0
	v_lshl_or_b32 v117, v112, 16, v106
	v_perm_b32 v0, v199, v198, 0xc0c0004
	v_perm_b32 v66, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v66, 16, v0
	ds_load_u8 v0, v107 offset:7424
	ds_load_u8 v66, v107 offset:7168
	ds_load_u8 v102, v107 offset:8064
	ds_load_u8 v103, v107 offset:7808
	ds_load_u8 v104, v107 offset:7552
	ds_load_u8 v105, v107 offset:7296
	v_perm_b32 v98, v212, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v98, 16, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v107 offset:7936
	ds_load_u8 v98, v107 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v98, v66, 0xc0c0004
	ds_load_u8 v98, v107 offset:6400
	ds_load_u8 v99, v107 offset:6144
	ds_load_u8 v106, v107 offset:7040
	ds_load_u8 v110, v107 offset:6784
	ds_load_u8 v111, v107 offset:6528
	ds_load_u8 v112, v107 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v107 offset:6912
	ds_load_u8 v117, v107 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v99, 0xc0c0004
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v105, v104, 0xc0c0004
	v_perm_b32 v66, v103, v102, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	v_perm_b32 v104, v110, v106, 0xc0c0004
	v_perm_b32 v106, v179, v178, 0xc0c0004
	v_perm_b32 v110, v176, v175, 0xc0c0004
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v151, v113, 0xc0c0004
	v_lshl_or_b32 v102, v104, 16, v102
	v_perm_b32 v66, v143, v142, 0xc0c0004
	v_perm_b32 v104, v126, v125, 0xc0c0004
	v_perm_b32 v112, v136, v116, 0xc0c0004
	v_lshl_or_b32 v98, v117, 16, v98
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_lshl_or_b32 v104, v106, 16, v104
	v_perm_b32 v0, v147, v145, 0xc0c0004
	v_perm_b32 v66, v139, v138, 0xc0c0004
	v_perm_b32 v106, v124, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v66, 16, v0
	v_lshl_or_b32 v110, v110, 16, v106
	v_perm_b32 v0, v122, v181, 0xc0c0004
	v_perm_b32 v66, v173, v144, 0xc0c0004
	v_perm_b32 v106, v141, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[110:111], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v112, 16, v106
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[116:117], v[1:8] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow310
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v215, off, off offset:20
	scratch_load_b32 v216, off, off offset:24
	scratch_load_b32 v217, off, off offset:28
	scratch_load_b32 v66, off, off offset:32
	scratch_load_b64 v[67:68], off, off offset:36
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v71, 28, v66
	v_or_b32_e32 v69, 12, v66
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v70, v67
	s_branch .LBB0_5
.LBB0_4:
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
.LBB0_5:                                ; %._crit_edge
	.loc	1 1008 27 is_stmt 1             ; ragged.py:1008:27
	s_add_i32 s4, s20, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s24, s4, 1
	.loc	1 1069 20 is_stmt 1             ; ragged.py:1069:20
	s_cmp_lt_i32 s2, s24
	.loc	1 1069 17 is_stmt 0             ; ragged.py:1069:17
	s_cbranch_scc1 .LBB0_7
; %bb.6:                                ; %._crit_edge._crit_edge
	.loc	1 1239 26 is_stmt 1             ; ragged.py:1239:26
	s_lshl_b32 s8, s29, 4
	s_cbranch_execz .LBB0_8
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr8
.LBB0_8:
	.loc	1 1070 26                       ; ragged.py:1070:26
	s_or_b32 s7, s2, 1
	s_or_b32 s8, s2, 2
	s_or_b32 s25, s2, 3
	s_or_b32 s26, s2, 4
	s_or_b32 s27, s2, 5
	s_or_b32 s37, s2, 6
	s_or_b32 s38, s2, 7
	s_or_b32 s75, s2, 8
	s_or_b32 s40, s2, 9
	s_or_b32 s41, s2, 10
	s_or_b32 s42, s2, 11
	s_or_b32 s43, s2, 12
	s_or_b32 s45, s2, 13
	s_or_b32 s47, s2, 14
	s_or_b32 s49, s2, 15
	s_or_b32 s4, s2, 16
	s_or_b32 s53, s2, 17
	s_or_b32 s55, s2, 18
	s_or_b32 s58, s2, 19
	s_or_b32 s5, s2, 20
	s_or_b32 s60, s2, 21
	s_or_b32 s61, s2, 22
	s_or_b32 s62, s2, 23
	s_or_b32 s6, s2, 24
	s_or_b32 s64, s2, 25
	s_or_b32 s65, s2, 26
	s_or_b32 s66, s2, 27
	s_or_b32 s69, s2, 28
	s_or_b32 s72, s2, 29
	s_or_b32 s78, s2, 30
	s_or_b32 s94, s2, 31
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cmp_lt_i32 s7, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v74, s75, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s8, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v72, s2, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s25, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v73, s26, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s26, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v76, s4, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s27, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v77, s5, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s37, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v78, s6, v66
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s38, s24
	v_cmp_gt_i32_e32 vcc_lo, s24, v72
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s75, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v75, s2, v69
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s40, s24
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v79, s2, v71
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s41, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s96, s29, 14
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s42, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s99, s29, 18
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s43, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s95, s29, 13
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s45, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s97, s29, 15
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s47, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s98, s29, 17
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s49, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s100, s29, 19
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s24
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_add_nc_u32_e32 v210, v100, v217
	.loc	1 1079 30                       ; ragged.py:1079:30
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s53, s24
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s55, s24
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s58, s24
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s5, s24
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s60, s24
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s61, s24
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s62, s24
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s6, s24
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s64, s24
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s65, s24
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s66, s24
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s69, s24
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s72, s24
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s78, s24
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s94, s24
	s_cselect_b32 s44, -1, 0
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_and_b32 s9, s20, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s9, 1
	s_cselect_b32 s9, -1, 0
	.loc	1 1080 63 is_stmt 0             ; ragged.py:1080:63
	s_add_i32 s10, s24, -1
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cmp_eq_u32 s2, s10
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s7, s10
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s7, s24, v78
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cselect_b32 s20, -1, 0
	s_cmp_eq_u32 s8, s10
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s8, s24, v79
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cselect_b32 s21, -1, 0
	s_cmp_eq_u32 s25, s10
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s26, s10
	s_mov_b32 s26, 0x7ffffffe
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s27, s10
	s_mov_b32 s27, 0x31027000
	s_cselect_b32 s36, -1, 0
	s_cmp_eq_u32 s37, s10
	s_cselect_b32 s37, -1, 0
	s_cmp_eq_u32 s38, s10
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s75, s10
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s40, s10
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s41, s10
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s42, s10
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s43, s10
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s45, s10
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s47, s10
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s49, s10
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s4, s10
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s4, s24, v75
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s53, s10
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s55, s10
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s58, s10
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s5, s10
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s5, s24, v76
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s60, s10
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s61, s10
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s62, s10
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s6, s10
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s6, s24, v77
	.loc	1 1080 56                       ; ragged.py:1080:56
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s64, s10
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s65, s10
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s66, s10
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s69, s10
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s72, s10
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s78, s10
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s94, s10
	s_cselect_b32 s78, -1, 0
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s94, s2, s3
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s2, s24, v73
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s3, s94, s28
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v0, s3, s33, v70
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s3, s24, v74
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s94, s94, s29
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	.loc	1 1081 42 is_stmt 0             ; ragged.py:1081:42
	v_mad_u64_u32 v[66:67], null, s28, v66, v[0:1]
	v_mad_u64_u32 v[67:68], null, s28, v69, v[0:1]
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_add3_u32 v94, s94, s29, v65
	s_mul_i32 s13, s29, 10
	v_add_nc_u32_e32 v93, s94, v65
	v_add3_u32 v89, s94, s13, v65
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v80, s28, 2, v66
	v_lshl_add_u32 v81, s28, 3, v66
	v_mad_u64_u32 v[68:69], null, s28, 20, v[66:67]
	v_mad_u64_u32 v[69:70], null, s28, 24, v[66:67]
	v_mad_u64_u32 v[70:71], null, s28, v71, v[0:1]
	.loc	1 1081 34 is_stmt 0             ; ragged.py:1081:34
	v_cndmask_b32_e32 v0, 0x80000000, v66, vcc_lo
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v82, s28, 4, v66
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v66, 0x80000000, v80, vcc_lo
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_mul_i32 s2, s29, 3
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v71, 0x80000000, v81, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_lshl_b32 s3, s29, 2
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s5
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_mul_i32 s4, s29, 5
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v80, 0x80000000, v82, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s6
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_mul_i32 s5, s29, 6
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s7
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_add3_u32 v95, s94, s96, v65
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s1, s8
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_lshl_b32 s1, s29, 1
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x7
	buffer_load_u8 v81, v0, s[24:27], 0 offen
	buffer_load_u8 v82, v66, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v83, v67, s[24:27], 0 offen
	buffer_load_u8 v80, v80, s[24:27], 0 offen
	buffer_load_u8 v84, v68, s[24:27], 0 offen
	buffer_load_u8 v85, v69, s[24:27], 0 offen
	buffer_load_u8 v86, v70, s[24:27], 0 offen
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v0, s94, s1, v65
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v66, s94, s2, v65
	s_mul_i32 s25, s29, 12
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v67, s94, s3, v65
	v_add3_u32 v91, s94, s25, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s91
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v68, s94, s4, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s6, s29, 7
	v_add3_u32 v69, s94, s5, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_lshl_b32 s7, s29, 3
	v_add3_u32 v70, s94, s6, v65
	s_mul_i32 s24, s29, 11
	v_add3_u32 v99, s94, s99, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s12, s29, 9
	v_add3_u32 v87, s94, s7, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s1, s29, 20
	v_add3_u32 v90, s94, s24, v65
	s_mul_i32 s24, s29, 29
	s_mul_i32 s25, s29, 30
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v88, s94, s12, v65
	s_mul_i32 s3, s29, 22
	v_add3_u32 v103, s94, s1, v65
	v_add3_u32 v112, s94, s24, v65
	v_add3_u32 v113, s94, s25, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s7, s29, 26
	v_add3_u32 v105, s94, s3, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_clause 0x7
	buffer_load_u8 v93, v93, s[24:27], 0 offen
	buffer_load_u8 v94, v94, s[24:27], 0 offen
	buffer_load_u8 v114, v0, s[24:27], 0 offen
	buffer_load_u8 v115, v66, s[24:27], 0 offen
	buffer_load_u8 v116, v67, s[24:27], 0 offen
	buffer_load_u8 v117, v68, s[24:27], 0 offen
	buffer_load_u8 v118, v69, s[24:27], 0 offen
	buffer_load_u8 v119, v70, s[24:27], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v87, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v109, s94, s7, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v66, 0x80000000, v88, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s13, s29, 28
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v67, 0x80000000, v89, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v92, s94, s95, v65
	v_add3_u32 v111, s94, s13, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v68, 0x80000000, v90, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_lshl_b32 s8, s29, 4
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v69, 0x80000000, v91, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s81
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v96, s94, s97, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v70, 0x80000000, v92, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s80
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v97, s94, s8, v65
	s_mul_i32 s2, s29, 21
	s_mul_i32 s4, s29, 23
	s_mul_i32 s5, s29, 24
	s_mul_i32 s6, s29, 25
	s_mul_i32 s12, s29, 27
	s_mul_i32 s95, s29, 31
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v87, 0x80000000, v95, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s79
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v98, s94, s98, v65
	v_add3_u32 v102, s94, s100, v65
	v_add3_u32 v104, s94, s2, v65
	v_add3_u32 v106, s94, s4, v65
	v_add3_u32 v107, s94, s5, v65
	v_add3_u32 v108, s94, s6, v65
	v_add3_u32 v110, s94, s12, v65
	v_add3_u32 v65, s94, s95, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v88, 0x80000000, v96, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s76
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_clause 0x7
	buffer_load_u8 v89, v0, s[24:27], 0 offen
	buffer_load_u8 v90, v66, s[24:27], 0 offen
	buffer_load_u8 v91, v67, s[24:27], 0 offen
	buffer_load_u8 v92, v68, s[24:27], 0 offen
	buffer_load_u8 v95, v69, s[24:27], 0 offen
	buffer_load_u8 v96, v70, s[24:27], 0 offen
	buffer_load_u8 v87, v87, s[24:27], 0 offen
	buffer_load_u8 v88, v88, s[24:27], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v97, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s4, s10, v76
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v66, 0x80000000, v98, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s1, s10, v73
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v67, 0x80000000, v99, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s73
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s2, s10, v74
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v68, 0x80000000, v102, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s71
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s3, s10, v75
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v69, 0x80000000, v103, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s70
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s4, s9, s4
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v70, 0x80000000, v104, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s68
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s5, s10, v77
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v97, 0x80000000, v105, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s67
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s6, s10, v78
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v98, 0x80000000, v106, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s56
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_clause 0x7
	buffer_load_u8 v99, v0, s[24:27], 0 offen
	buffer_load_u8 v102, v66, s[24:27], 0 offen
	buffer_load_u8 v103, v67, s[24:27], 0 offen
	buffer_load_u8 v104, v68, s[24:27], 0 offen
	buffer_load_u8 v105, v69, s[24:27], 0 offen
	buffer_load_u8 v106, v70, s[24:27], 0 offen
	buffer_load_u8 v97, v97, s[24:27], 0 offen
	buffer_load_u8 v98, v98, s[24:27], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v107, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s57
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s7, s10, v79
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v66, 0x80000000, v108, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s54
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s1, s9, s1
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v67, 0x80000000, v109, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s52
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s2, s9, s2
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v68, 0x80000000, v110, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s50
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s3, s9, s3
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v69, 0x80000000, v111, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s48
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s11, s9, s11
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v70, 0x80000000, v112, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s46
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s13, s9, s21
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v107, 0x80000000, v113, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s44
	.loc	1 1080 32 is_stmt 1             ; ragged.py:1080:32
	s_and_b32 s21, s9, s37
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u8 v108, v0, s[24:27], 0 offen
	buffer_load_u8 v109, v66, s[24:27], 0 offen
	buffer_load_u8 v110, v67, s[24:27], 0 offen
	buffer_load_u8 v111, v68, s[24:27], 0 offen
	buffer_load_u8 v112, v69, s[24:27], 0 offen
	buffer_load_u8 v113, v70, s[24:27], 0 offen
	buffer_load_u8 v107, v107, s[24:27], 0 offen
	buffer_load_u8 v120, v65, s[24:27], 0 offen
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e32 vcc_lo, s10, v72
	.loc	1 1080 32 is_stmt 0             ; ragged.py:1080:32
	s_and_b32 s37, s9, s47
	s_and_b32 s47, s9, s63
	s_and_b32 s12, s9, s20
	s_and_b32 s48, s9, s64
	s_and_b32 s10, s9, vcc_lo
	s_and_b32 s24, s9, s38
	s_and_b32 s38, s9, s49
	s_and_b32 s49, s9, s65
	s_and_b32 s14, s9, s34
	s_and_b32 s50, s9, s66
	s_and_b32 s5, s9, s5
	s_and_b32 s6, s9, s6
	s_and_b32 s7, s9, s7
	s_and_b32 s15, s9, s35
	s_and_b32 s25, s9, s39
	s_and_b32 s26, s9, s40
	s_and_b32 s34, s9, s42
	s_and_b32 s39, s9, s51
	s_and_b32 s51, s9, s69
	s_and_b32 s20, s9, s36
	s_and_b32 s27, s9, s41
	s_and_b32 s35, s9, s43
	s_and_b32 s36, s9, s45
	s_and_b32 s40, s9, s53
	s_and_b32 s41, s9, s55
	s_and_b32 s42, s9, s58
	s_and_b32 s43, s9, s59
	s_and_b32 s44, s9, s60
	s_and_b32 s45, s9, s61
	s_and_b32 s46, s9, s62
	s_and_b32 s52, s9, s72
	s_and_b32 s53, s9, s75
	s_and_b32 s9, s9, s78
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1083 62 is_stmt 0             ; ragged.py:1083:62
	s_waitcnt vmcnt(39)
	v_and_b16 v0.l, v81.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v0.h, v82.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v65.l, v71.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v65.h, v83.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v66.l, v80.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v0.l, v81.l, v0.l, s10
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(34)
	v_and_b16 v66.h, v84.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v67.l, v85.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v67.h, v86.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v66.l, v80.l, v66.l, s4
	v_cndmask_b16 v0.h, v82.l, v0.h, s1
	v_cndmask_b16 v65.l, v71.l, v65.l, s2
	v_cndmask_b16 v65.h, v83.l, v65.h, s3
	v_cndmask_b16 v66.h, v84.l, v66.h, s5
	v_cndmask_b16 v67.l, v85.l, v67.l, s6
	v_cndmask_b16 v67.h, v86.l, v67.h, s7
	ds_store_b8 v101, v0
	ds_store_b8_d16_hi v101, v0 offset:256
	ds_store_b8 v101, v65 offset:512
	ds_store_b8_d16_hi v101, v65 offset:768
	ds_store_b8 v101, v66 offset:1024
	ds_store_b8_d16_hi v101, v66 offset:1280
	ds_store_b8 v101, v67 offset:1536
	ds_store_b8_d16_hi v101, v67 offset:1792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1084 62 is_stmt 1             ; ragged.py:1084:62
	s_waitcnt vmcnt(31)
	v_and_b16 v68.l, v93.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v68.h, v94.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v69.l, v114.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v69.h, v115.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v70.l, v116.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v70.h, v117.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v71.l, v118.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v71.h, v119.l, 15
	.loc	1 1084 34 is_stmt 0             ; ragged.py:1084:34
	v_cndmask_b16 v133.l, v93.l, v68.l, s11
	v_cndmask_b16 v133.h, v94.l, v68.h, s12
	v_cndmask_b16 v134.l, v114.l, v69.l, s13
	v_cndmask_b16 v134.h, v115.l, v69.h, s14
	v_cndmask_b16 v135.l, v116.l, v70.l, s15
	v_cndmask_b16 v135.h, v117.l, v70.h, s20
	v_cndmask_b16 v136.l, v118.l, v71.l, s21
	v_cndmask_b16 v136.h, v119.l, v71.h, s24
	.loc	1 1084 62                       ; ragged.py:1084:62
	s_waitcnt vmcnt(23)
	v_and_b16 v72.l, v89.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v72.h, v90.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v73.l, v91.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v73.h, v92.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v74.l, v95.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v74.h, v96.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v75.l, v87.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v75.h, v88.l, 15
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v137.h, v90.l, v72.h, s26
	v_cndmask_b16 v138.h, v92.l, v73.h, s34
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	v_add_nc_u32_e32 v90, 0, v149
	v_add_nc_u32_e32 v92, 0, v150
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v137.l, v89.l, v72.l, s25
	v_cndmask_b16 v138.l, v91.l, v73.l, s27
	v_cndmask_b16 v139.l, v95.l, v74.l, s35
	v_cndmask_b16 v139.h, v96.l, v74.h, s36
	v_cndmask_b16 v140.l, v87.l, v75.l, s37
	v_cndmask_b16 v140.h, v88.l, v75.h, s38
	.loc	1 1084 62 is_stmt 0             ; ragged.py:1084:62
	s_waitcnt vmcnt(15)
	v_and_b16 v76.l, v99.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v76.h, v102.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v77.l, v103.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v77.h, v104.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v78.l, v105.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v78.h, v106.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v79.l, v97.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v79.h, v98.l, 15
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v141.l, v99.l, v76.l, s39
	v_cndmask_b16 v141.h, v102.l, v76.h, s40
	v_cndmask_b16 v142.l, v103.l, v77.l, s41
	v_cndmask_b16 v142.h, v104.l, v77.h, s42
	v_cndmask_b16 v143.l, v105.l, v78.l, s43
	v_cndmask_b16 v143.h, v106.l, v78.h, s44
	v_cndmask_b16 v144.l, v97.l, v79.l, s45
	v_cndmask_b16 v144.h, v98.l, v79.h, s46
	.loc	1 1084 62                       ; ragged.py:1084:62
	s_waitcnt vmcnt(7)
	v_and_b16 v80.l, v108.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v80.h, v109.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v81.l, v110.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v81.h, v111.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v82.l, v112.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v82.h, v113.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v83.l, v107.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v83.h, v120.l, 15
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v145.l, v108.l, v80.l, s47
	v_cndmask_b16 v145.h, v109.l, v80.h, s48
	v_cndmask_b16 v146.l, v110.l, v81.l, s49
	v_cndmask_b16 v146.h, v111.l, v81.h, s50
	v_cndmask_b16 v147.l, v112.l, v82.l, s51
	v_cndmask_b16 v147.h, v113.l, v82.h, s52
	v_cndmask_b16 v148.l, v107.l, v83.l, s53
	v_cndmask_b16 v148.h, v120.l, v83.h, s9
	.loc	1 1085 31 is_stmt 1             ; ragged.py:1085:31
	ds_load_u8 v149, v100 offset:1088
	ds_load_u8 v150, v100 offset:1024
	ds_load_u8 v99, v100 offset:1104
	ds_load_u8 v102, v100 offset:1040
	ds_load_u8 v73, v100 offset:1120
	ds_load_u8 v74, v100 offset:1056
	ds_load_u8 v65, v100 offset:1072
	ds_load_u8 v98, v100 offset:992
	ds_load_u8 v151, v100 offset:320
	ds_load_u8 v152, v100 offset:256
	ds_load_u8 v153, v100 offset:336
	ds_load_u8 v154, v100 offset:272
	ds_load_u8 v105, v100 offset:224
	ds_load_u8 v107, v100 offset:288
	ds_load_u8 v68, v100 offset:304
	ds_load_u8 v66, v100 offset:240
	ds_load_u8 v155, v100 offset:192
	ds_load_u8 v156, v100 offset:128
	ds_load_u8 v157, v100 offset:208
	ds_load_u8 v158, v100 offset:144
	ds_load_u8 v108, v100 offset:160
	ds_load_u8 v109, v100 offset:96
	ds_load_u8 v69, v100 offset:176
	ds_load_u8 v70, v100 offset:112
	ds_load_u8 v159, v100 offset:576
	ds_load_u8 v160, v100 offset:512
	ds_load_u8 v161, v100 offset:592
	ds_load_u8 v162, v100 offset:528
	ds_load_u8 v112, v100 offset:480
	ds_load_u8 v106, v100 offset:544
	ds_load_u8 v67, v100 offset:560
	ds_load_u8 v72, v100 offset:496
	ds_load_u8 v163, v100 offset:448
	ds_load_u8 v164, v100 offset:384
	ds_load_u8 v165, v100 offset:464
	ds_load_u8 v166, v100 offset:400
	ds_load_u8 v116, v100 offset:416
	ds_load_u8 v118, v100 offset:352
	ds_load_u8 v77, v100 offset:432
	ds_load_u8 v79, v100 offset:368
	ds_load_u8 v167, v100 offset:832
	ds_load_u8 v168, v100 offset:768
	ds_load_u8 v169, v100 offset:848
	ds_load_u8 v170, v100 offset:784
	ds_load_u8 v111, v100 offset:736
	ds_load_u8 v113, v100 offset:800
	ds_load_u8 v75, v100 offset:816
	ds_load_u8 v0, v100 offset:752
	ds_load_u8 v171, v100 offset:704
	ds_load_u8 v172, v100 offset:640
	ds_load_u8 v173, v100 offset:720
	ds_load_u8 v174, v100 offset:656
	ds_load_u8 v115, v100 offset:672
	ds_load_u8 v117, v100 offset:608
	ds_load_u8 v76, v100 offset:688
	ds_load_u8 v78, v100 offset:624
	ds_load_u8 v175, v100 offset:960
	ds_load_u8 v176, v100 offset:896
	ds_load_u8 v177, v100 offset:976
	ds_load_u8 v178, v100 offset:912
	ds_load_u8 v121, v100 offset:928
	ds_load_u8 v122, v100 offset:864
	ds_load_u8 v85, v100 offset:944
	ds_load_u8 v87, v100 offset:880
	ds_load_u8 v179, v100 offset:1344
	ds_load_u8 v180, v100 offset:1280
	ds_load_u8 v181, v100 offset:1360
	ds_load_u8 v182, v100 offset:1296
	ds_load_u8 v119, v100 offset:1376
	ds_load_u8 v120, v100 offset:1312
	ds_load_u8 v83, v100 offset:1328
	ds_load_u8 v82, v100 offset:1264
	ds_load_u8 v183, v100 offset:1216
	ds_load_u8 v184, v100 offset:1152
	ds_load_u8 v185, v100 offset:1232
	ds_load_u8 v186, v100 offset:1168
	ds_load_u8 v123, v100 offset:1248
	ds_load_u8 v124, v100 offset:1184
	ds_load_u8 v88, v100 offset:1200
	ds_load_u8 v89, v100 offset:1136
	ds_load_u8 v187, v100 offset:1600
	ds_load_u8 v188, v100 offset:1536
	ds_load_u8 v129, v100 offset:1616
	ds_load_u8 v130, v100 offset:1552
	ds_load_u8 v96, v100 offset:1632
	ds_load_u8 v97, v100 offset:1568
	ds_load_u8 v71, v100 offset:1584
	ds_load_u8 v91, v100 offset:1520
	ds_load_u8 v189, v100 offset:1472
	ds_load_u8 v190, v100 offset:1408
	ds_load_u8 v191, v100 offset:1488
	ds_load_u8 v192, v100 offset:1424
	ds_load_u8 v127, v100 offset:1504
	ds_load_u8 v128, v100 offset:1440
	ds_load_u8 v94, v100 offset:1456
	ds_load_u8 v95, v100 offset:1392
	ds_load_u8 v193, v100 offset:1856
	ds_load_u8 v194, v100 offset:1792
	ds_load_u8 v195, v100 offset:1872
	ds_load_u8 v196, v100 offset:1808
	ds_load_u8 v125, v100 offset:1888
	ds_load_u8 v126, v100 offset:1824
	ds_load_u8 v81, v100 offset:1840
	ds_load_u8 v80, v100 offset:1776
	ds_load_u8 v197, v100 offset:1728
	ds_load_u8 v198, v100 offset:1664
	ds_load_u8 v199, v100 offset:1744
	ds_load_u8 v200, v100 offset:1680
	ds_load_u8 v103, v100 offset:1760
	ds_load_u8 v104, v100 offset:1696
	ds_load_u8 v84, v100 offset:1712
	ds_load_u8 v86, v100 offset:1648
	ds_load_u8 v201, v100 offset:64
	ds_load_u8 v202, v100 offset:80
	ds_load_u8 v203, v100
	ds_load_u8 v204, v100 offset:16
	ds_load_u8 v205, v100 offset:32
	ds_load_u8 v114, v100 offset:48
	ds_load_u8 v110, v90
	ds_load_u8 v90, v92
	ds_load_u8 v206, v100 offset:1984
	ds_load_u8 v207, v100 offset:1920
	ds_load_u8 v208, v100 offset:2000
	ds_load_u8 v209, v100 offset:1936
	ds_load_u8 v131, v100 offset:2016
	ds_load_u8 v132, v100 offset:1952
	ds_load_u8 v92, v100 offset:1968
	ds_load_u8 v93, v100 offset:1904
	.loc	1 1084 34                       ; ragged.py:1084:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v101, v133
	ds_store_b8_d16_hi v101, v133 offset:256
	ds_store_b8 v101, v134 offset:512
	ds_store_b8_d16_hi v101, v134 offset:768
	ds_store_b8 v101, v135 offset:1024
	ds_store_b8_d16_hi v101, v135 offset:1280
	ds_store_b8 v101, v136 offset:1536
	ds_store_b8_d16_hi v101, v136 offset:1792
	ds_store_b8 v101, v137 offset:2048
	ds_store_b8_d16_hi v101, v137 offset:2304
	ds_store_b8 v101, v138 offset:2560
	ds_store_b8_d16_hi v101, v138 offset:2816
	ds_store_b8 v101, v139 offset:3072
	ds_store_b8_d16_hi v101, v139 offset:3328
	ds_store_b8 v101, v140 offset:3584
	ds_store_b8_d16_hi v101, v140 offset:3840
	ds_store_b8 v101, v141 offset:4096
	ds_store_b8_d16_hi v101, v141 offset:4352
	ds_store_b8 v101, v142 offset:4608
	ds_store_b8_d16_hi v101, v142 offset:4864
	ds_store_b8 v101, v143 offset:5120
	ds_store_b8_d16_hi v101, v143 offset:5376
	ds_store_b8 v101, v144 offset:5632
	ds_store_b8_d16_hi v101, v144 offset:5888
	ds_store_b8 v101, v145 offset:6144
	ds_store_b8_d16_hi v101, v145 offset:6400
	ds_store_b8 v101, v146 offset:6656
	ds_store_b8_d16_hi v101, v146 offset:6912
	ds_store_b8 v101, v147 offset:7168
	ds_store_b8_d16_hi v101, v147 offset:7424
	ds_store_b8 v101, v148 offset:7680
	ds_store_b8_d16_hi v101, v148 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1085 31                       ; ragged.py:1085:31
	ds_load_u8 v100, v210 offset:1280
	ds_load_u8 v101, v210 offset:1024
	ds_load_u8 v133, v210 offset:1792
	ds_load_u8 v134, v210 offset:1536
	ds_load_u8 v136, v210 offset:256
	ds_load_u8 v137, v210
	ds_load_u8 v138, v210 offset:768
	ds_load_u8 v139, v210 offset:512
	v_perm_b32 v135, v152, v151, 0xc0c0004
	v_perm_b32 v140, v164, v163, 0xc0c0004
	v_perm_b32 v141, v203, v201, 0xc0c0004
	v_perm_b32 v142, v156, v155, 0xc0c0004
	v_perm_b32 v144, v176, v175, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v160, v172, v171, 0xc0c0004
	ds_load_u8 v145, v210 offset:1920
	ds_load_u8 v146, v210 offset:1664
	ds_load_u8 v147, v210 offset:1408
	ds_load_u8 v148, v210 offset:1152
	ds_load_u8 v151, v210 offset:896
	ds_load_u8 v152, v210 offset:640
	ds_load_u8 v155, v210 offset:384
	ds_load_u8 v156, v210 offset:128
	v_perm_b32 v99, v102, v99, 0xc0c0004
	v_perm_b32 v102, v186, v185, 0xc0c0004
	v_perm_b32 v109, v205, v109, 0xc0c0004
	v_perm_b32 v105, v108, v105, 0xc0c0004
	v_perm_b32 v68, v68, v79, 0xc0c0004
	v_perm_b32 v72, v77, v72, 0xc0c0004
	v_perm_b32 v70, v114, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v143, v101, v100, 0xc0c0004
	v_lshl_or_b32 v101, v140, 16, v135
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v139, v138, 0xc0c0004
	v_lshl_or_b32 v100, v142, 16, v141
	v_perm_b32 v77, v69, v66, 0xc0c0004
	v_perm_b32 v111, v115, v111, 0xc0c0004
	v_lshl_or_b32 v134, v133, 16, v143
	v_perm_b32 v133, v137, v136, 0xc0c0004
	ds_load_u8 v136, v210 offset:3328
	ds_load_u8 v137, v210 offset:3072
	ds_load_u8 v138, v210 offset:3840
	ds_load_u8 v139, v210 offset:3584
	v_perm_b32 v143, v168, v167, 0xc0c0004
	ds_load_u8 v163, v210 offset:3968
	ds_load_u8 v164, v210 offset:3712
	ds_load_u8 v167, v210 offset:3456
	ds_load_u8 v168, v210 offset:3200
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_lshl_or_b32 v133, v135, 16, v133
	ds_load_u8 v135, v210 offset:2304
	ds_load_u8 v140, v210 offset:2048
	ds_load_u8 v141, v210 offset:2816
	ds_load_u8 v142, v210 offset:2560
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v148, v156, v155, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[133:134], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v72, 16, v68
	v_lshl_or_b32 v146, v145, 16, v147
	v_lshl_or_b32 v68, v77, 16, v70
	v_lshl_or_b32 v145, v151, 16, v148
	v_perm_b32 v70, v75, v87, 0xc0c0004
	v_perm_b32 v72, v85, v110, 0xc0c0004
	v_perm_b32 v67, v67, v78, 0xc0c0004
	v_perm_b32 v0, v76, v0, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v144, 16, v143
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v210 offset:5376
	ds_load_u8 v171, v210 offset:5120
	ds_load_u8 v172, v210 offset:5888
	ds_load_u8 v175, v210 offset:5632
	ds_load_u8 v176, v210 offset:2944
	ds_load_u8 v201, v210 offset:2688
	ds_load_u8 v203, v210 offset:2432
	ds_load_u8 v211, v210 offset:2176
	v_perm_b32 v143, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v140, v140, v135, 0xc0c0004
	v_lshl_or_b32 v135, v160, 16, v159
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v210 offset:4352
	ds_load_u8 v212, v210 offset:4096
	ds_load_u8 v213, v210 offset:4864
	ds_load_u8 v214, v210 offset:4608
	v_lshl_or_b32 v138, v138, 16, v137
	v_perm_b32 v144, v184, v183, 0xc0c0004
	ds_load_u8 v149, v210 offset:6016
	ds_load_u8 v150, v210 offset:5760
	ds_load_u8 v159, v210 offset:5504
	ds_load_u8 v160, v210 offset:5248
	v_lshl_or_b32 v137, v141, 16, v140
	v_perm_b32 v140, v180, v179, 0xc0c0004
	v_perm_b32 v147, v168, v167, 0xc0c0004
	v_perm_b32 v148, v164, v163, 0xc0c0004
	v_perm_b32 v141, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v171, v139, 0xc0c0004
	v_lshl_or_b32 v139, v144, 16, v143
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v175, v172, 0xc0c0004
	ds_load_u8 v175, v210 offset:4992
	ds_load_u8 v179, v210 offset:4736
	ds_load_u8 v180, v210 offset:4480
	ds_load_u8 v183, v210 offset:4224
	v_perm_b32 v143, v194, v193, 0xc0c0004
	ds_load_u8 v152, v210 offset:8064
	ds_load_u8 v155, v210 offset:7808
	ds_load_u8 v156, v210 offset:7552
	ds_load_u8 v194, v210 offset:7296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v151, v211, v203, 0xc0c0004
	v_perm_b32 v163, v201, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[145:146], v[100:101], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v212, v142, 0xc0c0004
	v_lshl_or_b32 v101, v148, 16, v147
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v189, v214, v213, 0xc0c0004
	v_lshl_or_b32 v100, v163, 16, v151
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v151, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[137:138], v[135:136], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v141, 16, v140
	v_lshl_or_b32 v142, v172, 16, v171
	v_lshl_or_b32 v141, v189, 16, v184
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[135:136], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v149, 16, v151
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v179, v175, 0xc0c0004
	v_perm_b32 v149, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v183, v180, 0xc0c0004
	v_perm_b32 v151, v204, v202, 0xc0c0004
	v_perm_b32 v153, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[141:142], v[139:140], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v144, v207, v206, 0xc0c0004
	v_lshl_or_b32 v135, v159, 16, v150
	v_perm_b32 v150, v166, v165, 0xc0c0004
	v_perm_b32 v171, v188, v187, 0xc0c0004
	v_perm_b32 v189, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v194, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v150, 16, v149
	v_lshl_or_b32 v139, v153, 16, v151
	v_perm_b32 v149, v170, v169, 0xc0c0004
	v_perm_b32 v150, v178, v177, 0xc0c0004
	v_perm_b32 v151, v162, v161, 0xc0c0004
	v_perm_b32 v153, v174, v173, 0xc0c0004
	v_perm_b32 v152, v155, v152, 0xc0c0004
	v_perm_b32 v157, v192, v191, 0xc0c0004
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v172, v210 offset:7424
	ds_load_u8 v184, v210 offset:7168
	ds_load_u8 v187, v210 offset:7936
	ds_load_u8 v188, v210 offset:7680
	v_lshl_or_b32 v149, v153, 16, v151
	v_perm_b32 v153, v182, v181, 0xc0c0004
	v_lshl_or_b32 v144, v144, 16, v143
	v_lshl_or_b32 v143, v189, 16, v171
	ds_load_u8 v171, v210 offset:6400
	ds_load_u8 v189, v210 offset:6144
	ds_load_u8 v190, v210 offset:6912
	ds_load_u8 v193, v210 offset:6656
	ds_load_u8 v164, v210 offset:7040
	ds_load_u8 v167, v210 offset:6784
	ds_load_u8 v168, v210 offset:6528
	ds_load_u8 v176, v210 offset:6272
	v_lshl_or_b32 v152, v152, 16, v154
	v_lshl_or_b32 v154, v157, 16, v153
	v_lshl_or_b32 v153, v102, 16, v99
	v_perm_b32 v99, v196, v195, 0xc0c0004
	v_perm_b32 v102, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[145:146], v[139:140], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v79, v97, v96, 0xc0c0004
	v_lshl_or_b32 v99, v102, 16, v99
	v_perm_b32 v102, v107, v118, 0xc0c0004
	v_perm_b32 v107, v116, v112, 0xc0c0004
	v_perm_b32 v77, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v72, 16, v70
	v_lshl_or_b32 v75, v0, 16, v67
	v_lshl_or_b32 v108, v107, 16, v102
	v_lshl_or_b32 v107, v105, 16, v109
	v_perm_b32 v102, v113, v122, 0xc0c0004
	v_perm_b32 v105, v121, v98, 0xc0c0004
	v_perm_b32 v109, v106, v117, 0xc0c0004
	v_perm_b32 v0, v83, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[107:108], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v105, 16, v102
	v_lshl_or_b32 v105, v111, 16, v109
	v_perm_b32 v102, v120, v119, 0xc0c0004
	v_perm_b32 v109, v128, v127, 0xc0c0004
	v_perm_b32 v111, v124, v123, 0xc0c0004
	v_perm_b32 v67, v94, v91, 0xc0c0004
	v_perm_b32 v70, v65, v89, 0xc0c0004
	v_perm_b32 v72, v88, v82, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v172, v184, v172, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v184, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v171, v189, v171, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v187, v193, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v176, v168, 0xc0c0004
	v_perm_b32 v156, v167, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[149:150], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v112, v130, v129, 0xc0c0004
	v_perm_b32 v116, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[149:150], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v109, 16, v102
	v_lshl_or_b32 v73, v111, 16, v73
	v_perm_b32 v102, v126, v125, 0xc0c0004
	v_perm_b32 v109, v132, v131, 0xc0c0004
	v_lshl_or_b32 v65, v77, 16, v79
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v67, 16, v0
	v_lshl_or_b32 v77, v72, 16, v70
	v_perm_b32 v0, v81, v93, 0xc0c0004
	v_perm_b32 v67, v92, v90, 0xc0c0004
	v_perm_b32 v69, v71, v86, 0xc0c0004
	v_perm_b32 v70, v84, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v184, 16, v172
	v_lshl_or_b32 v147, v187, 16, v171
	v_lshl_or_b32 v151, v156, 16, v155
	v_wmma_i32_16x16x16_iu4 v[49:56], v[141:142], v[153:154], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v116, 16, v112
	v_wmma_i32_16x16x16_iu4 v[33:40], v[135:136], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v109, 16, v102
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v67, 16, v0
	v_lshl_or_b32 v67, v70, 16, v69
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[151:152], v[143:144], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[147:148], v[98:99], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[151:152], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[151:152], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[151:152], v[67:68], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v0, s33, v216
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s1, s30, s28
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s3, s33, s1
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v67, 16, v0
	.loc	1 1098 21                       ; ragged.py:1098:21
	v_add_lshl_u32 v68, s3, v216, 1
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v66, 32, v0
	v_or_b32_e32 v65, 48, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s4, s28, v0
	v_cmp_gt_i32_e64 s2, s28, v67
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v69, 32, v68
	v_add_nc_u32_e32 v70, 64, v68
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s28, v66
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v0, 0x80000000, v68, s4
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v65
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v68, 0x60, v68
	v_cndmask_b32_e64 v67, 0x80000000, v69, s2
	v_cndmask_b32_e64 v66, 0x80000000, v70, s1
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s24, s16
	v_cndmask_b32_e32 v65, 0x80000000, v68, vcc_lo
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v79, v2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v2, 5, v215
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_clause 0x3
	buffer_load_u16 v68, v0, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	.loc	1 1105 33                       ; ragged.py:1105:33
	s_mul_i32 s5, s30, s29
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s25, s19, 0xffff
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s5, s31, s5
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_mov_b32 s24, s18
	v_add_lshl_u32 v0, s5, v215, 1
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v78, v1
	v_cvt_f32_i32_e32 v81, v4
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v1, 1, v215
	v_and_b32_e32 v4, 0xf0, v215
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v80, v3
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v3, s29, v216
	.loc	1 1104 36                       ; ragged.py:1104:36
	buffer_load_u16 v69, v0, s[24:27], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 4, v215
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v72, v11
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v11, v4, 2, 0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v86, v0, 1, v217
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v0, 28, v1
	v_and_b32_e32 v1, 32, v2
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s3, s29
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v71, v10
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v94, 2, v86
	v_or_b32_e32 v93, 4, v86
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v73, v12
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v10, s3, s31, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s31, v86
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v92, 6, v86
	.loc	1 1109 17 is_stmt 1             ; ragged.py:1109:17
	v_add3_u32 v11, v11, v1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v107, s31, v94
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v91, 8, v86
	.loc	1 1095 19 is_stmt 1             ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v83, v6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v6, 0x86, v86
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v106, s31, v93
	.loc	1 1095 19 is_stmt 1             ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v90, 10, v86
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v95, s8, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s29, v12
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v84, v7
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v7, 0x84, v86
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[0:1], null, s29, 48, v[10:11]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v105, s31, v92
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v89, 12, v86
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v1, v10, v86, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s29, v107
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v85, v8
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v8, 0x82, v86
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v104, s31, v91
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v88, 14, v86
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v97, s31, v6
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v12, v10, v94, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s29, v106
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v70, v9
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v9, 0x80, v86
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v103, s31, v90
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s19, s4, s8
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v98, s31, v7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s29, v105
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v102, s31, v89
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v99, s31, v8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s29, v104
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v101, s31, v88
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s29, v97
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v97, 0x80000000, v12, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s17
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v100, s31, v9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s29, v103
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s29, v98
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v98, 0x80000000, v108, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s29, v102
	v_cmp_gt_i32_e64 s10, s29, v99
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v99, 0x80000000, v109, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s15
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v82, v5
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v5, 0x88, v86
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v112, v10, v89, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s29, v101
	v_cmp_gt_i32_e64 s11, s29, v100
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v100, 0x80000000, v110, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v113, v10, v88, 2
	v_cndmask_b32_e64 v101, 0x80000000, v111, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s13
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v2, 0x8e, v86
	v_or_b32_e32 v3, 0x8c, v86
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v77, v16
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v16, s31, v5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v102, 0x80000000, v112, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v76, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v103, 0x80000000, v113, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v74, v13
	v_cvt_f32_i32_e32 v75, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s31, v2
	v_or_b32_e32 v14, s31, v3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v104, 0x80000000, v114, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s29, v16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v105, 0x80000000, v115, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v118, v10, v5, 2
	v_cndmask_b32_e64 v106, 0x80000000, v116, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s29, v13
	v_cmp_gt_i32_e64 s3, s29, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v107, 0x80000000, v117, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s6
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v96, s29, 5, v10
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_add_lshl_u32 v120, v10, v3, 2
	v_cndmask_b32_e64 v108, 0x80000000, v118, s19
	.loc	1 1095 19 is_stmt 1             ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_and_b32 s25, s23, 0xffff
	s_mov_b32 s24, s22
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v41, v41, v12
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v87, v4, 1, 0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v4, 0x8a, v86
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v15, s31, v4
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v119, v10, v4, 2
	v_add_lshl_u32 v10, v10, v2, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s29, v15
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v109, 0x80000000, v119, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s4, s3
	s_and_b32 s4, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v110, 0x80000000, v120, s19
	v_cndmask_b32_e64 v68, 0x80000000, v10, s4
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v67
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v53, v53, v10
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v48, v48, v12 :: v_dual_lshlrev_b32 v13, 16, v66
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v58, v58, v12 :: v_dual_lshlrev_b32 v65, 16, v65
	v_mul_f32_e32 v42, v42, v12
	v_mul_f32_e32 v43, v43, v12
	v_mul_f32_e32 v44, v44, v12
	v_mul_f32_e32 v45, v45, v12
	v_mul_f32_e32 v46, v46, v12
	v_mul_f32_e32 v47, v47, v12
	v_dual_mul_f32 v57, v57, v12 :: v_dual_mul_f32 v52, v52, v10
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v54, v54, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v55, v55, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v56, v56, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v33, v33, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v34, v34, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v35, v35, v10
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v49, v10 :: v_dual_lshlrev_b32 v12, 16, v69
	v_mul_f32_e32 v50, v50, v10
	v_mul_f32_e32 v51, v51, v10
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v27, v27, v13
	v_dual_mul_f32 v37, v37, v10 :: v_dual_mul_f32 v26, v26, v13
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v29, v29, v13
	v_dual_mul_f32 v39, v39, v10 :: v_dual_mul_f32 v66, v25, v13
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v31, v31, v13
	v_mul_f32_e32 v28, v28, v13
	v_mul_f32_e32 v30, v30, v13
	v_mul_f32_e32 v32, v32, v13
	v_mul_f32_e32 v67, v17, v13
	v_mul_f32_e32 v111, v19, v13
	v_mul_f32_e32 v112, v20, v13
	v_mul_f32_e32 v113, v21, v13
	v_mul_f32_e32 v115, v23, v13
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v72, v72, v65
	v_mul_f32_e32 v69, v18, v13
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[18:21], v87 offset:512
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v114, v22, v13
	v_mul_f32_e32 v116, v24, v13
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[10:13], v87
	ds_load_b128 v[14:17], v87 offset:16
	ds_load_b128 v[22:25], v87 offset:528
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v121, v95, v86, 2
	v_add_lshl_u32 v122, v95, v94, 2
	v_add_lshl_u32 v123, v95, v93, 2
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v70, v70, v65
	v_mul_f32_e32 v74, v74, v65
	v_mul_f32_e32 v71, v71, v65
	v_mul_f32_e32 v76, v76, v65
	v_mul_f32_e32 v78, v78, v65
	v_mul_f32_e32 v73, v73, v65
	v_mul_f32_e32 v80, v80, v65
	v_mul_f32_e32 v82, v82, v65
	v_mul_f32_e32 v75, v75, v65
	v_mul_f32_e32 v84, v84, v65
	v_mul_f32_e32 v77, v77, v65
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v57, v57, v18 :: v_dual_mul_f32 v58, v58, v19
	v_mul_f32_e32 v59, v59, v20
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v41, v41, v10 :: v_dual_mul_f32 v42, v42, v11
	v_dual_mul_f32 v43, v43, v12 :: v_dual_mul_f32 v44, v44, v13
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v37, v37, v22
	v_dual_mul_f32 v45, v45, v14 :: v_dual_mul_f32 v46, v46, v15
	v_dual_mul_f32 v47, v47, v16 :: v_dual_mul_f32 v48, v48, v17
	v_dual_mul_f32 v39, v39, v24 :: v_dual_mul_f32 v60, v60, v21
	v_mul_f32_e32 v27, v27, v12
	v_dual_mul_f32 v61, v61, v22 :: v_dual_mul_f32 v62, v62, v23
	v_mul_f32_e32 v63, v63, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0xe
	buffer_store_b32 v41, v1, s[24:27], 0 offen
	buffer_store_b32 v42, v97, s[24:27], 0 offen
	buffer_store_b32 v43, v98, s[24:27], 0 offen
	buffer_store_b32 v44, v99, s[24:27], 0 offen
	buffer_store_b32 v45, v100, s[24:27], 0 offen
	buffer_store_b32 v46, v101, s[24:27], 0 offen
	buffer_store_b32 v47, v102, s[24:27], 0 offen
	buffer_store_b32 v48, v103, s[24:27], 0 offen
	buffer_store_b32 v57, v104, s[24:27], 0 offen
	buffer_store_b32 v58, v105, s[24:27], 0 offen
	buffer_store_b32 v59, v106, s[24:27], 0 offen
	buffer_store_b32 v60, v107, s[24:27], 0 offen
	buffer_store_b32 v61, v108, s[24:27], 0 offen
	buffer_store_b32 v62, v109, s[24:27], 0 offen
	buffer_store_b32 v63, v110, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v121, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v64, v64, v25 :: v_dual_mul_f32 v29, v29, v14
	v_mul_f32_e32 v49, v49, v10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v41, 0x80000000, v122, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s17
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v50, v50, v11 :: v_dual_mul_f32 v51, v51, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v42, 0x80000000, v123, s4
	s_clause 0x1
	buffer_store_b32 v64, v68, s[24:27], 0 offen
	buffer_store_b32 v49, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v92, 2
	s_clause 0x1
	buffer_store_b32 v50, v41, s[24:27], 0 offen
	buffer_store_b32 v51, v42, s[24:27], 0 offen
	v_add_lshl_u32 v41, v95, v91, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v42, v95, v90, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s15
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v52, v52, v13 :: v_dual_mul_f32 v31, v31, v16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v43, v95, v89, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v53, v53, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s14
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v54, v54, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s13
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v55, v55, v16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	s_clause 0x1
	buffer_store_b32 v52, v1, s[24:27], 0 offen
	buffer_store_b32 v53, v41, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v88, 2
	v_add_lshl_u32 v41, v95, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v54, v42, s[24:27], 0 offen
	buffer_store_b32 v55, v43, s[24:27], 0 offen
	v_add_lshl_u32 v42, v95, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s11
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v56, v56, v17 :: v_dual_mul_f32 v67, v67, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v43, v95, v7, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v33, v33, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s10
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v34, v34, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s9
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v35, v35, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	s_clause 0x1
	buffer_store_b32 v56, v1, s[24:27], 0 offen
	buffer_store_b32 v33, v41, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v6, 2
	v_add_lshl_u32 v33, v95, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v34, v42, s[24:27], 0 offen
	buffer_store_b32 v35, v43, s[24:27], 0 offen
	v_add_lshl_u32 v34, v95, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v12, v72, v12
	v_dual_mul_f32 v36, v36, v21 :: v_dual_mul_f32 v69, v69, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v35, v95, v3, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s5
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v38, v38, v23
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[24:27], 0 offen
	buffer_store_b32 v37, v33, s[24:27], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	v_add_lshl_u32 v1, v95, v2, 2
	v_add_lshl_u32 v33, v96, v86, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v38, v34, s[24:27], 0 offen
	buffer_store_b32 v39, v35, s[24:27], 0 offen
	v_add_lshl_u32 v34, v96, v94, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v35, v96, v93, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v40, v40, v25
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v79, v79, v65 :: v_dual_mul_f32 v66, v66, v10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s17
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v81, v81, v65 :: v_dual_mul_f32 v26, v26, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v83, v83, v65 :: v_dual_mul_f32 v30, v30, v15
	v_mul_f32_e32 v65, v85, v65
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v85, v111, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v40, v1, s[24:27], 0 offen
	buffer_store_b32 v66, v33, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v92, 2
	s_clause 0x1
	buffer_store_b32 v26, v34, s[24:27], 0 offen
	buffer_store_b32 v27, v35, s[24:27], 0 offen
	v_add_lshl_u32 v26, v96, v91, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s16
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v28, v28, v13 :: v_dual_mul_f32 v111, v113, v22
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v33, v96, v89, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v26, v96, v9, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s12
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v32, v32, v17 :: v_dual_mul_f32 v113, v115, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[24:27], 0 offen
	buffer_store_b32 v31, v33, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v7, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[24:27], 0 offen
	buffer_store_b32 v67, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v26, v96, v5, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s7
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v87, v112, v21 :: v_dual_mul_f32 v10, v70, v10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v69, v27, s[24:27], 0 offen
	buffer_store_b32 v85, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v87, v1, s[24:27], 0 offen
	buffer_store_b32 v111, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v112, v114, v23
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v26, v0, v86, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s1, s0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v114, v116, v25 :: v_dual_mul_f32 v11, v71, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v112, v27, s[24:27], 0 offen
	buffer_store_b32 v113, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v0, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v0, v93, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v114, v1, s[24:27], 0 offen
	buffer_store_b32 v10, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v10, v0, v91, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s16
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v13, v73, v13 :: v_dual_mul_f32 v14, v74, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v11, v27, s[24:27], 0 offen
	buffer_store_b32 v12, v28, s[24:27], 0 offen
	v_add_lshl_u32 v11, v0, v90, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_add_lshl_u32 v12, v0, v89, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[24:27], 0 offen
	buffer_store_b32 v14, v10, s[24:27], 0 offen
	v_add_lshl_u32 v1, v0, v88, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s12
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v15, v75, v15 :: v_dual_mul_f32 v16, v76, v16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s11
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v17, v77, v17 :: v_dual_mul_f32 v18, v78, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x3
	buffer_store_b32 v15, v11, s[24:27], 0 offen
	buffer_store_b32 v16, v12, s[24:27], 0 offen
	buffer_store_b32 v17, v1, s[24:27], 0 offen
	buffer_store_b32 v18, v9, s[24:27], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s5
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v19, v79, v19 :: v_dual_mul_f32 v20, v80, v20
	v_dual_mul_f32 v21, v81, v21 :: v_dual_mul_f32 v22, v82, v22
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, vcc_lo, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v23, v83, v23 :: v_dual_mul_f32 v24, v84, v24
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v25, v65, v25 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x6
	buffer_store_b32 v19, v8, s[24:27], 0 offen
	buffer_store_b32 v20, v7, s[24:27], 0 offen
	buffer_store_b32 v21, v1, s[24:27], 0 offen
	buffer_store_b32 v22, v5, s[24:27], 0 offen
	buffer_store_b32 v23, v2, s[24:27], 0 offen
	buffer_store_b32 v24, v3, s[24:27], 0 offen
	buffer_store_b32 v25, v0, s[24:27], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 48
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
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 48
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17088
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 48
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 103
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 48
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 11
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
