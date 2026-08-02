	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s21, s[0:1], 0x84
	s_load_b32 s50, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v40, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s20, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s20, s2
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x800, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s25, 0, v54
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[41:42], null, s50, v32, v[40:41]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s50, v40
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s20, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s20, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s21
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s50, s8, v[41:42]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s21
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s51, s10, 0x7fffffe0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	v_and_or_b32 v5, v3, 30, v33
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[14:17], v1, s[12:15], 0 offen
	v_lshlrev_b32_e32 v55, 2, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s68, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s68, s68, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v57, 4, v55
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v13, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s20, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v18
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v5, v55, v14
	ds_bpermute_b32 v6, v55, v15
	ds_bpermute_b32 v7, v55, v16
	ds_bpermute_b32 v9, v55, v17
	ds_bpermute_b32 v8, v57, v14
	ds_bpermute_b32 v10, v57, v15
	ds_bpermute_b32 v11, v57, v16
	ds_bpermute_b32 v12, v57, v17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v14, 0x1054, v14, s25
	v_cndmask_b32_e64 v15, 0x3276, v15, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v14, 0x540054, v14
	v_and_b32_e32 v15, 0x760076, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v14, 4, v14
	v_lshl_or_b32 v15, v15, 4, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v52, 0x5040504, v14
	v_and_b32_e32 v53, 0x7060706, v15
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x64
	v_or_b32_e32 v56, s8, v13
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v13, 1, v56
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v44, v5, v8, s25
	v_cndmask_b32_e64 v48, v8, v5, s25
	v_mov_b32_e32 v8, 0x6420
	s_mov_b32 s55, 0x31027000
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v45, v6, v10, s25
	v_cndmask_b32_e64 v49, v10, v6, s25
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v37, 0x7531 :: v_dual_add_nc_u32 v4, s21, v4
	s_lshr_b32 s0, s0, 28
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v36, 7, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v43, v9, v12, s25
	v_cndmask_b32_e64 v42, v7, v11, s25
	v_cndmask_b32_e64 v47, v12, v9, s25
	v_cndmask_b32_e64 v46, v11, v7, s25
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v10, 0x7632
	buffer_load_u16 v35, v13, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v13, 1, v0
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v5, 56, v0
	v_and_b32_e32 v6, 0x3f0, v2
	v_mov_b32_e32 v9, 0x5410
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	v_and_b32_e32 v3, 24, v3
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v2, 48, v2
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v11, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_cndmask_b32_e32 v50, 0x7531, v8, vcc_lo
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_and_b32 v7, 24, v0
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_lshlrev_b32 v38, 2, v32
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v34, 3, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v39, 1, v5
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v51, 6, v13
	v_cndmask_b32_e64 v52, 0x1054, v9, s25
	v_cndmask_b32_e64 v53, 0x3276, v10, s25
	v_xor_b32_e32 v63, v2, v5
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v64, 48, v11
	v_dual_mov_b32 v18, v24 :: v_dual_cndmask_b32 v37, 0x6420, v37
	v_lshl_or_b32 v70, v50, 8, v50
	v_dual_mov_b32 v28, v24 :: v_dual_add_nc_u32 v59, s7, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s1, 0x10007
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v58, s6, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s7, s1, s7
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v65, 0x210, v0
	v_mov_b32_e32 v20, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 4
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v34
	v_and_or_b32 v62, v38, 60, v51
	v_lshl_or_b32 v38, v53, 8, v53
	v_lshl_or_b32 v63, v36, 9, v63
	v_lshl_or_b32 v36, v36, 6, v64
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_lshl_or_b32 v37, v37, 8, v37
	s_sext_i32_i16 s7, s7
	v_lshl_or_b32 v61, v1, 5, v3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	v_mov_b32_e32 v25, v24
	v_xor_b32_e32 v60, v6, v7
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v38, 0x760076, v38
	v_mov_b32_e32 v9, v24
	v_xor_b32_e32 v65, v36, v65
	v_and_b32_e32 v36, 0x750031, v37
	s_lshl_b32 s3, s6, 14
	s_and_b32 s72, s7, 0xfffff800
	v_xor_b32_e32 v66, 8, v60
	s_add_i32 s72, s72, s3
	v_xor_b32_e32 v67, 8, v61
	v_xor_b32_e32 v68, 16, v61
	v_xor_b32_e32 v69, 24, v61
	v_xor_b32_e32 v53, 0x90, v63
	v_xor_b32_e32 v71, 0x120, v63
	v_xor_b32_e32 v72, 0x1b0, v63
	v_lshl_or_b32 v37, v38, 4, v38
	v_xor_b32_e32 v38, 16, v65
	v_xor_b32_e32 v77, 48, v65
	v_xor_b32_e32 v78, 0x420, v65
	v_xor_b32_e32 v79, 0x430, v65
	v_xor_b32_e32 v80, 0x410, v65
	v_or_b32_e32 v73, s72, v33
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s6
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v66, 0, v66
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v67, 0, v67
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v68, 0, v68
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v69, 0, v69
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v71, 0, v71
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v12, v24
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v72, 0, v72
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v75, 0, v38
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v77, 0, v77
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v78, 0, v78
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v80, 0, v80
	v_xor_b32_e32 v64, 64, v62
	v_or_b32_e32 v89, 2, v73
	v_or_b32_e32 v90, 4, v73
	v_or_b32_e32 v91, 6, v73
	v_or_b32_e32 v92, 8, v73
	v_or_b32_e32 v93, 10, v73
	v_or_b32_e32 v94, 12, v73
	v_or_b32_e32 v95, 14, v73
	v_or_b32_e32 v96, 16, v73
	v_or_b32_e32 v97, 18, v73
	v_or_b32_e32 v98, 20, v73
	v_or_b32_e32 v99, 22, v73
	v_or_b32_e32 v100, 24, v73
	v_or_b32_e32 v101, 26, v73
	v_or_b32_e32 v102, 28, v73
	v_or_b32_e32 v103, 30, v73
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s19, s20
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s73, s1, s6
	s_lshl_b32 s69, s39, 1
	s_mul_i32 s70, s39, 3
	s_mov_b32 s71, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s61, s15
	s_add_i32 s73, s73, s12
	v_mov_b32_e32 v106, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[50:51], null, s39, v39, v[34:35]
	v_lshl_or_b32 v34, v52, 8, v52
	v_and_b32_e32 v39, 0x750031, v70
	v_mov_b32_e32 v17, v24
	v_mad_u64_u32 v[51:52], null, s19, v32, v[40:41]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 0x540054, v34
	v_lshl_or_b32 v32, v39, 4, v39
	v_mov_b32_e32 v15, v24
	v_xor_b32_e32 v39, 32, v65
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v33, 16, v35
	v_lshl_or_b32 v34, v34, 4, v34
	v_and_b32_e32 v74, 0x7050301, v32
	v_lshl_or_b32 v32, v36, 4, v36
	v_mov_b32_e32 v1, v24
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v76, 0, v39
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v81, 8, v51
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v83, 10, v51
	v_dual_mov_b32 v109, v24 :: v_dual_add_nc_u32 v82, 9, v51
	v_add_nc_u32_e32 v70, 0, v53
	v_and_b32_e32 v52, 0x5040504, v34
	v_and_b32_e32 v53, 0x7060706, v37
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v105, s7, v33 :: v_dual_add_nc_u32 v84, 11, v51
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v85, 12, v51
	v_add_nc_u32_e32 v86, 13, v51
	v_add_nc_u32_e32 v87, 14, v51
	v_add_nc_u32_e32 v88, 15, v51
	v_and_b32_e32 v104, 0x7050301, v32
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v112, 1, v40
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s1, s51, s72
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v114, 2, v40
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[128:129], null, s1, s50, v[41:42]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v112, s51, v112
	v_or_b32_e32 v113, s51, v40
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v115, 3, v40
	v_or_b32_e32 v116, 4, v40
	v_or_b32_e32 v117, 5, v40
	v_or_b32_e32 v118, 6, v40
	v_or_b32_e32 v119, 7, v40
	v_or_b32_e32 v120, 8, v40
	v_or_b32_e32 v121, 9, v40
	v_or_b32_e32 v122, 10, v40
	v_or_b32_e32 v123, 11, v40
	v_or_b32_e32 v124, 12, v40
	v_or_b32_e32 v125, 13, v40
	v_or_b32_e32 v126, 14, v40
	v_or_b32_e32 v127, 15, v40
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v131, 1, v51
	v_add_nc_u32_e32 v132, 2, v51
	v_add_nc_u32_e32 v133, 3, v51
	v_add_nc_u32_e32 v134, 4, v51
	v_add_nc_u32_e32 v135, 5, v51
	v_add_nc_u32_e32 v136, 6, v51
	v_add_nc_u32_e32 v137, 7, v51
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v112, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v112, v59
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v112, s51, v114
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s8, s73, s51
	v_mad_u64_u32 v[129:130], null, s1, s39, v[50:51]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v130, s8, v51, 2
	v_add_lshl_u32 v138, s8, v81, 2
	v_add_lshl_u32 v139, s8, v82, 2
	v_add_lshl_u32 v140, s8, v83, 2
	v_add_lshl_u32 v141, s8, v84, 2
	v_add_lshl_u32 v158, s8, v85, 2
	v_add_lshl_u32 v159, s8, v86, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v113, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v113, v59
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v160, s8, v87, 2
	v_add_lshl_u32 v161, s8, v88, 2
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v113, s51, v115
	v_or_b32_e32 v114, s51, v116
	v_or_b32_e32 v115, s51, v117
	v_or_b32_e32 v116, s51, v118
	v_or_b32_e32 v117, s51, v119
	v_or_b32_e32 v118, s51, v120
	v_or_b32_e32 v119, s51, v121
	v_or_b32_e32 v120, s51, v122
	v_or_b32_e32 v121, s51, v123
	v_or_b32_e32 v122, s51, v124
	v_or_b32_e32 v123, s51, v125
	v_or_b32_e32 v124, s51, v126
	v_or_b32_e32 v125, s51, v127
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v126, s8, v131, 2
	v_add_lshl_u32 v127, s8, v132, 2
	v_add_lshl_u32 v131, s8, v133, 2
	v_add_lshl_u32 v132, s8, v134, 2
	v_add_lshl_u32 v133, s8, v135, 2
	v_add_lshl_u32 v134, s8, v136, 2
	v_add_lshl_u32 v135, s8, v137, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v112, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v112, v59
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v112, 0x80000000, v128, s5
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v113, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v113, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v114, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v114, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v115, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v115, v59
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[112:115], v112, s[52:55], 0 offen
	v_add_nc_u32_e32 v110, 0, v60
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s40 :: v_dual_add_nc_u32 v111, 0, v61
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v116, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v116, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v117, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v117, v59
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v116, 1, v129
	v_add_lshl_u32 v117, v129, s39, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s41
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v163, 0x80000000, v116, s0
	v_cndmask_b32_e64 v164, 0x80000000, v117, s0
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v118, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v118, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v119, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v119, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v120, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v120, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v121, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v121, v59
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s42 :: v_dual_mov_b32 v35, s43
	v_dual_mov_b32 v36, s44 :: v_dual_mov_b32 v37, s45
	v_dual_mov_b32 v38, s46 :: v_dual_mov_b32 v39, s47
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s6, s7
	s_and_b32 s6, s8, s9
	s_and_b32 s7, s10, s11
	s_and_b32 s8, s12, s13
	s_and_b32 s9, s14, s15
	s_and_b32 s10, s16, s17
	s_and_b32 s12, s18, s19
	s_and_b32 s13, s20, s21
	s_and_b32 s18, s22, s23
	s_and_b32 s19, s24, s26
	s_and_b32 s20, s27, s28
	s_and_b32 s1, s4, s1
	s_and_b32 s14, s4, s3
	s_and_b32 s15, s4, s6
	s_and_b32 s17, s4, s7
	s_and_b32 s6, s4, s8
	s_and_b32 s9, s4, s9
	s_and_b32 s11, s4, s10
	s_and_b32 s12, s4, s12
	s_and_b32 s16, s4, s13
	s_and_b32 s18, s4, s18
	s_and_b32 s19, s4, s19
	s_and_b32 s20, s4, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v118, v129, s69, 1
	v_add_lshl_u32 v119, v129, s70, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v162, 0x80000000, v130, s1
	v_cndmask_b32_e64 v166, 0x80000000, v126, s14
	v_cndmask_b32_e64 v168, 0x80000000, v127, s15
	v_cndmask_b32_e64 v169, 0x80000000, v131, s17
	v_cndmask_b32_e64 v170, 0x80000000, v132, s6
	v_cndmask_b32_e64 v171, 0x80000000, v133, s9
	v_cndmask_b32_e64 v172, 0x80000000, v134, s11
	v_cndmask_b32_e64 v173, 0x80000000, v135, s12
	v_cndmask_b32_e64 v174, 0x80000000, v138, s16
	v_cndmask_b32_e64 v175, 0x80000000, v139, s18
	v_cndmask_b32_e64 v176, 0x80000000, v140, s19
	v_cndmask_b32_e64 v177, 0x80000000, v141, s20
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v123, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v123, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v124, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v124, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v125, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v125, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v122, v58
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v122, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v142, s51, v73, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s31, s33
	s_and_b32 s23, s34, s35
	s_and_b32 s24, s36, s37
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v143, v89, s51, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s29, s30
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v144, v90, s51, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s4, s22
	s_and_b32 s10, s4, s23
	s_and_b32 s13, s4, s24
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v145, v91, s51, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s4, s21
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v146, v92, s51, 1
	v_add_lshl_u32 v147, v93, s51, 1
	v_add_lshl_u32 v148, v94, s51, 1
	v_add_lshl_u32 v149, v95, s51, 1
	v_add_lshl_u32 v150, v96, s51, 1
	v_add_lshl_u32 v151, v97, s51, 1
	v_add_lshl_u32 v152, v98, s51, 1
	v_add_lshl_u32 v153, v99, s51, 1
	v_add_lshl_u32 v154, v100, s51, 1
	v_add_lshl_u32 v155, v101, s51, 1
	v_add_lshl_u32 v156, v102, s51, 1
	v_add_lshl_u32 v157, v103, s51, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v165, 0x80000000, v118, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v159, 0x80000000, v159, s8
	v_cndmask_b32_e64 v160, 0x80000000, v160, s10
	v_cndmask_b32_e64 v161, 0x80000000, v161, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v167, 0x80000000, v119, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v158, 0x80000000, v158, s7
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 32
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v110, v[112:113]
	ds_store_b64 v66, v[114:115]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[110:113], v111 offset1:1
	ds_load_2addr_stride64_b64 v[114:117], v67 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[126:133], v[110:111], v[48:49], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[112:113], v[48:49], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v68 offset1:1
	ds_load_2addr_stride64_b64 v[36:39], v69 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[126:133], v[114:115], v[46:47], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[116:117], v[46:47], v[134:141] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v110, v142, s[60:63], 0 offen
	buffer_load_u16 v111, v143, s[60:63], 0 offen
	buffer_load_u16 v112, v144, s[60:63], 0 offen
	buffer_load_u16 v113, v145, s[60:63], 0 offen
	buffer_load_u16 v114, v146, s[60:63], 0 offen
	buffer_load_u16 v115, v147, s[60:63], 0 offen
	buffer_load_u16 v116, v148, s[60:63], 0 offen
	buffer_load_u16 v117, v149, s[60:63], 0 offen
	buffer_load_u16 v118, v150, s[60:63], 0 offen
	buffer_load_u16 v119, v151, s[60:63], 0 offen
	buffer_load_u16 v120, v152, s[60:63], 0 offen
	buffer_load_u16 v121, v153, s[60:63], 0 offen
	buffer_load_u16 v122, v154, s[60:63], 0 offen
	buffer_load_u16 v123, v155, s[60:63], 0 offen
	buffer_load_u16 v124, v156, s[60:63], 0 offen
	buffer_load_u16 v125, v157, s[60:63], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_b32 v144, v162, s[56:59], 0 offen
	buffer_load_b32 v146, v166, s[56:59], 0 offen
	buffer_load_b32 v148, v168, s[56:59], 0 offen
	buffer_load_b32 v149, v169, s[56:59], 0 offen
	buffer_load_b32 v142, v170, s[56:59], 0 offen
	buffer_load_b32 v143, v171, s[56:59], 0 offen
	buffer_load_b32 v145, v172, s[56:59], 0 offen
	buffer_load_b32 v147, v173, s[56:59], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[126:133], v[32:33], v[44:45], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[34:35], v[44:45], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[126:133], v[36:37], v[42:43], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[38:39], v[42:43], v[134:141] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[36:39], v163, s[64:67], 0 offen
	buffer_load_b128 v[32:35], v164, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_b32 v152, v174, s[56:59], 0 offen
	buffer_load_b32 v154, v175, s[56:59], 0 offen
	buffer_load_b32 v156, v176, s[56:59], 0 offen
	buffer_load_b32 v157, v177, s[56:59], 0 offen
	buffer_load_b32 v150, v158, s[56:59], 0 offen
	buffer_load_b32 v151, v159, s[56:59], 0 offen
	buffer_load_b32 v153, v160, s[56:59], 0 offen
	buffer_load_b32 v155, v161, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[163:166], v165, s[64:67], 0 offen
	buffer_load_b128 v[159:162], v167, s[64:67], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v141, v141
	v_mul_f32_e32 v132, v105, v132
	v_mul_f32_e32 v137, v105, v137
	v_mul_f32_e32 v134, v105, v134
	v_mul_f32_e32 v136, v105, v136
	v_mul_f32_e32 v141, v105, v141
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v135, v135
	v_mul_f32_e32 v140, v105, v140
	v_mul_f32_e32 v126, v105, v126
	v_mul_f32_e32 v133, v105, v133
	v_cvt_f32_i32_e32 v138, v138
	v_mul_f32_e32 v128, v105, v128
	v_mul_f32_e32 v135, v105, v135
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v139, v139
	v_mul_f32_e32 v138, v105, v138
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v131, v131
	v_mul_f32_e32 v130, v105, v130
	v_mul_f32_e32 v139, v105, v139
	v_mul_f32_e32 v129, v105, v129
	v_mul_f32_e32 v127, v105, v127
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v131, v105, v131 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v169, 16, v124
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v142, 0xff800000, v142, s6
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v143, 0xff800000, v143, s9
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v145, 0xff800000, v145, s11
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v147, 0xff800000, v147, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v142
	v_cmp_neq_f32_e64 s33, 0xff800000, v143
	v_cmp_neq_f32_e64 s31, 0xff800000, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s30, 0xff800000, v147
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, s9, s33
	s_and_b32 s11, s11, s31
	s_and_b32 s12, s12, s30
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v167.l, v36.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v167.h, v32.l
	v_mov_b16_e32 v32.l, v36.h
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v150, 0xff800000, v150, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v158, v32
	v_add_nc_u32_e32 v32, 0, v63
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v153, 0xff800000, v153, s10
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v168.l, v163.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v168.h, v159.l
	v_mov_b16_e64 v159.l, v163.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v150
	v_cmp_neq_f32_e64 s36, 0xff800000, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v151, 0xff800000, v151, s8
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v163, 16, v118
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v32, v[167:168], v[158:159] offset1:8
	v_mov_b16_e64 v167.h, v33.l
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e64 v168.l, v164.l
	v_mov_b16_e64 v168.h, v160.l
	v_mov_b16_e64 v167.l, v37.l
	v_mov_b16_e64 v160.l, v164.h
	v_mov_b32_e32 v159, v33
	v_mov_b16_e32 v32.h, v34.l
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e64 v33.l, v165.l
	v_mov_b16_e64 v33.h, v161.l
	ds_store_2addr_b64 v70, v[167:168], v[159:160] offset1:8
	v_mov_b16_e32 v32.l, v38.l
	v_mov_b16_e64 v161.l, v165.h
	v_mov_b32_e32 v160, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v108, v108
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v108, 0xff800000, v146, s14
	v_mov_b32_e32 v37, v109
	v_cndmask_b32_e64 v109, 0xff800000, v144, s1
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v71, v[32:33], v[160:161] offset1:8
	v_mov_b16_e64 v33.h, v162.l
	v_mov_b16_e64 v162.l, v166.h
	v_mov_b16_e64 v33.l, v166.l
	v_mov_b16_e32 v32.l, v39.l
	v_mov_b16_e32 v32.h, v35.l
	v_mov_b16_e32 v35.l, v39.h
	v_mov_b32_e32 v36, v162
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v108
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v144, 0xff800000, v157, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v109
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v146, 0xff800000, v156, s19
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v72, v[32:33], v[35:36] offset1:8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0xff800000, v149, s17
	v_cndmask_b32_e64 v36, 0xff800000, v148, s15
	v_cndmask_b32_e64 v148, 0xff800000, v154, s18
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s23, s14, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v149, 0xff800000, v152, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v35
	v_cmp_neq_f32_e64 s22, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v152, 0xff800000, v155, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v155, 0, 1, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v144
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s17, s3
	s_and_b32 s22, s15, s22
	v_cndmask_b32_e64 v33, 0, 1, s21
	v_cndmask_b32_e64 v154, 0, 1, s22
	s_and_b32 s24, s1, s24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v146
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v156, 0, 1, s24
	v_mov_b16_e32 v32.l, v33.l
	v_mov_b16_e64 v33.l, v154.l
	s_and_b32 s1, s20, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v148
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v157, 0, 1, s1
	v_lshlrev_b16 v32.l, 8, v32.l
	s_and_b32 s14, s19, s27
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v149
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v161, 0, 1, s14
	s_and_b32 s15, s18, s28
	v_or_b16 v154.h, v33.l, v32.l
	v_mov_b16_e64 v32.l, v155.l
	v_mov_b16_e64 v33.l, v156.l
	v_cndmask_b32_e64 v162, 0, 1, s15
	s_and_b32 s16, s16, s29
	v_cndmask_b32_e64 v156, 0, 1, s12
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v155, 0, 1, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v152
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s6, s34
	s_and_b32 s10, s10, s36
	v_or_b16 v154.l, v33.l, v32.l
	v_mov_b16_e64 v32.l, v157.l
	v_mov_b16_e64 v33.l, v161.l
	v_cndmask_b32_e64 v161, 0, 1, s11
	s_and_b32 s6, s13, s35
	s_and_b32 s7, s7, s38
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v170, 16, v125
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e32 v125, v150, v151, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v119
	v_lshlrev_b32_e32 v165, 16, v120
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v157.h, v33.l, v32.l
	v_mov_b16_e64 v32.l, v162.l
	v_mov_b16_e64 v33.l, v155.l
	v_cndmask_b32_e64 v155, 0, 1, s9
	v_cndmask_b32_e64 v162, 0, 1, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v166, 16, v121
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v121, v149, v148 :: v_dual_lshlrev_b32 v168, 16, v123
	v_dual_cndmask_b32 v118, v147, v145 :: v_dual_cndmask_b32 v123, v146, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v157.l, v33.l, v32.l
	v_mov_b16_e64 v32.l, v156.l
	v_mov_b16_e64 v33.l, v161.l
	v_cndmask_b32_e64 v161, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v119, v145, v147 :: v_dual_cndmask_b32 v120, v148, v149
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v118, v55, v118
	ds_bpermute_b32 v121, v57, v121
	ds_bpermute_b32 v119, v57, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v167, 16, v122
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v156.h, v33.l, v32.l
	v_mov_b16_e64 v32.l, v155.l
	v_mov_b16_e64 v33.l, v162.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v162, 16, v115
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v115, v142, v143 :: v_dual_cndmask_b32 v122, v144, v146
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v151
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_bpermute_b32 v123, v57, v123
	ds_bpermute_b32 v115, v57, v115
	ds_bpermute_b32 v125, v57, v125
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v156.l, v33.l, v32.l
	v_mov_b16_e64 v32.l, v161.l
	v_cndmask_b32_e64 v33, 0, 1, s10
	v_cndmask_b32_e64 v161, 0, 1, s7
	s_and_b32 s8, s8, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v158, 0, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v155, 0, 1, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v34.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v107
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.h, v33.l, v32.l
	v_mov_b16_e64 v33.l, v161.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v114
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e32 v114, v108, v109, vcc_lo
	v_cndmask_b32_e32 v108, v109, v108, vcc_lo
	v_cndmask_b32_e32 v109, v35, v36, vcc_lo
	v_dual_cndmask_b32 v35, v36, v35 :: v_dual_cndmask_b32 v36, v143, v142
	ds_bpermute_b32 v114, v55, v114
	ds_bpermute_b32 v108, v57, v108
	v_cndmask_b32_e32 v143, v153, v152, vcc_lo
	ds_bpermute_b32 v109, v55, v109
	ds_bpermute_b32 v35, v57, v35
	ds_bpermute_b32 v120, v55, v120
	ds_bpermute_b32 v36, v55, v36
	ds_bpermute_b32 v143, v57, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v32.l, v155.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v34.h
	v_mov_b16_e64 v159.h, v34.h
	v_mov_b16_e32 v32.h, v34.h
	v_mov_b16_e64 v155.h, v34.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v106, v106
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s68
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.l, v33.l, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v144, v108, v114, s25
	v_cndmask_b32_e64 v145, v114, v108, s25
	v_cndmask_b32_e64 v114, v119, v118, s25
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v108, v35, v109, s25
	v_cndmask_b32_e64 v35, v109, v35, s25
	v_mul_f32_e32 v144, 0x3fb8aa3b, v144
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v109, v115, v36, s25
	v_cndmask_b32_e64 v36, v36, v115, s25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v35, 0x3fb8aa3b, v35 :: v_dual_fmac_f32 v144, v126, v110
	v_cndmask_b32_e64 v126, v118, v119, s25
	v_cndmask_b32_e64 v118, v121, v120, s25
	v_cndmask_b32_e32 v142, v152, v153, vcc_lo
	v_dual_mul_f32 v147, 0x3fb8aa3b, v109 :: v_dual_cndmask_b32 v124, v151, v150
	ds_bpermute_b32 v122, v55, v122
	v_mul_f32_e32 v153, 0x3fb8aa3b, v118
	ds_bpermute_b32 v142, v55, v142
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v147, v128, v112
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v124, v55, v124
	v_cndmask_b32_e64 v128, v120, v121, s25
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v152, v33, v157, v74
	v_perm_b32 v33, v33, v157, v104
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v135, v164
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v146, 0x3fb8aa3b, v108 :: v_dual_fmac_f32 v153, v130, v161
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v135, v55, v152
	ds_bpermute_b32 v33, v57, v33
	v_perm_b32 v150, v156, v154, v74
	v_perm_b32 v151, v156, v154, v104
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v128, 0x3fb8aa3b, v128
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v146, v127, v111
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v128, v138, v167
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v119, v123, v122, s25
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v121, v143, v142, s25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v120, v125, v124, s25
	v_cndmask_b32_e64 v149, v124, v125, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v154, 0x3fb8aa3b, v119 :: v_dual_mul_f32 v157, 0x3fb8aa3b, v121
	v_mul_f32_e32 v148, 0x3fb8aa3b, v114
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v154, v131, v162 :: v_dual_fmac_f32 v157, v133, v117
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v148, v129, v113
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v129, v122, v123, s25
	v_mul_f32_e32 v156, 0x3fb8aa3b, v120
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v133, v55, v150
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v138, v33, v135, s25
	v_cndmask_b32_e64 v33, v135, v33, s25
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v129, 0x3fb8aa3b, v129
	v_dual_mul_f32 v130, 0x3fb8aa3b, v145 :: v_dual_mul_f32 v131, 0x3fb8aa3b, v126
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v156, v132, v116
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v132, v142, v143, s25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v129, v139, v168 :: v_dual_fmac_f32 v130, v134, v163
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v143, 0x100, v33
	ds_bpermute_b32 v134, v57, v151
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v131, v137, v166 :: v_dual_and_b32 v142, 1, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v139, 1, v138
	v_and_b32_e32 v145, 0x1000000, v33
	v_cmp_eq_u32_e64 s18, 0, v143
	v_and_b32_e32 v143, 0x1000000, v138
	v_cmp_eq_u32_e64 s13, 1, v142
	v_cmp_eq_u32_e64 s31, 1, v139
	v_cmp_eq_u32_e64 s3, 0, v145
	v_and_b32_e32 v33, 0x10000, v33
	v_cmp_eq_u32_e64 s37, 0, v143
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v128, s13
	v_cndmask_b32_e64 v151, v129, 0xff800000, s18
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[108:111], v158
	ds_load_b128 v[112:115], v75
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s20, 0, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, v157, 0xff800000, s37
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[120:123], v79
	ds_load_b128 v[116:119], v78
	ds_load_b128 v[124:127], v75 offset:2048
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v137, v134, v133, s25
	v_cndmask_b32_e64 v133, v133, v134, s25
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v135, 0x100, v137
	v_and_b32_e32 v142, 0x100, v133
	v_and_b32_e32 v134, 1, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s30, 0, v135
	v_cmp_eq_u32_e64 s19, 0, v142
	v_and_b32_e32 v142, 0x1000000, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s29, 1, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, v146, 0xff800000, s30
	v_cndmask_b32_e64 v146, 0xff800000, v153, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 0, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, v35, 0xff800000, s19
	v_cndmask_b32_e64 v144, 0xff800000, v144, s29
	v_cndmask_b32_e64 v142, v148, 0xff800000, s34
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v132, 0x3fb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v132, v141, v170 :: v_dual_and_b32 v141, 1, v133
	v_fmac_f32_e32 v36, v136, v165
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v149
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v149, 0x1000000, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, v132, 0xff800000, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v136, v140, v169
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v140, 0x100, v138
	v_and_b32_e32 v138, 0x10000, v138
	v_cmp_eq_u32_e64 s26, 0, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v130, s28
	v_cndmask_b32_e64 v33, v136, 0xff800000, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v140
	v_cmp_eq_u32_e64 s36, 0, v138
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, v131, 0xff800000, s26
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v130, v144, v145
	v_max3_f32 v128, v150, v151, v33
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, v154, 0xff800000, s33
	v_cndmask_b32_e64 v148, v156, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v137, 0x10000, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v131, v142, v146, v140
	v_max3_f32 v132, v148, v143, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 0, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, v147, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v133, 0x10000, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s27, 0, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v36, 0xff800000, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v129, v35, v36, v149
	v_max3_f32 v128, v129, v128, v161
	v_max3_f32 v129, v130, v147, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v128, v129, v132, v128
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v129, v128, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v162, v107, v128, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v145, v162
	v_sub_f32_e32 v129, v144, v162
	v_sub_f32_e32 v130, v147, v162
	v_sub_f32_e32 v131, v146, v162
	v_sub_f32_e32 v132, v148, v162
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v130, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v142, v162
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v136, v107, v162
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v143, v162
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v133, v133
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v152, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, v128, 0, s30
	v_cndmask_b32_e64 v128, 0, v129, s29
	v_cndmask_b32_e64 v129, v130, 0, s35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v107.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v131, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v129.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v140, v162
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, v132, 0, s36
	v_cndmask_b32_e64 v132, v133, 0, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v159.l, v128.h
	v_and_b32_e32 v137, 1, v160
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v32.l, v130.h
	v_cmp_o_f32_e64 s29, v107, v107
	v_and_b32_e32 v136, 1, v159
	v_cmp_o_f32_e64 s30, v128, v128
	v_mov_b16_e64 v155.l, v131.h
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s31, v129, v129
	v_add3_u32 v128, v128, v136, 0x7fff
	v_add3_u32 v129, v129, v137, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v134, 0, s33
	v_cndmask_b32_e64 v134, v135, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v34
	v_mov_b16_e64 v34.l, v132.h
	v_and_b32_e32 v138, 1, v155
	v_add3_u32 v32, v130, v32, 0x7fff
	v_cmp_o_f32_e64 s33, v130, v130
	v_add3_u32 v107, v107, v135, 0x7fff
	v_and_b32_e32 v135, 1, v34
	v_mov_b16_e64 v34.l, v133.h
	v_cndmask_b16 v107.l, 0x7fff, v128.h, s30
	v_cmp_o_f32_e64 s34, v132, v132
	v_cmp_o_f32_e64 s35, v131, v131
	v_add3_u32 v130, v131, v138, 0x7fff
	v_and_b32_e32 v128, 1, v34
	v_mov_b16_e64 v34.l, v134.h
	v_add3_u32 v131, v132, v135, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v129.h, s31
	v_cmp_o_f32_e64 s36, v133, v133
	v_cmp_o_f32_e64 s37, v134, v134
	v_and_b32_e32 v129, 1, v34
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s29
	v_cndmask_b16 v135.l, 0x7fff, v32.h, s33
	v_cndmask_b16 v32.h, 0x7fff, v131.h, s34
	v_add3_u32 v131, v133, v128, 0x7fff
	v_add3_u32 v132, v134, v129, 0x7fff
	v_cndmask_b16 v136.l, 0x7fff, v130.h, s35
	v_permlanex16_b32 v130, v107, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v133, v32, s71, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.h, 0x7fff, v131.h, s36
	v_cndmask_b16 v136.h, 0x7fff, v132.h, s37
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v128, v130, v107, v52
	v_perm_b32 v129, v130, v107, v53
	v_perm_b32 v130, v133, v32, v52
	v_permlanex16_b32 v107, v135, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v131, v133, v32, v53
	v_permlanex16_b32 v32, v136, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v132, v107, v135, v52
	v_perm_b32 v133, v107, v135, v53
	v_perm_b32 v134, v32, v136, v52
	v_perm_b32 v135, v32, v136, v53
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v32, 0, v152, s38
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v158 offset:1024
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v32
	v_mul_f32_e32 v25, v25, v32
	v_mul_f32_e32 v26, v26, v32
	v_mul_f32_e32 v27, v27, v32
	v_mul_f32_e32 v28, v28, v32
	v_mul_f32_e32 v29, v29, v32
	v_mul_f32_e32 v30, v30, v32
	v_mul_f32_e32 v31, v31, v32
	v_mul_f32_e32 v0, v0, v32
	v_mul_f32_e32 v1, v1, v32
	v_mul_f32_e32 v2, v2, v32
	v_mul_f32_e32 v3, v3, v32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[108:115], v[128:135], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[107:110], v78 offset:2048
	ds_load_b128 v[111:114], v79 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v32
	v_mul_f32_e32 v5, v5, v32
	v_mul_f32_e32 v6, v6, v32
	v_mul_f32_e32 v7, v7, v32
	v_mul_f32_e32 v17, v17, v32
	v_mul_f32_e32 v18, v18, v32
	v_mul_f32_e32 v19, v19, v32
	v_mul_f32_e32 v20, v20, v32
	v_mul_f32_e32 v21, v21, v32
	v_mul_f32_e32 v22, v22, v32
	v_mul_f32_e32 v23, v23, v32
	v_mul_f32_e32 v8, v8, v32
	v_mul_f32_e32 v9, v9, v32
	v_mul_f32_e32 v11, v11, v32
	v_mul_f32_e32 v12, v12, v32
	v_mul_f32_e32 v14, v14, v32
	v_mul_f32_e32 v15, v15, v32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[107:114], v[128:135], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v33, v148, s25
	v_cndmask_b32_e64 v110, v150, v146, s25
	v_cndmask_b32_e64 v111, v146, v150, s25
	v_cndmask_b32_e64 v107, v144, v141, s25
	v_cndmask_b32_e64 v108, v35, v145, s25
	ds_bpermute_b32 v114, v62, v114
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v32
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v110, v62, v110
	ds_bpermute_b32 v111, v64, v111
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, v145, v35, s25
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[116:123], v[128:135], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[120:123], v158 offset:2048
	ds_load_b128 v[115:118], v158 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.h, v34.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, v141, v144, s25
	v_cndmask_b32_e64 v112, v151, v140, s25
	v_cndmask_b32_e64 v113, v140, v151, s25
	ds_bpermute_b32 v108, v62, v108
	ds_bpermute_b32 v109, v64, v109
	ds_bpermute_b32 v107, v64, v107
	ds_bpermute_b32 v112, v62, v112
	ds_bpermute_b32 v113, v64, v113
	ds_bpermute_b32 v32, v62, v32
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v162
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e32 v146, v111, v110, vcc_lo
	v_cndmask_b32_e32 v110, v110, v111, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[120:127], v[128:135], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v161, v143, s25
	v_cndmask_b32_e64 v129, v143, v161, s25
	v_cndmask_b32_e64 v130, v36, v147, s25
	v_cndmask_b32_e64 v131, v147, v36, s25
	v_cndmask_b32_e64 v127, v148, v33, s25
	ds_bpermute_b32 v128, v62, v128
	ds_bpermute_b32 v129, v64, v129
	ds_bpermute_b32 v130, v62, v130
	ds_bpermute_b32 v131, v64, v131
	v_cndmask_b32_e64 v132, v149, v142, s25
	v_cndmask_b32_e64 v133, v142, v149, s25
	ds_bpermute_b32 v127, v64, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v141, v162
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e32 v135, v109, v108, vcc_lo
	ds_bpermute_b32 v132, v62, v132
	ds_bpermute_b32 v133, v64, v133
	v_cndmask_b32_e32 v109, v108, v109, vcc_lo
	s_waitcnt lgkmcnt(8)
	v_dual_cndmask_b32 v111, v113, v112 :: v_dual_cndmask_b32 v112, v112, v113
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v108, v107, v107
.Ltmp9:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v162
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v162
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v120.h, v34.h
	v_mov_b16_e32 v121.h, v34.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e32 v113, v129, v128, vcc_lo
	s_waitcnt lgkmcnt(3)
	v_dual_cndmask_b32 v147, v128, v129 :: v_dual_cndmask_b32 v148, v131, v130
	v_dual_cndmask_b32 v131, v130, v131 :: v_dual_max_f32 v128, v32, v32
	v_dual_cndmask_b32 v129, v107, v32 :: v_dual_sub_f32 v130, v149, v162
	s_waitcnt lgkmcnt(2)
	v_dual_cndmask_b32 v160, v127, v114 :: v_dual_cndmask_b32 v163, v114, v127
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v114, v127, v113
	v_max3_f32 v127, v110, v111, v112
	v_max_f32_e32 v108, v128, v108
	v_max3_f32 v128, v109, v148, v131
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v164, v133, v132 :: v_dual_cndmask_b32 v165, v132, v133
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v132, v133, v146
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v127, v114, v147
	v_max3_f32 v108, v108, v135, v128
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v32, v32, v107 :: v_dual_sub_f32 v107, v150, v162
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v134, s28
	v_cndmask_b32_e64 v36, v36, 0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v108, v132, v114
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v107, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v114, v130, 0, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v119.l, v127.h
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v130, v108
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v120.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, v35, 0, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v36, v36
	v_and_b32_e32 v119, 1, v119
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v107, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v127, v127
	v_add3_u32 v119, v127, v119, 0x7fff
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v127, v130, v130
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v120, 0x7fff
	v_mov_b16_e32 v121.l, v107.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, v33, 0, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v119.h, s13
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v108, v108, v127
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v35.h
	v_and_b32_e32 v121, 1, v121
	v_mov_b16_e32 v122.h, v34.h
	v_cmp_o_f32_e64 s20, v107, v107
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v39, v108
	v_max_f32_e32 v108, v38, v108
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v151, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.l, v33.h
	v_add3_u32 v107, v107, v121, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v119, v129, v108 :: v_dual_and_b32 v38, 1, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v109, v109, v108 :: v_dual_and_b32 v122, 1, v122
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v114.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v108
	v_sub_f32_e32 v120, v135, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.l, 0x7fff, v36.h, s19
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v106
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, v133, 0, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v35, v35
	v_cndmask_b16 v133.l, 0x7fff, v107.h, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v107, v106, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v38, 0x7fff
	v_and_b32_e32 v38, 1, v34
	v_mov_b16_e64 v34.l, v128.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v119
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v134, v107
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v35.h, s18
	v_cmp_o_f32_e64 s27, v114, v114
	v_and_b32_e32 v35, 1, v34
	v_add3_u32 v38, v114, v38, 0x7fff
	v_cmp_o_f32_e64 s28, v128, v128
	v_permlanex16_b32 v114, v36, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v128, v35, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v38.h, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v106, s24
	v_cndmask_b32_e64 v106, 0, v107, s22
	v_cndmask_b32_e64 v107, 0, v109, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v144, v114, v36, v52
	v_perm_b32 v145, v114, v36, v53
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v161, v162 :: v_dual_sub_f32 v111, v111, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.h, 0x7fff, v35.h, s28
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v38, v32
	v_add_f32_e32 v35, v106, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v38, v148, v108
	v_dual_sub_f32 v106, v131, v108 :: v_dual_mov_b32 v107, v162
	v_sub_f32_e32 v109, v164, v108
	v_sub_f32_e32 v114, v165, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v148, v106
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v146, v108
	v_sub_f32_e32 v110, v110, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, v36, 0, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v108
	v_dual_sub_f32 v135, v160, v108 :: v_dual_mov_b32 v106, v39
	v_sub_f32_e32 v146, v163, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s17
	v_cndmask_b32_e64 v39, 0, v148, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v147, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v146, v146
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s11
	v_cndmask_b32_e64 v114, 0, v114, s12
	v_cndmask_b32_e64 v131, 0, v131, s16
	v_cndmask_b32_e64 v110, 0, v110, s15
	v_cndmask_b32_e64 v111, 0, v111, s14
	v_cndmask_b32_e64 v112, 0, v112, s1
	v_cndmask_b32_e64 v135, 0, v135, s7
	v_cndmask_b32_e64 v146, 0, v146, s8
	v_cndmask_b32_e64 v113, 0, v113, s10
	v_cndmask_b32_e64 v147, 0, v147, s6
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v109, v114
	v_add_f32_e32 v109, v131, v110
	v_add_f32_e32 v110, v111, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v111, v135, v146 :: v_dual_add_f32 v112, v113, v147
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v34, v36, v34, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v32, v35
	v_dual_add_f32 v35, v38, v39 :: v_dual_add_f32 v36, v109, v110
	v_add_f32_e32 v38, v111, v112
.Ltmp33:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[123:126], v76
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v33, v33
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v32, v35
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v122, 0x7fff
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v36, v38
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[152:155], v76 offset:2048
	ds_load_b128 v[127:130], v77
	ds_load_b128 v[156:159], v77 offset:2048
	ds_load_b128 v[140:143], v80
	ds_load_b128 v[119:122], v80 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v39, v132, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v134, 0, v134, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s26
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v32, v35
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_permlanex16_b32 v34, v133, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v39, v132, v52
	v_perm_b32 v147, v39, v132, v53
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v32
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v33, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v148, v34, v133, v52
	v_perm_b32 v149, v34, v133, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v36, v33, v52
	v_perm_b32 v151, v36, v33, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v32, v35
.Ltmp45:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[123:130], v[144:151], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[136:143], v[144:151], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[152:159], v[144:151], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[115:122], v[144:151], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v109, v37, v134
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v55, v109
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v54
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s39, v56
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s39, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s39, v36
	v_cmp_gt_i32_e64 s1, s39, v35
	s_mov_b32 s50, 0x7ffffffe
	v_cmp_gt_i32_e64 s0, s39, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v55, null, v37, v37, v28
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v56, v47
	v_fma_f32 v54, -v40, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	v_fma_f32 v59, -v44, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v48, v57, v48
	v_rcp_f32_e32 v57, v55
	v_div_scale_f32 v46, s7, v27, v37, v27
	v_dual_mul_f32 v60, v41, v45 :: v_dual_fmac_f32 v51, v59, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v47, v56, 1.0
	v_div_scale_f32 v49, s8, v26, v37, v26
	v_fma_f32 v59, -v40, v60, v41
	v_div_scale_f32 v50, null, v37, v37, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v55, v57, 1.0
	v_dual_mul_f32 v62, v43, v48 :: v_dual_mul_f32 v65, v46, v51
	v_fmac_f32_e32 v56, v61, v56
	v_rcp_f32_e32 v58, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v64, v57
	v_fmac_f32_e32 v60, v59, v45
	v_fma_f32 v61, -v42, v62, v43
	v_mul_f32_e32 v59, v49, v56
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v54, s9, v29, v37, v29
	v_fma_f32 v40, -v40, v60, v41
	v_fmac_f32_e32 v62, v61, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v63, -v50, v58, 1.0
	v_fma_f32 v61, -v44, v65, v46
	v_fma_f32 v41, -v47, v59, v49
	v_div_fmas_f32 v40, v40, v45, v60
	v_fma_f32 v42, -v42, v62, v43
	v_div_scale_f32 v43, s10, v28, v37, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v40, v37, v25
	v_dual_fmac_f32 v58, v63, v58 :: v_dual_fmac_f32 v65, v61, v51
	v_mul_f32_e32 v45, v43, v57
	v_div_fmas_f32 v42, v42, v48, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v59, v41, v56 :: v_dual_mul_f32 v40, v54, v58
	v_fma_f32 v41, -v44, v65, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v42, v37, v24
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v47, v59, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v65
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v56, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v58
	v_fma_f32 v27, -v55, v45, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v54
	v_fmac_f32_e32 v45, v27, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v58, v40
	v_fma_f32 v42, -v55, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v57, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s7, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s8, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s8
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s7, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s7
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s7, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s7, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s8, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s7, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s7, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s7, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s7, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s7, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s8, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s25
	v_cndmask_b32_e64 v5, v25, v16, s25
	v_cndmask_b32_e64 v16, v0, v9, s25
	v_cndmask_b32_e64 v0, v9, v0, s25
	v_cndmask_b32_e64 v3, v24, v26, s25
	v_cndmask_b32_e64 v6, v19, v17, s25
	v_cndmask_b32_e64 v7, v17, v19, s25
	v_cndmask_b32_e64 v10, v8, v18, s25
	v_cndmask_b32_e64 v8, v18, v8, s25
	v_cndmask_b32_e64 v15, v14, v11, s25
	v_cndmask_b32_e64 v11, v11, v14, s25
	v_cndmask_b32_e64 v14, v12, v22, s25
	v_cndmask_b32_e64 v12, v22, v12, s25
	v_cndmask_b32_e64 v17, v2, v13, s25
	v_cndmask_b32_e64 v2, v13, v2, s25
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s25
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v52
	v_perm_b32 v13, v13, v16, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v52
	v_perm_b32 v1, v3, v1, v53
	v_perm_b32 v2, v5, v4, v52
	v_perm_b32 v3, v5, v4, v53
	v_perm_b32 v4, v7, v6, v52
	v_perm_b32 v5, v7, v6, v53
	v_perm_b32 v6, v8, v10, v52
	v_perm_b32 v7, v8, v10, v53
	v_perm_b32 v8, v9, v15, v52
	v_perm_b32 v9, v9, v15, v53
	v_perm_b32 v10, v11, v14, v52
	v_perm_b32 v11, v11, v14, v53
	v_perm_b32 v14, v18, v17, v52
	v_perm_b32 v15, v18, v17, v53
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 178
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 178
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13272
; TotalNumSgprs: 76
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 178
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
