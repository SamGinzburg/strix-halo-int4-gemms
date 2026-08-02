	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s13, s[0:1], 0x84
	s_load_b32 s10, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v18, 7, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s11, s3, 9
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 3, v18
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s18, s22, s11
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s22, v50
	s_mov_b32 s7, 0x31027000
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v61, 32, v0
	v_and_b32_e32 v63, 15, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v9, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v66, 1, v61
	v_lshlrev_b32_e32 v68, 1, v63
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s10, v50
	s_mul_i32 s2, s10, s18
	s_lshl_b32 s6, s10, 4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	v_and_b32_e32 v9, 0x70, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v1, v2, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s10, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s6, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v69, 0, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s22, s9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s22, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 32
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s12, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s23, s12, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v69, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v69, v[5:8] offset:2048
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s33, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s33
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_lshlrev_b32_e32 v19, 1, v61
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshlrev_b32_e32 v17, 1, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 19                          ; attention.py:0:19
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s19, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v49, 2, v63
	v_and_b32_e32 v62, 64, v0
	v_lshrrev_b32_e32 v64, 1, v61
	v_bfe_u32 v65, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_add_nc_u32 v67, 0, v49
	v_mov_b32_e32 v7, v8
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
	v_mov_b32_e32 v73, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v88, 0xff800000 :: v_dual_and_b32 v1, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_add_nc_u32_e32 v4, 0, v61
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v6, 0x70, v0
	v_bfe_i32 v13, v0, 0, 1
	v_lshlrev_b32_e32 v14, 7, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or3_b32 v3, s22, v63, v64
	v_lshl_add_u32 v4, v1, 2, v4
	v_lshrrev_b32_e32 v1, 1, v62
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v6, 2, v6
	v_and_b32_e32 v13, 0x90, v13
	v_lshlrev_b32_e32 v15, 5, v0
	v_bfe_i32 v0, v0, 2, 1
	v_add_nc_u32_e32 v16, 0, v1
	v_and_b32_e32 v1, 0x700, v14
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v7, s13, v3
	v_xor_b32_e32 v6, v13, v6
	v_and_b32_e32 v13, 0x160, v15
	v_and_b32_e32 v0, 0x90, v0
	v_lshlrev_b32_e32 v14, 4, v61
	v_add_nc_u32_e32 v15, 0, v1
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v1, s11, s23, v50
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[24:25], s[0:1], 0x28
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s1, s3, 5
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s3, s3, 8
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v71, s8, v7
	.loc	1 903 13                        ; attention.py:903:13
	s_lshr_b32 s8, s12, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v18
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl3_add_u32 s3, s8, s3
	v_or3_b32 v74, v0, v14, v13
	v_lshlrev_b32_e32 v0, 3, v63
	v_mul_lo_u32 v13, s10, v1
	v_or_b32_e32 v1, s3, v8
	s_add_i32 s1, s8, s1
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc_lo, s19, v49
	.loc	1 903 13                        ; attention.py:903:13
	s_mul_i32 s1, s19, s1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v75, s1, 1, v0
	v_mad_u64_u32 v[0:1], null, s19, v1, v[49:50]
	v_mov_b32_e32 v49, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v70, v63, 7, v2
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v72, s9, v7
	v_xor_b32_e32 v8, 16, v74
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v76, v13, 1, v2
	v_add_nc_u32_e32 v84, v4, v68
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v5, v61, 6, v70
	v_xor_b32_e32 v12, 0x70, v70
	v_add_nc_u32_e32 v86, v15, v6
	v_add_nc_u32_e32 v87, 0, v8
	v_mov_b32_e32 v13, v49
	v_xad_u32 v3, 0x70, v5, 0
	v_xad_u32 v9, 0x60, v5, 0
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[17:20], v9
	v_xad_u32 v3, 0x50, v5, 0
	v_xad_u32 v7, v5, 64, 0
	v_xad_u32 v9, v5, 48, 0
	v_xad_u32 v10, v5, 32, 0
	v_xad_u32 v11, v5, 16, 0
	v_add_nc_u32_e32 v5, 0, v5
	v_add_nc_u32_e32 v83, 0, v12
	v_mov_b32_e32 v12, v49
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[25:28], v7
	ds_load_b128 v[37:40], v9
	ds_load_b128 v[33:36], v10
	ds_load_b128 v[45:48], v11
	ds_load_b128 v[41:44], v5
	v_xor_b32_e32 v3, 16, v70
	v_xor_b32_e32 v5, 32, v70
	v_xor_b32_e32 v7, 48, v70
	v_xor_b32_e32 v9, 64, v70
	v_xor_b32_e32 v10, 0x50, v70
	v_xor_b32_e32 v11, 0x60, v70
	v_dual_mov_b32 v8, v49 :: v_dual_add_nc_u32 v77, 0, v3
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v78, 0, v5
	v_add_nc_u32_e32 v79, 0, v7
	v_add_nc_u32_e32 v80, 0, v9
	v_add_nc_u32_e32 v81, 0, v10
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v82, 0, v11
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v85, v16, v68
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s34, s14, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s35, s19, 1
	s_lshl_b32 s40, s19, 3
	s_lshl_b32 s41, s10, 5
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s36, s6
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v50, 0x80000000, v76, s2
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v52, v49 :: v_dual_cndmask_b32 v91, 0x80000000, v0
	v_dual_mov_b32 v53, v49 :: v_dual_cndmask_b32 v92, 0x80000000, v75
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[57:60], v50, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v75, s35, v75
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v89, 0, v70
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v90, s23, v65
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v93, v67, v66
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v94, v67, v62
	v_dual_mov_b32 v102, v56 :: v_dual_mov_b32 v99, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v101, v55 :: v_dual_add_nc_u32 v0, s40, v0
	v_dual_mov_b32 v100, v54 :: v_dual_mov_b32 v97, v51
	v_dual_mov_b32 v98, v52 :: v_dual_mov_b32 v95, v49
	v_dual_mov_b32 v96, v50 :: v_dual_add_nc_u32 v51, 4, v90
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v50, 2, v90
	v_add_nc_u32_e32 v52, 6, v90
	v_add_nc_u32_e32 v53, 8, v90
	v_add_nc_u32_e32 v54, 10, v90
	v_add_nc_u32_e32 v55, 12, v90
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v56, 14, v90
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s4, v50, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v50, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s6, v51, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v51, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v52, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s9, v52, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v53, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s11, v53, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v54, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v54, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v55, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s15, v55, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v56, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v56, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v90, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v90, v72
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v103.l, 0
	v_dual_mov_b32 v105, v73 :: v_dual_add_nc_u32 v104, 0, v74
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v76, s41, v76
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s43, s1, s3
	s_and_b32 s1, s4, s5
	s_and_b32 s3, s6, s7
	s_and_b32 s4, s8, s9
	s_and_b32 s5, s10, s11
	s_and_b32 s6, s12, s13
	s_and_b32 s7, s14, s15
	s_and_b32 s8, s16, s17
	s_and_b32 s1, s0, s1
	s_and_b32 s3, s0, s3
	s_and_b32 s4, s0, s4
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s43
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v88
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.h, v103.l
	v_mov_b16_e32 v73.h, v103.l
	v_mov_b16_e32 v90.h, v103.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v108.l, v103.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v103.l
	v_mov_b16_e32 v110.h, v103.l
	v_mov_b16_e32 v112.h, v103.l
	v_mov_b16_e32 v106.h, v103.l
	v_mov_b16_e32 v111.h, v103.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s23, s33
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v69, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v91, v91, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[59:60], v92, s[24:27], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v89
	ds_load_b128 v[54:57], v77
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[50:57], v[41:48], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v78
	ds_load_b128 v[54:57], v79
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[50:57], v[33:40], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v80
	ds_load_b128 v[54:57], v81
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[50:57], v[25:32], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v82
	ds_load_b128 v[54:57], v83
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[95:102], v[50:57], v[17:24], v[95:102]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v50, s34, v95 :: v_dual_mul_f32 v51, s34, v96
	v_dual_mul_f32 v52, s34, v97 :: v_dual_mul_f32 v53, s34, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, s34, v99 :: v_dual_mul_f32 v55, s34, v100
	v_dual_mul_f32 v56, s34, v101 :: v_dual_mul_f32 v57, s34, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s9
	v_cndmask_b32_e64 v51, 0xff800000, v51, s1
	v_cndmask_b32_e64 v52, 0xff800000, v52, s3
	v_cndmask_b32_e64 v53, 0xff800000, v53, s4
	v_cndmask_b32_e64 v54, 0xff800000, v54, s5
	v_cndmask_b32_e64 v55, 0xff800000, v55, s6
	v_cndmask_b32_e64 v56, 0xff800000, v56, s7
	v_cndmask_b32_e64 v57, 0xff800000, v57, s8
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v58, v50, v51, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v89, v53, v54, v55
	v_max_f32_e32 v92, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v58, v58, v89, v92
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v89, v58, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v113, v88, v58, v89
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v50, v50, v113
	v_sub_f32_e32 v51, v51, v113
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v58, v88, v113
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v53, v53, v113
	v_sub_f32_e32 v54, v54, v113
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v58, v58
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v54, v54
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v50, s9
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v55, v55, v113
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v114, 0, v58, s10
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v53, 0, v53, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v54, 0, v54, s5
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v50, v51
.Ltmp5:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v55, v55
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v93, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v88, v94
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v58, v50, 16, 1
	v_bfe_u32 v93, v53, 16, 1
	v_bfe_u32 v94, v54, 16, 1
	v_cmp_o_f32_e64 s1, v50, v50
	v_cmp_o_f32_e64 s5, v53, v53
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v55, 0, v55, s6
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v57, v57, v113
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v54, v54
	v_add3_u32 v50, v50, v58, 0x7fff
	v_bfe_u32 v89, v51, 16, 1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v54, v55
.Ltmp7:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v54, v54, v94, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s1
	v_bfe_u32 v95, v55, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v88
	v_mul_f32_e32 v14, v14, v88
	v_mul_f32_e32 v16, v16, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v88
	v_mul_f32_e32 v2, v2, v88
	v_mul_f32_e32 v3, v3, v88
	v_mul_f32_e32 v4, v4, v88
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v97, v57, 16, 1
	v_cmp_o_f32_e64 s9, v57, v57
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v88
	v_mul_f32_e32 v6, v6, v88
	v_mul_f32_e32 v7, v7, v88
	v_mul_f32_e32 v8, v8, v88
	v_mul_f32_e32 v10, v10, v88
	v_mul_f32_e32 v11, v11, v88
	v_mul_f32_e32 v13, v13, v88
	v_mul_f32_e32 v15, v15, v88
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v73.l, v91.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v103.h, v59.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v52, v52, v113
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v108.h, v60.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v52, v52
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v52, s3
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v51, v51
	v_add3_u32 v51, v51, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v99, v52, v53
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v53, v53, v93, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v93, 0xffff0000, v59
	v_and_b32_e32 v94, 0xffff0000, v60
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v56, v56, v113
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v92, v52, 16, 1
	v_cmp_o_f32_e64 s4, v52, v52
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s3
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v59.l, v91.h, 15
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v56, v56
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v52, v52, v92, 0x7fff
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v92, v98, v99
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s5
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s4
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v56, 0, v56, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v55, v55
	v_add3_u32 v55, v55, v95, 0x7fff
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v95, 24, v91
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v89, v56, v57
.Ltmp13:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v96, v56, 16, 1
	v_cmp_o_f32_e64 s8, v56, v56
	v_add3_u32 v57, v57, v97, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s7
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v58, v89
.Ltmp15:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v89, v91, 0, 8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v56, v56, v96, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v57.h, s9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v115, v92, v58
.Ltmp17:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v58.l, v91.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v58.h, 4, v91.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v92, 8, v91
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v60.l, v89.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v91, 20, v91
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v58.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v58.h, v58.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v89, v92, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v60.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v53.l, 0x7fff, v56.h, s8
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v59.h, 0, -16, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v59.l
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v60.l, v89.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v89, v95, 0, 8
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16 v84, v50
	ds_store_b16_d16_hi v84, v50 offset:128
	ds_store_b16 v84, v51 offset:256
	ds_store_b16_d16_hi v84, v51 offset:384
	ds_store_b16 v84, v52 offset:512
	ds_store_b16_d16_hi v84, v52 offset:640
	ds_store_b16 v84, v53 offset:768
	ds_store_b16_d16_hi v84, v53 offset:896
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v90.l, v58.l, v59.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v58.l, v58.h, -16
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v59.h, v91.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v50, v85
	ds_load_u16_d16 v51, v85 offset:128
	ds_load_u16_d16 v52, v85 offset:256
	ds_load_u16_d16 v53, v85 offset:384
	ds_load_u16_d16 v54, v85 offset:512
	ds_load_u16_d16 v55, v85 offset:640
	ds_load_u16_d16 v56, v85 offset:768
	ds_load_u16_d16 v57, v85 offset:896
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v96.l, v58.h, v58.l, s3
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v58.l, 4, v92.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v58.h, v92.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v92, v73, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v60.l
	v_mov_b16_e32 v73.l, v89.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v58.l, v58.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v96, v96, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v60.l, v92.l
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v85 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v85 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v85 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v85 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v85 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v85 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v85 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v85 offset:960
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v60.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v60.l, 0, -16, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v58.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v60.h, v58.l, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v73.l
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v91.l, v59.l, v60.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v59.l, v95.l, 15
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v73.l, v58.l, v60.h, s3
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v58.l, 0, -16, s1
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v60.l, 4, v95.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v95, v90, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v59.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v89.l, v58.h, v58.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v58.l, v59.h, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	s_barrier
.Ltmp18:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v116, v115, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v89, v89, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v92.l, v59.h, v58.l, s4
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v58.l, 0, -16, s1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v95, v103, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v89, v89
	v_bfe_i32 v92, v92, 0, 16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v59.l, v59.l, v58.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v58.l, v60.l, -16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v95, v95
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v89, v93, v89
	v_cvt_f32_i32_e32 v92, v92
	v_bfe_i32 v59, v59, 0, 16
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v58.l, v60.l, v58.l, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v60, v91, 0, 16
	v_bfe_i32 v91, v73, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v73.l, v95.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v59, v59
	v_bfe_i32 v58, v58, 0, 16
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v91, v91
	v_dual_mul_f32 v96, v103, v96 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v58
	v_dual_mul_f32 v60, v108, v60 :: v_dual_mul_f32 v59, v94, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v93, v91
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v90.l, v96.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v92, v108, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v60.h
	v_mov_b16_e32 v112.l, v59.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v58, v94, v58
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v106.l, v91.h
	v_mov_b16_e32 v107.l, v89.h
	v_and_b32_e32 v90, 1, v90
	v_and_b32_e32 v93, 1, v109
	v_mov_b16_e32 v110.l, v92.h
	v_and_b32_e32 v97, 1, v112
	v_mov_b16_e32 v111.l, v58.h
	v_add3_u32 v73, v95, v73, 0x7fff
	v_and_b32_e32 v94, 1, v106
	v_and_b32_e32 v95, 1, v107
	v_cmp_o_f32_e64 s3, v96, v96
	v_cmp_o_f32_e64 s4, v60, v60
	v_add3_u32 v90, v96, v90, 0x7fff
	v_add3_u32 v60, v60, v93, 0x7fff
	v_and_b32_e32 v93, 1, v110
	v_and_b32_e32 v96, 1, v111
	v_cmp_o_f32_e64 s5, v91, v91
	v_cmp_o_f32_e64 s6, v89, v89
	v_add3_u32 v91, v91, v94, 0x7fff
	v_add3_u32 v89, v89, v95, 0x7fff
	v_cmp_o_f32_e64 s7, v92, v92
	v_cmp_o_f32_e64 s8, v58, v58
	v_cmp_o_f32_e64 s9, v59, v59
	v_cndmask_b16 v90.l, 0x7fff, v73.h, s1
	v_add3_u32 v73, v92, v93, 0x7fff
	v_add3_u32 v58, v58, v96, 0x7fff
	v_add3_u32 v59, v59, v97, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v90.h, s3
	v_cndmask_b16 v91.h, 0x7fff, v91.h, s5
	v_cndmask_b16 v91.l, 0x7fff, v89.h, s6
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s4
	v_cndmask_b16 v60.h, 0x7fff, v73.h, s7
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s8
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s9
	ds_store_2addr_b32 v86, v90, v91 offset1:8
	ds_store_2addr_b32 v86, v60, v58 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[89:92], v104
	ds_load_b128 v[97:100], v104 offset:1024
	ds_load_b128 v[93:96], v87
	ds_load_b128 v[101:104], v87 offset:1024
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v115, v116
.Ltmp21:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v88
	v_mov_b32_e32 v88, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v73, v105, v114
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[50:57], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[50:57], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v19, v66
	v_mov_b32_e32 v17, v68
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_add_nc_u32_e32 v0, v67, v19
	v_add_nc_u32_e32 v18, v67, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v20, v65, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	ds_store_b32 v0, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v18, v18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 2, v62
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, v0, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v21, 32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v17, 0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, s22, v19
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v0, null, v18, v18, v9
	v_div_scale_f32 v23, null, v18, v18, v10
	v_div_scale_f32 v25, null, v18, v18, v11
	v_div_scale_f32 v26, null, v18, v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v27, v0
	v_rcp_f32_e32 v28, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v29, v25
	v_rcp_f32_e32 v31, v26
	v_div_scale_f32 v22, vcc_lo, v9, v18, v9
	v_div_scale_f32 v24, s1, v10, v18, v10
	v_div_scale_f32 v30, s2, v11, v18, v11
	v_fma_f32 v34, -v0, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v35, -v23, v28, 1.0
	v_fma_f32 v36, -v25, v29, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v26, v31, 1.0
	v_div_scale_f32 v33, null, v18, v18, v13
	v_dual_fmac_f32 v27, v34, v27 :: v_dual_fmac_f32 v28, v35, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v38, v31
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v39, null, v18, v18, v14
	v_dual_mul_f32 v35, v22, v27 :: v_dual_mul_f32 v36, v24, v28
	v_rcp_f32_e32 v34, v33
	v_div_scale_f32 v32, s3, v12, v18, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v0, v35, v22
	v_fma_f32 v42, -v23, v36, v24
	v_mul_f32_e32 v38, v30, v29
	v_div_scale_f32 v37, s4, v13, v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v35, v41, v27 :: v_dual_fmac_f32 v36, v42, v28
	v_fma_f32 v44, -v33, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v25, v38, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshrrev_b32_e32 v41, 6, v62
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v0, v35, v22
	v_fma_f32 v22, -v23, v36, v24
	v_rcp_f32_e32 v24, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v27, v35
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v22, v22, v28, v36
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v9, v0, v18, v9
	v_div_scale_f32 v28, null, v18, v18, v16
	v_fma_f32 v0, -v39, v24, 1.0
	v_div_fixup_f32 v10, v22, v18, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v0, v24
	v_fmac_f32_e32 v34, v44, v34
	v_mul_f32_e32 v40, v32, v31
	v_div_scale_f32 v0, s1, v14, v18, v14
	v_mul_f32_e32 v27, v37, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v26, v40, v32
	v_fmac_f32_e32 v38, v43, v29
	v_fmac_f32_e32 v40, v45, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v25, v38, v30
	v_div_scale_f32 v25, null, v18, v18, v15
	v_fma_f32 v26, -v26, v40, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v29, v38
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v29, v28
	v_rcp_f32_e32 v22, v25
	v_div_fixup_f32 v11, v23, v18, v11
	v_div_fmas_f32 v23, v26, v31, v40
	v_fma_f32 v26, -v33, v27, v37
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v38, s4, v7, v18, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v12, v23, v18, v12
	v_mul_f32_e32 v23, v0, v24
	v_fma_f32 v32, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v39, v23, v0
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, s3, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v31, v24
	v_fmac_f32_e32 v27, v26, v34
	v_fma_f32 v26, -v25, v22, 1.0
	v_div_scale_f32 v31, null, v18, v18, v1
	v_fma_f32 v0, -v39, v23, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v33, v27, v37
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, s2, v15, v18, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v27, v30, v34, v27
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v31
	v_div_fmas_f32 v0, v0, v24, v23
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v27, v18, v13
	v_mul_f32_e32 v27, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v0, v18, v14
	v_fma_f32 v24, -v28, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v30, v26, v22 :: v_dual_fmac_f32 v27, v24, v29
	v_fma_f32 v33, -v25, v30, v26
	v_div_scale_f32 v24, null, v18, v18, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v28, v27, v32
	v_fmac_f32_e32 v30, v33, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v25, v30, v26
	v_fma_f32 v25, -v31, v34, 1.0
	v_div_scale_f32 v26, null, v18, v18, v2
	v_div_fmas_f32 v22, v23, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v25, v34
	v_rcp_f32_e32 v23, v26
	v_div_scale_f32 v25, s1, v1, v18, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v22, v18, v15
	v_rcp_f32_e32 v22, v24
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v28, v25, v34
	v_div_fmas_f32 v0, v0, v29, v27
	v_div_scale_f32 v29, s2, v2, v18, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v26, v23, 1.0
	v_fma_f32 v27, -v31, v28, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v0, v18, v16
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v23, v30, v23
	v_fma_f32 v30, -v24, v22, 1.0
	v_fmac_f32_e32 v28, v27, v34
	v_div_scale_f32 v27, null, v18, v18, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v30, v22
	v_div_scale_f32 v30, s3, v3, v18, v3
	v_mul_f32_e32 v32, v29, v23
	v_rcp_f32_e32 v33, v27
	v_fma_f32 v0, -v31, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v30, v22
	v_fma_f32 v25, -v26, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v34, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, null, v18, v18, v5
	v_fmac_f32_e32 v32, v25, v23
	v_fma_f32 v25, -v24, v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v27, v33, 1.0
	v_div_fixup_f32 v1, v0, v18, v1
	v_fma_f32 v0, -v26, v32, v29
	v_div_scale_f32 v26, s1, v4, v18, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v28, v33
	v_fmac_f32_e32 v31, v25, v22
	v_div_fmas_f32 v0, v0, v23, v32
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v25, v34
	v_div_scale_f32 v28, null, v18, v18, v6
	v_fma_f32 v23, -v24, v31, v30
	v_mul_f32_e32 v24, v26, v33
	v_div_fixup_f32 v2, v0, v18, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	v_div_fmas_f32 v22, v23, v22, v31
	v_div_scale_f32 v31, null, v18, v18, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v34, v25, 1.0
	v_fma_f32 v23, -v27, v24, v26
	v_div_fixup_f32 v3, v22, v18, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v31
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s2, v5, v18, v5
	v_fma_f32 v32, -v28, v30, 1.0
	v_mul_f32_e32 v22, v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v31, v35, 1.0
	v_dual_fmac_f32 v35, v0, v35 :: v_dual_fmac_f32 v24, v23, v33
	v_div_scale_f32 v23, s3, v6, v18, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v27, v24, v26
	v_fma_f32 v27, -v34, v22, v29
	v_dual_fmac_f32 v22, v27, v25 :: v_dual_mul_f32 v27, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v31, v27, v38
	v_fmac_f32_e32 v27, v40, v35
	v_div_fmas_f32 v24, v26, v33, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v33, 5, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, null, v18, v18, v8
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v36, v23, v30 :: v_dual_add_nc_u32 v33, v17, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v17, v17, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v37, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, 1, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v24, v18, v4
	v_fma_f32 v26, -v28, v36, v23
	v_fma_f32 v24, -v34, v22, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v26, v30
	v_div_fmas_f32 v22, v24, v25, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v0, -v32, v37, 1.0
	v_fma_f32 v24, -v31, v27, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v28, v36, v23
	v_div_fixup_f32 v5, v22, v18, v5
	v_fmac_f32_e32 v37, v0, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_mov_b16_e32 v0.l, v39.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s1, v8, v18, v8
	v_div_fmas_f32 v23, v23, v30, v36
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	ds_store_b8 v33, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v0, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v17, v39, v37
	v_div_fmas_f32 v24, v24, v35, v27
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v32, v17, v39
	v_fmac_f32_e32 v17, v26, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v32, v17, v39
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v17, v25, v37, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v23, v18, v6
	v_div_fixup_f32 v6, v24, v18, v7
	v_div_fixup_f32 v7, v17, v18, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v15, 0, v15
	v_dual_cndmask_b32 v9, 0, v10 :: v_dual_cndmask_b32 v10, 0, v11
	v_cndmask_b32_e32 v11, 0, v12, vcc_lo
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v12, s18, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v13, 0, v13 :: v_dual_cndmask_b32 v14, 0, v14
	v_dual_cndmask_b32 v16, 0, v16 :: v_dual_cndmask_b32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v12, s19, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
	v_dual_cndmask_b32 v4, 0, v4 :: v_dual_cndmask_b32 v5, 0, v5
	v_dual_cndmask_b32 v0, 0, v0 :: v_dual_cndmask_b32 v7, 0, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v17, v12, v20, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v22, 40, v17
	v_add_nc_u32_e32 v20, 32, v17
	buffer_store_b32 v8, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 16, v17
	v_dual_cndmask_b32 v18, 0x80000000, v19 :: v_dual_add_nc_u32 v19, 24, v17
	buffer_store_b32 v9, v18, s[20:23], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	v_dual_cndmask_b32 v19, 0x80000000, v22 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v10, v8, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 48, v17
	s_clause 0x2
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	buffer_store_b32 v13, v18, s[20:23], 0 offen
	buffer_store_b32 v14, v19, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 56, v17
	v_add_lshl_u32 v10, v12, v21, 2
	v_add_nc_u32_e32 v11, 0x88, v17
	v_add_nc_u32_e32 v12, 0x90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[20:23], 0 offen
	buffer_store_b32 v16, v9, s[20:23], 0 offen
	buffer_store_b32 v1, v10, s[20:23], 0 offen
	buffer_store_b32 v2, v11, s[20:23], 0 offen
	buffer_store_b32 v3, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0x98, v17
	v_add_nc_u32_e32 v2, 0xa0, v17
	v_add_nc_u32_e32 v3, 0xa8, v17
	v_add_nc_u32_e32 v8, 0xb0, v17
	v_add_nc_u32_e32 v9, 0xb8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v0, v3, s[20:23], 0 offen
	buffer_store_b32 v6, v8, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 117
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5824
; TotalNumSgprs: 46
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x7d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x57 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
