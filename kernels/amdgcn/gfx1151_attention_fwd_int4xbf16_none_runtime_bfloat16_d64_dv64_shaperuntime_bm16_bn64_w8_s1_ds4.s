	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s26, s[0:1], 0x68
	s_mov_b32 s25, s3
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s40, s[0:1], 0x60
.Ltmp0:
	.loc	1 1038 13 prologue_end          ; attention.py:1038:13
	v_lshrrev_b32_e32 v64, 5, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v49, 31, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v67, 15, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s23, s15
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v65, 1, v0
                                        ; implicit-def: $vgpr185 : SGPR spill to VGPR lane
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s18, s25, s66
	s_cselect_b32 s99, -1, 0
	s_cmp_eq_u32 s3, 1
	s_cselect_b32 s3, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s26
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s16, s4
	s_sub_i32 s4, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s16
	s_mul_hi_u32 s4, s16, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s16, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s7
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s14, s25
	s_cvt_f32_u32 s12, s5
	s_sub_i32 s13, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s4, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s13, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s12, s13
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s13, s4, s26
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s12, s14, s12
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s24, s2, s13
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s4, s12, s5
	s_sub_i32 s2, s14, s4
	s_add_i32 s4, s12, 1
	s_sub_i32 s13, s2, s5
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s13, s2
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s12, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s12, s2
	s_sub_i32 s17, 0, s2
	v_rcp_iflag_f32_e32 v1, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s12, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v64
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s14, s12, 0x4f7ffffe
	s_load_b64 s[12:13], s[0:1], 0x0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s14
	s_mul_hi_u32 s17, s14, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s17
	s_xor_b32 s17, s64, s65
	s_mul_hi_u32 s14, s5, s14
	s_ashr_i32 s17, s17, 31
	s_mul_i32 s19, s14, s2
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s14, 1
	s_sub_i32 s20, s5, s2
	s_cmp_ge_u32 s5, s2
	s_cselect_b32 s5, s20, s5
	s_load_b64 s[20:21], s[0:1], 0x18
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[51:52], null, s40, v64, v[49:50]
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s14, s19, s14
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s41, s40, v49
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s19, s14, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s19, s19, s14
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s18, s6
	v_lshl_add_u32 v68, s40, 3, v51
	s_mul_i32 s14, s5, s40
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v51
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v2, s14, v68
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v6, s5, v67, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s22, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v3, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	v_bfe_i32 v1, v0, 7, 1
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s21, s21, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s14, s67, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s15, s14, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_and_b32_e32 v1, 0x88, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s15, s15, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s14, s14, s15
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, v1, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v67
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s15, s14, 6
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_not1_b32 s14, s14, 63
	.loc	1 798 33 is_stmt 1              ; attention.py:798:33
	s_add_i32 s15, s15, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 0x110, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v69, 0, v4
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s15, s15, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v70, 0, v5
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	v_writelane_b32 v185, s2, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s19, s17
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v70, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v4, s[20:23], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 24, v65
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s13, s2, s17
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s17, s15
	s_xor_b32 s15, s15, s26
	s_mul_hi_u32 s16, s17, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v3, v67, 5, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s18, s16, s7
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s12, s13
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s17, s17, s18
	s_ashr_i32 s15, s15, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_add_nc_u32_e32 v71, 0, v3
	v_xor_b32_e32 v3, 24, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_add_i32 s18, s16, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v72, 0, v4
	v_add_nc_u32_e32 v73, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s19, s17, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v3
	ds_load_b64 v[52:53], v71
	ds_load_b64 v[54:55], v72
	ds_load_b64 v[56:57], v73
	ds_load_b64 v[58:59], v74
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s17, s7
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s12
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s17, s7
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s18, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s15
	s_sub_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s24, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s7, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v3
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s43, s14, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s6
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s55, s55, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s43, s43, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s42, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v75, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s3, s3, 26
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s43, s43, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v50, 63, v0
	v_and_b32_e32 v66, 0xc0, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s43
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s42, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s3, s25, s64
	s_mul_f32 s6, s7, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v185, s16, 1
	s_xor_b32 s4, s4, s3
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s3, s4, s3
	s_sub_i32 s4, 0, s12
	s_mul_i32 s7, s3, s64
	s_mul_i32 s4, s4, s6
	s_sub_i32 s7, s25, s7
	s_mul_hi_u32 s4, s6, s4
	v_writelane_b32 v185, s17, 2
	s_abs_i32 s8, s7
	s_add_i32 s6, s6, s4
	s_ashr_i32 s4, s13, 31
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s13, s6, s12
	s_load_b32 s14, s[0:1], 0x6c
	v_writelane_b32 v185, s18, 3
	s_xor_b32 s4, s7, s4
	s_sub_i32 s7, s8, s13
	s_add_i32 s8, s6, 1
	s_sub_i32 s13, s7, s12
	s_cmp_ge_u32 s7, s12
	v_writelane_b32 v185, s19, 4
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s7, s12
	v_writelane_b32 v185, s26, 5
	s_cselect_b32 s6, s8, s6
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x8
	s_load_b64 s[20:21], s[0:1], 0x20
	s_xor_b32 s0, s6, s4
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s3, s3, s65
	v_writelane_b32 v185, s24, 6
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s4
	v_mov_b16_e32 v4.l, 0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s0, s0, s3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v2.l
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s48, s0, s67
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s14, 0x3fb8aa3b
	v_writelane_b32 v185, s25, 7
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v81, s11, v1
	s_mov_b32 s19, 0x31027000
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v82, s0, v4
	s_mul_i32 s0, s42, 34
	s_mov_b32 s18, 0x7ffffffe
	v_writelane_b32 v185, s0, 8
	s_mul_i32 s0, s42, 35
	s_mov_b32 s22, s18
	s_mov_b32 s16, s46
	s_and_b32 s17, s47, 0xffff
	v_writelane_b32 v185, s0, 9
	s_mul_i32 s0, s42, 48
	s_mov_b32 s46, s18
	s_mov_b32 s47, s19
	v_dual_mov_b32 v2, 0x5410 :: v_dual_and_b32 v1, 16, v0
	v_writelane_b32 v185, s0, 10
	s_mul_i32 s0, s42, 49
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v1, 0x7632 :: v_dual_add_nc_u32 v84, s10, v81
	v_writelane_b32 v185, s0, 11
	s_mul_i32 s0, s42, 50
	v_or_b32_e32 v80, 62, v3
	v_dual_cndmask_b32 v2, 0x1054, v2 :: v_dual_and_b32 v3, 7, v0
	v_writelane_b32 v185, s0, 12
	s_mul_i32 s0, s42, 51
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x3276, v1 :: v_dual_lshlrev_b32 v4, 4, v3
	v_writelane_b32 v185, s0, 13
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v88, v82 :: v_dual_and_b32 v5, 0x60, v0
	v_bfe_i32 v6, v0, 3, 1
	v_lshl_or_b32 v2, v2, 8, v2
	v_writelane_b32 v185, s16, 14
	s_mov_b32 s23, s19
	v_lshl_or_b32 v1, v1, 8, v1
	v_dual_mov_b32 v90, v82 :: v_dual_and_b32 v7, 0x70, v65
	v_writelane_b32 v185, s17, 15
	v_lshrrev_b32_e32 v8, 3, v66
	v_lshl_or_b32 v9, v5, 6, v4
	v_and_or_b32 v5, 0x410, v6, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v76, 24, v64
	v_writelane_b32 v185, s18, 16
	v_or_b32_e32 v77, 56, v64
	s_mov_b32 s8, 0
	v_lshrrev_b32_e32 v78, 4, v66
	v_subrev_nc_u32_e32 v83, s9, v81
	v_writelane_b32 v185, s19, 17
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v89, v82 :: v_dual_and_b32 v2, 0x540054, v2
	v_xor3_b32 v4, v7, v8, v4
	v_xor_b32_e32 v5, v5, v9
	v_writelane_b32 v185, s20, 18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	v_writelane_b32 v185, s21, 19
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v16, s15 :: v_dual_and_b32 v1, 0x760076, v1
	v_writelane_b32 v185, s22, 20
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[60:61], null, s40, v76, v[49:50]
	v_mad_u64_u32 v[61:62], null, s40, v77, v[49:50]
	v_mad_u64_u32 v[62:63], null, s42, v78, v[50:51]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v63, v50, 7, v4
	v_lshl_or_b32 v86, v3, 7, v5
	v_writelane_b32 v185, s23, 21
	v_dual_mov_b32 v14, s13 :: v_dual_and_b32 v85, 0x5040504, v2
	v_dual_mov_b32 v12, s11 :: v_dual_and_b32 v87, 0x7060706, v1
	v_xor_b32_e32 v2, 32, v63
	v_xor_b32_e32 v3, 64, v63
	v_xor_b32_e32 v4, 0x60, v63
	v_xor_b32_e32 v5, 16, v86
	v_xor_b32_e32 v6, 32, v86
	v_xor_b32_e32 v7, 48, v86
	v_xor_b32_e32 v8, 64, v86
	v_xor_b32_e32 v17, 0x50, v86
	v_xor_b32_e32 v18, 0x60, v86
	v_xor_b32_e32 v19, 0x70, v86
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_mov_b32 v1, 0
	v_writelane_b32 v185, s2, 22
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v79, v0, 4, 1
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v10, s9
	v_dual_mov_b32 v13, s12 :: v_dual_add_nc_u32 v92, 0, v3
	v_dual_mov_b32 v11, s10 :: v_dual_add_nc_u32 v94, 0, v5
	v_dual_mov_b32 v9, s8 :: v_dual_add_nc_u32 v96, 0, v7
	v_add_nc_u32_e32 v91, 0, v2
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v93, 0, v4
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v95, 0, v6
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v97, 0, v8
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v98, 0, v17
	v_add_nc_u32_e32 v99, 0, v18
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v100, 0, v19
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v101, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v185, s40, 23
	s_lshl_b32 s49, s40, 4
	s_lshl_b32 s50, s40, 5
	s_mul_i32 s77, s40, 40
	s_mul_i32 vcc_hi, s40, 48
	s_and_b32 s45, s45, 0xffff
	s_lshl_b32 s53, s42, 1
	s_mul_i32 s54, s42, 3
	s_lshl_b32 s56, s42, 4
	s_mul_i32 s57, s42, 17
	s_mul_i32 s58, s42, 18
	s_mul_i32 s59, s42, 19
	s_lshl_b32 s60, s42, 5
	s_mul_i32 s61, s42, 33
	v_writelane_b32 v185, s99, 24
                                        ; implicit-def: $vgpr184 : SGPR spill to VGPR lane
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v104.h, v159.l
	v_mov_b16_e64 v119.h, v158.l
	v_mov_b16_e32 v104.l, v103.l
	v_mov_b16_e32 v119.l, v103.l
	v_mov_b16_e32 v122.l, v103.l
	v_mov_b16_e64 v122.h, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v43, v89, v43 :: v_dual_mul_f32 v44, v90, v44
	v_dual_mul_f32 v42, v88, v42 :: v_dual_mul_f32 v41, v82, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v123.l, v103.l
	s_waitcnt vmcnt(24)
	v_mov_b16_e64 v123.h, v157.l
	v_mov_b16_e32 v127.l, v103.l
	v_mov_b16_e64 v127.h, v153.l
	v_mov_b16_e64 v131.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v131.h, v146.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v90, v48
	v_dual_mul_f32 v46, v88, v46 :: v_dual_mul_f32 v45, v82, v45
	v_dual_mul_f32 v21, v90, v21 :: v_dual_mul_f32 v20, v89, v20
	v_dual_mul_f32 v19, v88, v19 :: v_dual_mul_f32 v18, v82, v18
	v_dual_mul_f32 v25, v90, v25 :: v_dual_mul_f32 v24, v89, v24
	v_dual_mul_f32 v23, v88, v23 :: v_dual_mul_f32 v22, v82, v22
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v37, v88, v37
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v120.l, v103.l
	v_mov_b16_e32 v120.h, v116.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v116.h, v118.l
	v_mov_b16_e32 v118.l, v103.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v118.h, v117.l
	v_mov_b16_e32 v117.l, v103.l
	v_mov_b16_e32 v117.h, v112.l
	v_mov_b16_e32 v112.l, v103.l
	v_mov_b16_e32 v112.h, v110.l
	v_mov_b16_e32 v110.l, v103.l
	v_mov_b16_e32 v110.h, v109.l
	v_mov_b16_e32 v109.l, v103.l
	v_mov_b16_e32 v109.h, v108.l
	v_mov_b16_e32 v108.l, v103.l
	v_mov_b16_e32 v108.h, v107.l
	v_mov_b16_e32 v107.l, v103.l
	v_mov_b16_e32 v107.h, v105.l
	v_mov_b16_e32 v105.l, v103.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v105.h, v114.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v115.h, v113.l
	v_mov_b16_e32 v113.l, v103.l
	v_mov_b16_e32 v113.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v17, v17
	v_mul_f32_e32 v26, v88, v26
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v103.h, v160.l
	v_mov_b16_e32 v125.l, v103.l
	v_mov_b16_e64 v125.h, v154.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v89, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v132.l, v103.l
	v_mov_b16_e64 v132.h, v138.l
	v_mov_b16_e64 v133.l, v103.l
	v_mov_b16_e64 v133.h, v136.l
	v_mov_b16_e64 v135.l, v103.l
	v_mov_b16_e64 v135.h, v134.l
	v_mov_b16_e64 v134.l, v103.l
	v_mov_b16_e64 v134.h, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v90, v30 :: v_dual_mul_f32 v29, v89, v29
	v_dual_mul_f32 v28, v88, v28 :: v_dual_mul_f32 v27, v82, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v129.l, v103.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.l, v103.l
	v_mov_b16_e64 v130.h, v128.l
	v_mov_b16_e64 v128.l, v103.l
	v_mov_b16_e64 v128.h, v126.l
	v_mov_b16_e32 v126.l, v103.l
	v_mov_b16_e32 v126.h, v124.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v90, v34 :: v_dual_mul_f32 v33, v89, v33
	v_dual_mul_f32 v32, v88, v32 :: v_dual_mul_f32 v31, v82, v31
	v_dual_mul_f32 v38, v89, v38 :: v_dual_mul_f32 v39, v90, v39
	v_mul_f32_e32 v36, v82, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.l, v103.l
	v_mov_b16_e32 v124.h, v121.l
	v_mov_b16_e32 v121.l, v103.l
	v_mov_b16_e32 v116.l, v103.l
	v_mov_b16_e32 v114.l, v103.l
	v_mov_b16_e32 v114.h, v115.l
	v_mov_b16_e32 v115.l, v103.l
	v_mov_b16_e32 v111.l, v103.l
	v_mov_b16_e32 v111.h, v106.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v90, v40 :: v_dual_mul_f32 v35, v89, v35
	v_mul_f32_e32 v17, v82, v17
	v_dual_mul_f32 v41, v41, v122 :: v_dual_mul_f32 v42, v42, v119
	v_dual_mul_f32 v44, v44, v104 :: v_dual_mul_f32 v43, v43, v103
	v_dual_mul_f32 v45, v45, v131 :: v_dual_mul_f32 v18, v18, v105
	v_dual_mul_f32 v46, v46, v127 :: v_dual_mul_f32 v47, v47, v125
	v_dual_mul_f32 v48, v48, v123 :: v_dual_mul_f32 v21, v21, v109
	v_dual_mul_f32 v19, v19, v107 :: v_dual_mul_f32 v20, v20, v108
	v_dual_mul_f32 v22, v22, v110 :: v_dual_mul_f32 v23, v23, v112
	v_dual_mul_f32 v24, v24, v117 :: v_dual_mul_f32 v25, v25, v118
	v_dual_mul_f32 v37, v37, v120 :: v_dual_mul_f32 v26, v26, v113
	v_dual_mul_f32 v27, v27, v134 :: v_dual_mul_f32 v28, v28, v135
	v_dual_mul_f32 v29, v29, v133 :: v_dual_mul_f32 v30, v30, v132
	v_dual_mul_f32 v31, v31, v126 :: v_dual_mul_f32 v32, v32, v128
	v_dual_mul_f32 v33, v33, v130 :: v_dual_mul_f32 v34, v34, v129
	v_dual_mul_f32 v36, v36, v116 :: v_dual_mul_f32 v39, v39, v121
	v_dual_mul_f32 v38, v38, v124 :: v_dual_mul_f32 v17, v17, v111
	v_dual_mul_f32 v35, v35, v115 :: v_dual_mul_f32 v40, v40, v114
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s96
	v_cndmask_b32_e64 v42, 0xff800000, v42, s38
	v_cndmask_b32_e64 v41, 0xff800000, v41, s83
	v_cndmask_b32_e64 v46, 0xff800000, v46, s74
	v_cndmask_b32_e64 v45, 0xff800000, v45, s95
	v_cndmask_b32_e64 v104, 0xff800000, v26, s78
	v_cndmask_b32_e64 v21, 0xff800000, v21, s79
	v_cndmask_b32_e64 v20, 0xff800000, v20, s89
	v_cndmask_b32_e64 v19, 0xff800000, v19, s5
	v_cndmask_b32_e64 v18, 0xff800000, v18, s94
	v_cndmask_b32_e64 v105, 0xff800000, v25, s86
	v_cndmask_b32_e64 v24, 0xff800000, v24, s70
	v_cndmask_b32_e64 v23, 0xff800000, v23, s92
	v_cndmask_b32_e64 v22, 0xff800000, v22, s66
	v_cndmask_b32_e64 v43, 0xff800000, v43, s97
	v_cndmask_b32_e64 v48, 0xff800000, v48, s93
	v_cndmask_b32_e64 v47, 0xff800000, v47, s85
	v_cndmask_b32_e64 v40, 0xff800000, v40, s52
	v_cndmask_b32_e64 v35, 0xff800000, v35, s68
	v_cndmask_b32_e64 v17, 0xff800000, v17, s51
	v_cndmask_b32_e64 v30, 0xff800000, v30, s84
	v_cndmask_b32_e64 v29, 0xff800000, v29, s98
	v_cndmask_b32_e64 v28, 0xff800000, v28, s75
	v_cndmask_b32_e64 v27, 0xff800000, v27, s104
	v_cndmask_b32_e64 v34, 0xff800000, v34, s69
	v_cndmask_b32_e64 v33, 0xff800000, v33, s73
	v_cndmask_b32_e64 v32, 0xff800000, v32, s81
	v_cndmask_b32_e64 v31, 0xff800000, v31, s87
	v_cndmask_b32_e64 v39, 0xff800000, v39, s63
	v_cndmask_b32_e64 v37, 0xff800000, v37, s65
	v_cndmask_b32_e64 v36, 0xff800000, v36, s4
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v41, v42
	v_max3_f32 v26, v44, v45, v46
	v_max3_f32 v107, v18, v19, v20
	v_max3_f32 v108, v21, v22, v23
	v_max3_f32 v109, v24, v105, v104
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s64
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v106, v47, v48, v17
	v_max3_f32 v110, v27, v28, v29
	v_max3_f32 v111, v30, v31, v32
	v_max3_f32 v112, v33, v34, v35
	v_dual_max_f32 v113, v36, v37 :: v_dual_max_f32 v114, v39, v40
	v_max3_f32 v25, v25, v43, v26
	v_max3_f32 v26, v107, v108, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v107, v110, v111, v112
	s_mov_b32 s3, 0x76543210
	v_readlane_b32 s0, v185, 25
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v25, v25, v106, v26
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v106, s55, v78
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v113, v38, v114
	v_readlane_b32 s20, v185, 14
	v_readlane_b32 s21, v185, 15
	v_readlane_b32 s22, v185, 16
	v_readlane_b32 s23, v185, 17
	v_max3_f32 v25, v25, v107, v108
.Ltmp8:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v26, v25, s3, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v25, v102, v25, v26
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v107, 1, v106
	v_add_nc_u32_e32 v120, 50, v106
	v_add_nc_u32_e32 v121, 51, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v17, v17, v25 :: v_dual_add_nc_u32 v116, 34, v106
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v26, v102, v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v21, v25
	v_sub_f32_e32 v22, v22, v25
	v_dual_sub_f32 v41, v41, v25 :: v_dual_add_nc_u32 v108, 2, v106
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v21
	v_exp_f32_e32 v136, v22
	v_mad_u64_u32 v[21:22], null, s0, s42, v[62:63]
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v18, v18, v25 :: v_dual_add_nc_u32 v117, 35, v106
	v_dual_sub_f32 v42, v42, v25 :: v_dual_add_nc_u32 v109, 3, v106
	v_dual_sub_f32 v19, v19, v25 :: v_dual_add_nc_u32 v118, 48, v106
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_dual_cndmask_b32 v26, 0, v26 :: v_dual_sub_f32 v105, v105, v25
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v106
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v17
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s0, s67, v107
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v26 :: v_dual_lshlrev_b32 v17, 1, v21
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v43, v43, v25 :: v_dual_add_nc_u32 v110, 16, v106
	v_dual_sub_f32 v20, v20, v25 :: v_dual_add_nc_u32 v119, 49, v106
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v132, v18
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v18, v21, s42, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v25 :: v_dual_add_nc_u32 v111, 17, v106
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v19
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v109
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v19, v21, s53, 1
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_mul_f32 v4, v4, v26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v45, v45, v25 :: v_dual_add_nc_u32 v112, 18, v106
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v20
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v20, v21, s54, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v123, v27, v25 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v46, v46, v25 :: v_dual_add_nc_u32 v113, 19, v106
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v111
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v22, v21, s56, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v102, v23, v25 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v47, v47, v25 :: v_dual_add_nc_u32 v114, 32, v106
	v_dual_sub_f32 v125, v29, v25 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v112
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v23, v21, s57, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v127, v31, v25 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v113
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v122, v24, v25 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v24, v21, s58, 1
	v_add_lshl_u32 v27, v21, s59, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v114
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_readlane_b32 s0, v185, 8
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v129, v33, v25 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v104, v104, v25 :: v_dual_cndmask_b32 v29, 0x80000000, v27
	v_sub_f32_e32 v126, v30, v25
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v31, v21, s60, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v28, v25
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	buffer_load_u16 v28, v18, s[20:23], 0 offen
	buffer_load_u16 v18, v19, s[20:23], 0 offen
	buffer_load_u16 v30, v20, s[20:23], 0 offen
	buffer_load_u16 v19, v22, s[20:23], 0 offen
	buffer_load_u16 v27, v23, s[20:23], 0 offen
	buffer_load_u16 v20, v24, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	v_add_lshl_u32 v24, v21, s0, 1
	v_readlane_b32 s0, v185, 9
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v25 :: v_dual_add_nc_u32 v115, 33, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v23, 0x80000000, v31, vcc_lo
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v31, v21, s0, 1
	v_readlane_b32 s0, v185, 10
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v115
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v22, v21, s61, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v32, v25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v32, v21, s0, 1
	v_readlane_b32 s0, v185, 11
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v117
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v118
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v35, v35, v25 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, v21, s0, 1
	v_readlane_b32 s0, v185, 12
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v37, v37, v25 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v119
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v39, v25 :: v_dual_cndmask_b32 v106, 0x80000000, v32
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v32, v21, s0, 1
	v_readlane_b32 s0, v185, 13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s38
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v120
	v_cmp_gt_i32_e64 s18, s67, v121
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v21, v21, s0, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.l, v42.h
	v_mov_b16_e32 v115.h, v103.l
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_mul_f32 v6, v6, v26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v130, v34, v25 :: v_dual_mul_f32 v1, v1, v26
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v107, 0x80000000, v32, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v108, 0x80000000, v21 :: v_dual_and_b32 v115, 1, v115
	s_clause 0x7
	buffer_load_u16 v21, v23, s[20:23], 0 offen
	buffer_load_u16 v32, v22, s[20:23], 0 offen
	buffer_load_u16 v22, v24, s[20:23], 0 offen
	buffer_load_u16 v34, v31, s[20:23], 0 offen
	buffer_load_u16 v23, v106, s[20:23], 0 offen
	buffer_load_u16 v31, v33, s[20:23], 0 offen
	buffer_load_u16 v24, v107, s[20:23], 0 offen
	buffer_load_u16 v33, v108, s[20:23], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.h, v103.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v115, v42, v115, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s83
	v_cndmask_b32_e64 v43, 0, v43, s97
	v_cndmask_b32_e64 v44, 0, v44, s96
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, v103.l
	v_mov_b16_e32 v117.h, v103.l
	v_mov_b16_e32 v116.l, v41.h
	v_mov_b16_e32 v118.l, v43.h
	v_mov_b16_e32 v117.l, v44.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v116, 1, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s95
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v117, 1, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s74
	v_cndmask_b32_e64 v48, 0, v48, s93
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v116, v41, v116, 0x7fff
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v115.h, vcc_lo
	v_and_b32_e32 v115, 1, v118
	v_add3_u32 v117, v44, v117, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v116.h, s0
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v43, v44
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v115, v43, v115, 0x7fff
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v103.l
	v_cmp_o_f32_e64 s0, v43, v43
	v_mov_b16_e32 v43.l, v46.h
	v_mov_b16_e32 v43.h, v103.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s85
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v116
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v116.h, 0x7fff, v117.h, vcc_lo
	v_cndmask_b16 v116.l, 0x7fff, v115.h, s0
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v45, v46
	v_add_f32_e32 v117, v47, v48
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v44, v45, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cmp_o_f32_e64 s0, v45, v45
	v_mov_b16_e32 v45.l, v48.h
	v_add3_u32 v43, v46, v43, 0x7fff
	v_mov_b16_e32 v46.l, v47.h
	v_mov_b16_e32 v46.h, v103.l
	v_mov_b16_e32 v45.h, v103.l
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v135, s79
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v47, v47
	v_and_b32_e32 v44, 1, v46
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v115, v117
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v131, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v132, s94
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v47, v44, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_mov_b16_e32 v118.l, v117.h
	v_add3_u32 v45, v48, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_mov_b16_e32 v48.l, v115.h
	v_mov_b16_e32 v48.h, v103.l
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v134, s89
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.h, v103.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v46
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v46, 1, v118
	v_and_b32_e32 v47, 1, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v133, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v44.h
	v_cmp_o_f32_e64 s0, v117, v117
	v_add3_u32 v46, v117, v46, 0x7fff
	v_add3_u32 v47, v115, v47, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v106, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_mov_b16_e32 v119.l, v48.h
	v_mov_b16_e32 v119.h, v103.l
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v115, v117, v115 :: v_dual_and_b32 v118, 1, v118
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v136, s66
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_and_b32_e32 v117, 1, v119
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v119, v48, v44
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v118, v44, v118, 0x7fff
	v_mov_b16_e32 v121.l, v46.h
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_mov_b16_e32 v44.l, v120.h
	v_mov_b16_e32 v44.h, v103.l
	v_add3_u32 v117, v48, v117, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_and_b32_e32 v48, 1, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s70
	v_cndmask_b32_e64 v102, 0, v102, s92
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v118.h, 0x7fff, v118.h, vcc_lo
	v_cndmask_b16 v118.l, 0x7fff, v117.h, s0
	v_add3_u32 v48, v46, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v120, v46
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v120, v120
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v102, v106
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v120, v44, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v108, v124
	v_exp_f32_e32 v107, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v44.h, s0
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v46, v117
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v106.h
	v_mov_b16_e32 v46.h, v103.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v125
	v_exp_f32_e32 v110, v126
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s86
	v_cndmask_b32_e64 v104, 0, v104, s78
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v115, v115, v119 :: v_dual_and_b32 v46, 1, v46
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, v102.h
	v_mov_b16_e32 v119.h, v103.l
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v46, v106, v46, 0x7fff
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v115, v44
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_and_b32_e32 v117, 1, v119
	v_mov_b16_e32 v119.l, v105.h
	v_cmp_o_f32_e64 s0, v102, v102
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v44
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v115, v102, v117, 0x7fff
	v_mov_b16_e32 v117.l, v104.h
	v_mov_b16_e32 v117.h, v103.l
	v_and_b32_e32 v102, 1, v119
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_cndmask_b16 v44.l, 0x7fff, v115.h, s0
	v_cmp_o_f32_e64 s0, v105, v105
	v_and_b32_e32 v106, 1, v117
	v_add3_u32 v46, v105, v102, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v127
	v_exp_f32_e32 v112, v128
	v_exp_f32_e32 v114, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v104, v106, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v108, s75
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v105, v104
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v107, s104
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v115.l, 0x7fff, v46.h, s0
	v_mov_b16_e32 v46.h, v103.l
	v_mov_b16_e32 v46.l, v106.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v110, s84
	v_cndmask_b32_e64 v108, 0, v109, s98
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v115.h, 0x7fff, v102.h, vcc_lo
	v_mov_b16_e32 v102.l, v105.h
	v_mov_b16_e32 v102.h, v103.l
	v_and_b32_e32 v46, 1, v46
	v_mov_b16_e32 v110.l, v107.h
	v_mov_b16_e32 v117.l, v108.h
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v105, v106
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, v103.l
	v_and_b32_e32 v102, 1, v102
	v_add3_u32 v46, v106, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_and_b32_e32 v106, 1, v117
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v104, v104, v109 :: v_dual_and_b32 v109, 1, v110
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v105, v102, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_add3_u32 v105, v108, v106, 0x7fff
	v_add3_u32 v106, v107, v109, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_cmp_o_f32_e64 s1, v108, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v112, s81
	v_cndmask_b32_e64 v110, 0, v111, s87
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v36, v36, v25 :: v_dual_mul_f32 v3, v3, v26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v129
	v_exp_f32_e32 v35, v35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v46.l, 0x7fff, v102.h, vcc_lo
	v_cndmask_b16 v117.h, 0x7fff, v106.h, s0
	v_cndmask_b16 v117.l, 0x7fff, v105.h, s1
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v110, v109
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v106.l, v109.h
	v_mov_b16_e32 v106.h, v103.l
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v108, v107
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v110.h
	v_mov_b16_e32 v107.h, v103.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v114, s69
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v102, v102, v105 :: v_dual_and_b32 v105, 1, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v106, 1, v107
	v_mov_b16_e32 v107.l, v108.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v113, s73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v109, v109
	v_add3_u32 v105, v109, v105, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v38, v38, v25 :: v_dual_and_b32 v107, 1, v107
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v26 :: v_dual_sub_f32 v40, v40, v25
	v_mul_f32_e32 v7, v7, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.l, v111.h
	v_mov_b16_e32 v112.h, v103.l
	v_cndmask_b16 v134.h, 0x7fff, v105.h, vcc_lo
	v_add3_u32 v105, v108, v107, 0x7fff
	v_cmp_o_f32_e64 s0, v108, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v35.h
	v_mov_b16_e32 v107.h, v103.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v102, v104, v102 :: v_dual_and_b32 v107, 1, v107
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v112
	v_add3_u32 v106, v110, v106, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cndmask_b16 v135.h, 0x7fff, v105.h, s0
	v_mov_b16_e32 v105.l, v36.h
	v_mov_b16_e32 v105.h, v103.l
	v_add3_u32 v104, v111, v104, 0x7fff
	v_cmp_o_f32_e64 s1, v111, v111
	v_cndmask_b16 v134.l, 0x7fff, v106.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v106, v111, v108 :: v_dual_and_b32 v105, 1, v105
.Ltmp54:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s64
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.l, 0x7fff, v104.h, s1
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v35, v36
.Ltmp56:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s65
	v_cndmask_b32_e64 v40, 0, v40, s52
	v_cndmask_b32_e64 v39, 0, v39, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v105, v36, v105, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v107, v35, v107, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v39, v40
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.l, v39.h
	v_cndmask_b16 v136.h, 0x7fff, v105.h, vcc_lo
	v_mov_b16_e32 v105.h, v103.l
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v106, v104
	v_add_f32_e32 v106, v37, v38
.Ltmp60:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v103.l
	v_cndmask_b16 v136.l, 0x7fff, v107.h, s0
	v_cmp_o_f32_e64 s0, v37, v37
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s6, v39, v39
	v_permlanex16_b32 v107, v48, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v109, v44, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v111, v115, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v113, v46, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v17.h, v28.l
	v_add_nc_u32_e32 v28, 0, v63
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v18.h, v30.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v139, v117, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v19.h, v27.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v140, v134, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v20.h, v29.l
	ds_store_b64 v28, v[17:18]
	ds_store_b64 v91, v[19:20]
	v_add_nc_u32_e32 v17, 0, v86
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v106, v108
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v106.l, v37.h
	v_mov_b16_e32 v106.h, v103.l
	v_perm_b32 v108, v109, v44, v85
	v_perm_b32 v109, v109, v44, v87
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v104, v35
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v141, v135, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v104, 1, v106
	v_perm_b32 v106, v107, v48, v85
	v_perm_b32 v107, v107, v48, v87
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v102, v35
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v102.l, v40.h
	v_mov_b16_e32 v102.h, v103.l
	v_add3_u32 v103, v37, v104, 0x7fff
	v_permlanex16_b32 v142, v136, s3, 0xfedcba98 op_sel:[1,0]
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v41, v35
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v105
	v_and_b32_e32 v102, 1, v102
	v_permlanex16_b32 v105, v118, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.l, 0x7fff, v103.h, s0
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v35, s3, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v103, v47, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v110, v111, v115, v85
	v_perm_b32 v104, v105, v118, v85
	v_perm_b32 v105, v105, v118, v87
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v37 :: v_dual_and_b32 v36, 1, v36
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v42, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v111, v115, v87
	v_perm_b32 v112, v113, v46, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v35, v101, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v38, v36, 0x7fff
	v_add3_u32 v38, v39, v41, 0x7fff
	v_add3_u32 v41, v40, v102, 0x7fff
	v_permlanex16_b32 v39, v116, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v102, v45, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.h, 0x7fff, v36.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v21.h, v32.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.h, 0x7fff, v41.h, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v22.h, v34.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v43, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v23.h, v31.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.l, 0x7fff, v38.h, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v24.h, v33.l
	ds_store_b64 v92, v[21:22]
	ds_store_b64 v93, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v17
	ds_load_b128 v[21:24], v94
	ds_load_b128 v[27:30], v95
	ds_load_b128 v[31:34], v96
	ds_load_b128 v[118:121], v97
	ds_load_b128 v[122:125], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v36, v37, v42, v85
	v_perm_b32 v37, v37, v42, v87
	v_perm_b32 v38, v39, v116, v85
	v_perm_b32 v39, v39, v116, v87
	v_perm_b32 v40, v41, v43, v85
	v_perm_b32 v41, v41, v43, v87
	v_perm_b32 v42, v102, v45, v85
	v_perm_b32 v43, v102, v45, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v99
	ds_load_b128 v[130:133], v100
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v102, v103, v47, v85
	v_perm_b32 v103, v103, v47, v87
	v_permlanex16_b32 v143, v137, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v144, v138, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v113, v113, v46, v87
	v_perm_b32 v114, v139, v117, v85
	v_perm_b32 v115, v139, v117, v87
	v_perm_b32 v116, v140, v134, v85
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[36:43], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v117, v140, v134, v87
	v_perm_b32 v17, v141, v135, v85
	v_perm_b32 v18, v141, v135, v87
	v_perm_b32 v19, v142, v136, v85
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[27:34], v[102:109], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v20, v142, v136, v87
	v_perm_b32 v21, v143, v137, v85
	v_perm_b32 v22, v143, v137, v87
	v_perm_b32 v23, v144, v138, v85
	v_perm_b32 v24, v144, v138, v87
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[118:125], v[110:117], v[1:8]
	v_dual_mov_b32 v101, v35 :: v_dual_mov_b32 v102, v25
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s55, s43
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[17:24], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, s55, v64
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s3, s55, s48
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v18, s55, v76
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s0, s3, s40
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v25, s55, v77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v26, s0, v68
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v22, s0, v51
	v_add_nc_u32_e32 v28, s0, v60
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v20, 16, v17
	v_add_nc_u32_e32 v32, s0, v61
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s0, s67, v19
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v21, 32, v17
	v_add_nc_u32_e32 v27, s49, v22
	v_add_nc_u32_e32 v24, 48, v17
	v_add_nc_u32_e32 v30, s77, v22
	v_add_nc_u32_e32 v23, 40, v17
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v17, 0x80000000, v22, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v20
	v_cmp_gt_i32_e64 s6, s67, v18
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s0
	v_add_nc_u32_e32 v29, s50, v22
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v26, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v23
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v19, 0x80000000, v27, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s6
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s67, v24
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v20, 0x80000000, v28, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s67, v21
	v_add_nc_u32_e32 v31, vcc_hi, v22
	v_cmp_gt_i32_e64 s10, s67, v25
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v132, s3, v79, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, s55, v79
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s7
	v_writelane_b32 v185, s3, 25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v21, 0x80000000, v29, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s8
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v136, 12, v132
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v22, 0x80000000, v30, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s9
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v137, 16, v132
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v23, 0x80000000, v31, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s10
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v133, 4, v132
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v24, 0x80000000, v32, vcc_lo
	s_clause 0x7
	buffer_load_u8 v17, v17, s[44:47], 0 offen
	buffer_load_u8 v19, v19, s[44:47], 0 offen
	buffer_load_u8 v21, v21, s[44:47], 0 offen
	buffer_load_u8 v23, v23, s[44:47], 0 offen
	buffer_load_u8 v18, v18, s[44:47], 0 offen
	buffer_load_u8 v20, v20, s[44:47], 0 offen
	buffer_load_u8 v22, v22, s[44:47], 0 offen
	buffer_load_u8 v24, v24, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v135, 8, v132
	v_add_nc_u32_e32 v139, 20, v132
	v_add_nc_u32_e32 v140, 24, v132
	v_add_nc_u32_e32 v141, 28, v132
	v_add_nc_u32_e32 v142, 40, v132
	v_add_nc_u32_e32 v143, 44, v132
	v_add_nc_u32_e32 v144, 48, v132
	v_add_nc_u32_e32 v145, 52, v132
	v_add_nc_u32_e32 v146, 56, v132
	v_add_nc_u32_e32 v148, 60, v132
	v_add_nc_u32_e32 v149, 0x48, v132
	v_add_nc_u32_e32 v150, 0x4c, v132
	v_add_nc_u32_e32 v152, 0x50, v132
	v_add_nc_u32_e32 v153, 0x54, v132
	v_add_nc_u32_e32 v154, 0x58, v132
	v_add_nc_u32_e32 v155, 0x5c, v132
	v_add_nc_u32_e32 v138, 0x60, v132
	v_add_nc_u32_e32 v134, 0x64, v132
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v151, 30, v103
	v_add_nc_u32_e32 v161, 54, v103
	v_add_nc_u32_e32 v163, 32, v103
	v_add_nc_u32_e32 v147, 28, v103
	v_add_nc_u32_e32 v156, 60, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s67, v151
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v165, 18, v103
	v_add_nc_u32_e32 v166, 16, v103
	v_add_nc_u32_e32 v164, 34, v103
	v_add_nc_u32_e32 v162, 52, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v168, 0x80000000, v148, s17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v148, 50, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s67, v161
	v_cmp_gt_i32_e64 s30, s67, v163
	v_readlane_b32 s36, v185, 18
	v_cmp_gt_i32_e64 s16, s67, v147
	v_cmp_gt_i32_e64 s25, s67, v148
	v_cmp_gt_i32_e64 s28, s67, v156
	v_cmp_gt_i32_e64 s31, s67, v165
	v_cmp_gt_i32_e64 s34, s67, v166
	v_cmp_gt_i32_e64 s33, s67, v164
	v_cmp_gt_i32_e64 s35, s67, v162
	v_readlane_b32 s37, v185, 19
	v_readlane_b32 s38, v185, 20
	v_readlane_b32 s39, v185, 21
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v146, s16
	v_cndmask_b32_e64 v176, 0x80000000, v134, s25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v69, v17
	s_waitcnt vmcnt(6)
	ds_store_b8 v69, v19 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v69, v21 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v69, v23 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v70, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v70, v20 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v70, v22 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v70, v24 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[23:26], v71 offset1:1
	ds_load_2addr_stride64_b64 v[104:107], v71 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[108:111], v72 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v72 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[116:119], v73 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v73 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[124:127], v74 offset1:1
	ds_load_2addr_stride64_b64 v[128:131], v74 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[54:55], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[54:55], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[56:57], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[56:57], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[54:55], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v107, 32, v132
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[56:57], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[58:59], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v125, 8, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v110, 36, v132
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[58:59], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v113, 64, v132
	v_add_nc_u32_e32 v108, 0x44, v132
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v125
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[58:59], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v106, 0x68, v132
	v_add_nc_u32_e32 v118, 0x6c, v132
	v_add_nc_u32_e32 v129, 0x70, v132
	v_add_nc_u32_e32 v126, 0x74, v132
	v_add_nc_u32_e32 v121, 0x78, v132
	v_cndmask_b32_e32 v105, 0x80000000, v132, vcc_lo
	v_cndmask_b32_e64 v114, 0x80000000, v137, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v132, 20, v103
	v_add_nc_u32_e32 v137, 22, v103
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[56:57], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v104, s55, v80
	v_add_nc_u32_e32 v119, 2, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s67, v132
	v_cmp_gt_i32_e64 s13, s67, v137
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[130:131], v[58:59], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v123, 6, v103
	v_add_nc_u32_e32 v131, 12, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v124, 0x80000000, v142, s12
	v_cndmask_b32_e64 v128, 0x80000000, v143, s13
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v142, 26, v103
	v_add_nc_u32_e32 v143, 36, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v109, s3, v80, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s0, s67, v104
	v_cmp_gt_i32_e64 s1, s67, v119
	v_cmp_gt_i32_e64 s7, s67, v123
	v_cmp_gt_i32_e64 s10, s67, v131
	v_cmp_gt_i32_e64 s15, s67, v142
	v_cmp_gt_i32_e64 s18, s67, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v115, 0x80000000, v109, s0
	v_cndmask_b32_e64 v109, 0x80000000, v133, s1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v122, 4, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v112, 0x80000000, v136, s7
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v127, 10, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v117, 0x80000000, v140, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v133, 14, v103
	v_add_nc_u32_e32 v140, 24, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v136, 0x80000000, v145, s15
	v_cndmask_b32_e64 v169, 0x80000000, v149, s18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v145, 38, v103
	v_add_nc_u32_e32 v149, 40, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s67, v122
	v_cmp_gt_i32_e64 s9, s67, v127
	v_cmp_gt_i32_e64 s11, s67, v133
	v_cmp_gt_i32_e64 s14, s67, v140
	v_cmp_gt_i32_e64 s19, s67, v145
	v_cmp_gt_i32_e64 s20, s67, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v111, 0x80000000, v135, s6
	v_cndmask_b32_e64 v116, 0x80000000, v139, s9
	v_cndmask_b32_e64 v120, 0x80000000, v141, s11
	v_cndmask_b32_e64 v130, 0x80000000, v144, s14
	v_cndmask_b32_e64 v170, 0x80000000, v150, s19
	v_cndmask_b32_e64 v171, 0x80000000, v152, s20
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v135, 42, v103
	v_add_nc_u32_e32 v139, 44, v103
	v_add_nc_u32_e32 v141, 46, v103
	v_add_nc_u32_e32 v144, 48, v103
	v_add_nc_u32_e32 v150, 56, v103
	v_add_nc_u32_e32 v152, 58, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v135
	v_cmp_gt_i32_e64 s22, s67, v139
	v_cmp_gt_i32_e64 s23, s67, v141
	v_cmp_gt_i32_e64 s24, s67, v144
	v_cmp_gt_i32_e64 s26, s67, v150
	v_cmp_gt_i32_e64 s27, s67, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v118, 0x80000000, v118, s29
	v_cndmask_b32_e64 v113, 0x80000000, v113, s30
	v_cndmask_b32_e64 v172, 0x80000000, v153, s21
	v_cndmask_b32_e64 v173, 0x80000000, v154, s22
	v_cndmask_b32_e64 v174, 0x80000000, v155, s23
	v_cndmask_b32_e64 v175, 0x80000000, v138, s24
	v_cndmask_b32_e64 v177, 0x80000000, v129, s26
	v_cndmask_b32_e64 v178, 0x80000000, v126, s27
	v_cndmask_b32_e64 v179, 0x80000000, v121, s28
	v_cndmask_b32_e64 v180, 0x80000000, v110, s31
	v_cndmask_b32_e64 v181, 0x80000000, v107, s34
	v_cndmask_b32_e64 v182, 0x80000000, v108, s33
	v_cndmask_b32_e64 v183, 0x80000000, v106, s35
	s_clause 0x1f
	buffer_load_u16 v155, v105, s[36:39], 0 offen
	buffer_load_u16 v158, v109, s[36:39], 0 offen
	buffer_load_u16 v160, v111, s[36:39], 0 offen
	buffer_load_u16 v159, v112, s[36:39], 0 offen
	buffer_load_u16 v146, v114, s[36:39], 0 offen
	buffer_load_u16 v153, v116, s[36:39], 0 offen
	buffer_load_u16 v154, v117, s[36:39], 0 offen
	buffer_load_u16 v157, v120, s[36:39], 0 offen
	buffer_load_u16 v105, v124, s[36:39], 0 offen
	buffer_load_u16 v107, v128, s[36:39], 0 offen
	buffer_load_u16 v108, v130, s[36:39], 0 offen
	buffer_load_u16 v109, v136, s[36:39], 0 offen
	buffer_load_u16 v110, v167, s[36:39], 0 offen
	buffer_load_u16 v112, v168, s[36:39], 0 offen
	buffer_load_u16 v129, v169, s[36:39], 0 offen
	buffer_load_u16 v134, v170, s[36:39], 0 offen
	buffer_load_u16 v136, v171, s[36:39], 0 offen
	buffer_load_u16 v138, v172, s[36:39], 0 offen
	buffer_load_u16 v124, v173, s[36:39], 0 offen
	buffer_load_u16 v126, v174, s[36:39], 0 offen
	buffer_load_u16 v128, v175, s[36:39], 0 offen
	buffer_load_u16 v130, v176, s[36:39], 0 offen
	buffer_load_u16 v116, v177, s[36:39], 0 offen
	buffer_load_u16 v121, v178, s[36:39], 0 offen
	buffer_load_u16 v120, v179, s[36:39], 0 offen
	buffer_load_u16 v118, v118, s[36:39], 0 offen
	buffer_load_u16 v117, v113, s[36:39], 0 offen
	buffer_load_u16 v114, v180, s[36:39], 0 offen
	buffer_load_u16 v106, v181, s[36:39], 0 offen
	buffer_load_u16 v111, v182, s[36:39], 0 offen
	buffer_load_u16 v113, v183, s[36:39], 0 offen
	buffer_load_u16 v115, v115, s[36:39], 0 offen
	v_readlane_b32 s3, v185, 0
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s83, s3, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v75
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s38, s3, s1
	s_and_b32 s97, s3, s6
	s_and_b32 s96, s3, s7
	s_and_b32 s95, s3, s8
	s_and_b32 s74, s3, s9
	s_and_b32 s85, s3, s10
	s_and_b32 s93, s3, s11
	s_and_b32 s51, s3, s34
	s_and_b32 s94, s3, s31
	s_and_b32 s5, s3, s12
	s_and_b32 s89, s3, s13
	s_and_b32 s79, s3, s14
	s_and_b32 s66, s3, s15
	s_and_b32 s92, s3, s16
	s_and_b32 s70, s3, s17
	s_and_b32 s86, s3, s30
	s_and_b32 s78, s3, s33
	s_and_b32 s104, s3, s18
	s_and_b32 s75, s3, s19
	s_and_b32 s98, s3, s20
	s_and_b32 s84, s3, s21
	s_and_b32 s87, s3, s22
	s_and_b32 s81, s3, s23
	s_and_b32 s73, s3, s24
	s_and_b32 s69, s3, s25
	s_and_b32 s68, s3, s35
	s_and_b32 s4, s3, s29
	s_and_b32 s65, s3, s26
	s_and_b32 s64, s3, s27
	s_and_b32 s63, s3, s28
	s_and_b32 s52, s3, s0
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v103, v81
	v_cmp_le_i32_e64 s0, v119, v81
	v_cmp_le_i32_e64 s1, v122, v81
	v_cmp_le_i32_e64 s6, v123, v81
	v_cmp_le_i32_e64 s7, v125, v81
	v_cmp_le_i32_e64 s8, v127, v81
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s83
	s_and_b32 s0, s0, s38
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v131, v81
	v_cmp_le_i32_e64 s10, v133, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s97
	s_and_b32 s6, s6, s96
	s_and_not1_b32 s37, s83, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v166, v81
	v_cmp_le_i32_e64 s12, v165, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s95
	s_and_b32 s8, s8, s74
	s_or_b32 s83, s37, s36
	s_or_b32 s38, s38, s0
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s36, s96, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v132, v81
	v_cmp_le_i32_e64 s14, v137, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s85
	s_and_b32 s10, s10, s93
	s_or_b32 s97, s0, s1
	s_or_b32 s96, s36, s6
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s74, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v140, v81
	v_cmp_le_i32_e64 s16, v142, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s51
	s_and_b32 s12, s12, s94
	s_or_b32 s95, s0, s1
	s_or_b32 s74, s6, s7
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s93, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v147, v81
	v_cmp_le_i32_e64 s18, v151, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s5
	s_and_b32 s14, s14, s89
	s_or_b32 s85, s0, s1
	s_or_b32 s93, s6, s7
	s_and_not1_b32 s0, s51, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s7, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v163, v81
	v_cmp_le_i32_e64 s20, v164, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s79
	s_and_b32 s16, s16, s66
	s_or_b32 s51, s0, s1
	s_or_b32 s94, s6, s7
	s_and_not1_b32 s0, s5, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v143, v81
	v_cmp_le_i32_e64 s22, v145, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s92
	s_and_b32 s18, s18, s70
	s_or_b32 s5, s0, s1
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s6, s66, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v149, v81
	v_cmp_le_i32_e64 s24, v135, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s86
	s_and_b32 s20, s20, s78
	s_or_b32 s79, s0, s1
	s_or_b32 s66, s6, s7
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s70, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v139, v81
	v_cmp_le_i32_e64 s26, v141, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s104
	s_and_b32 s22, s22, s75
	s_or_b32 s92, s0, s1
	s_or_b32 s70, s6, s7
	s_and_not1_b32 s0, s86, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s78, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v144, v81
	v_cmp_le_i32_e64 s28, v148, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s98
	s_and_b32 s24, s24, s84
	s_or_b32 s86, s0, s1
	s_or_b32 s78, s6, s7
	s_and_not1_b32 s0, s104, exec_lo
	s_and_b32 s1, s21, exec_lo
	s_and_not1_b32 s6, s75, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v162, v81
	v_cmp_le_i32_e64 s30, v161, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s87
	s_and_b32 s26, s26, s81
	s_or_b32 s104, s0, s1
	s_or_b32 s75, s6, s7
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s23, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v150, v81
	v_cmp_le_i32_e64 s33, v152, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s73
	s_and_b32 s28, s28, s69
	s_or_b32 s98, s0, s1
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s81, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v156, v81
	v_cmp_le_i32_e64 s35, v104, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s68
	s_and_b32 s30, s30, s4
	s_or_b32 s87, s0, s1
	s_or_b32 s81, s6, s7
	s_and_not1_b32 s0, s73, exec_lo
	s_and_b32 s1, s27, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s65
	s_and_b32 s33, s33, s64
	s_or_b32 s73, s0, s1
	s_or_b32 s69, s6, s7
	s_and_not1_b32 s0, s68, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s4, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s63
	s_and_b32 s35, s35, s52
	s_or_b32 s68, s0, s1
	s_or_b32 s4, s6, s7
	s_and_not1_b32 s0, s65, exec_lo
	s_and_b32 s1, s31, exec_lo
	s_and_not1_b32 s6, s64, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s65, s0, s1
	s_or_b32 s64, s6, s7
	s_and_not1_b32 s0, s63, exec_lo
	s_and_b32 s1, s34, exec_lo
	s_and_not1_b32 s3, s52, exec_lo
	s_and_b32 s6, s35, exec_lo
	s_or_b32 s63, s0, s1
	s_or_b32 s52, s3, s6
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s99
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v166, v83
	v_cmp_ge_i32_e64 s3, v103, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s0, v103, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v122, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v122, v84
	v_writelane_b32 v185, s2, 26
	v_cmp_le_i32_e64 s2, v166, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v123, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v123, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v119, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v119, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v185, s2, 27
	v_cmp_ge_i32_e64 s2, v165, v83
	v_cmp_ge_i32_e64 s15, v131, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v131, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v133, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v133, v84
	v_writelane_b32 v185, s2, 28
	v_cmp_le_i32_e64 s2, v165, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v147, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v147, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v151, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v151, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v185, s2, 29
	v_cmp_ge_i32_e64 s2, v163, v83
	s_mov_b32 s13, s48
	v_cmp_ge_i32_e64 s48, v141, v83
	s_mov_b32 s36, vcc_hi
	s_mov_b32 vcc_hi, s56
	v_writelane_b32 v185, s2, 30
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v163, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v104, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s88, v141, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s3, s0
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v104, v84
	v_writelane_b32 v185, s2, 31
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v164, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s9, s10
	s_and_b32 s8, s7, s8
	s_and_b32 s1, s1, s6
	s_and_b32 s6, s8, s97
	v_writelane_b32 v184, s2, 0
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v164, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s10, s96
	s_and_b32 s10, s17, s18
	s_and_b32 s15, s15, s16
	s_and_b32 s16, s34, s35
	v_writelane_b32 v184, s2, 1
	s_and_b32 s17, s31, s33
	s_and_b32 s31, s48, s88
	s_mov_b32 s48, s13
	s_and_b32 s34, s56, s3
	v_writelane_b32 v184, s4, 2
	v_readlane_b32 s3, v185, 30
	v_readlane_b32 s13, v185, 31
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v125, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v125, v84
	v_writelane_b32 v184, s68, 3
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v127, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v127, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v161, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s72, v161, v84
	s_mov_b32 s56, vcc_hi
	s_mov_b32 vcc_hi, s36
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s36, s3, s13
	v_readlane_b32 s3, v184, 0
	v_readlane_b32 s13, v184, 1
	s_and_b32 s11, s11, s12
	s_and_b32 s12, s19, s14
	s_and_b32 s35, s37, s72
	v_readlane_b32 s19, v185, 29
	s_and_b32 s37, s3, s13
	v_readlane_b32 s13, v185, 28
	s_mov_b32 s20, s55
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s55, v156, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v156, v84
	s_mov_b32 s21, s86
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s83
	s_and_b32 s1, s1, s38
	s_mov_b32 s3, s21
	s_and_b32 s36, s36, s21
	s_and_b32 s21, s13, s19
	v_readlane_b32 s13, v185, 26
	v_readlane_b32 s19, v185, 27
	s_and_b32 s7, s55, s7
	s_mov_b32 s55, s20
	s_and_b32 s20, s21, s94
	s_and_b32 s21, s37, s78
	s_and_not1_b32 s37, s83, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v132, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v132, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v137, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v137, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s95
	s_and_b32 s12, s12, s74
	s_or_b32 s83, s37, s0
	s_or_b32 s38, s38, s1
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s6, s96, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v140, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v140, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v142, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v142, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s71, s15, s85
	s_and_b32 s10, s10, s93
	s_and_b32 s19, s13, s19
	s_or_b32 s97, s0, s1
	s_or_b32 s96, s6, s8
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s74, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_mov_b32 s22, s89
	s_and_b32 s14, s23, s24
	s_and_b32 s15, s25, s26
	s_and_b32 s19, s19, s51
	s_or_b32 s95, s0, s1
	s_or_b32 s74, s6, s8
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s71, exec_lo
	s_and_not1_b32 s6, s93, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_mov_b32 s99, s49
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s49, v144, v83
	s_mov_b32 s89, s60
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v144, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s5
	s_and_b32 s15, s15, s22
	s_and_b32 s18, s27, s28
	s_and_b32 s23, s29, s30
	s_or_b32 s85, s0, s1
	s_or_b32 s93, s6, s8
	s_and_not1_b32 s0, s51, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s8, s20, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v143, v83
	s_mov_b32 s68, s41
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v143, v84
	s_mov_b32 s39, s42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v145, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s90, v145, v84
	s_mov_b64 s[102:103], s[46:47]
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s79
	s_and_b32 s23, s23, s66
	s_or_b32 s51, s0, s1
	s_or_b32 s94, s6, s8
	s_and_not1_b32 s0, s5, exec_lo
	s_and_b32 s1, s14, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_mov_b64 s[100:101], s[44:45]
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v149, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v149, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v135, v83
	s_mov_b32 s2, s57
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v135, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s17, s92
	s_and_b32 s16, s16, s70
	s_and_b32 s29, s49, s60
	s_mov_b32 s60, s89
	s_or_b32 s5, s0, s1
	s_or_b32 s89, s6, s8
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s18, exec_lo
	s_and_not1_b32 s6, s66, exec_lo
	s_and_b32 s8, s23, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s47, v139, v83
	s_mov_b32 s86, s54
	v_cmp_ge_i32_e64 s54, v152, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v139, v84
	v_cmp_le_i32_e64 s9, v152, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s26, s40, s41
	s_and_b32 s27, s42, s90
	s_or_b32 s79, s0, s1
	s_or_b32 s66, s6, s8
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s70, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_mov_b32 s91, s50
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v148, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v148, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s24, s46, s57
	s_and_b32 s25, s44, s45
	s_and_b32 s26, s26, s104
	s_and_b32 s27, s27, s75
	s_or_b32 s92, s0, s1
	s_or_b32 s70, s6, s8
	s_and_not1_b32 s0, s3, exec_lo
	s_and_b32 s1, s36, exec_lo
	s_and_not1_b32 s6, s78, exec_lo
	s_and_b32 s8, s21, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s82, v162, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v162, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s25, s25, s98
	s_and_b32 s24, s24, s84
	s_and_b32 s30, s47, s4
	s_mov_b64 s[44:45], s[100:101]
	s_and_b32 s9, s54, s9
	s_mov_b32 s54, s86
	s_or_b32 s86, s0, s1
	s_or_b32 s78, s6, s8
	s_and_not1_b32 s0, s104, exec_lo
	s_and_b32 s1, s26, exec_lo
	s_and_not1_b32 s6, s75, exec_lo
	s_and_b32 s8, s27, exec_lo
	s_mov_b32 s80, s53
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v150, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s76, v150, v84
	s_mov_b64 s[46:47], s[102:103]
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s7, s7, s63
	s_mov_b32 s100, s63
	v_readlane_b32 s4, v184, 2
	v_readlane_b32 s63, v184, 3
	s_and_b32 s28, s50, vcc_lo
	s_and_b32 s30, s30, s87
	s_and_b32 s31, s31, s81
	s_or_b32 s104, s0, s1
	s_or_b32 s75, s6, s8
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s8, s24, exec_lo
	s_and_b32 s29, s29, s73
	s_and_b32 s28, s28, s69
	s_and_b32 s40, s82, s62
	s_or_b32 s98, s0, s1
	s_or_b32 s84, s6, s8
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s30, exec_lo
	s_and_not1_b32 s6, s81, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s33, s53, s76
	s_and_b32 s35, s35, s4
	s_and_b32 s62, s40, s63
	s_or_b32 s87, s0, s1
	s_or_b32 s81, s6, s8
	s_and_not1_b32 s0, s73, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_and_b32 s33, s33, s65
	s_and_b32 s9, s9, s64
	s_or_b32 s73, s0, s1
	s_or_b32 s69, s6, s8
	s_and_not1_b32 s0, s63, exec_lo
	s_and_b32 s1, s62, exec_lo
	s_and_not1_b32 s6, s4, exec_lo
	s_and_b32 s8, s35, exec_lo
	s_mov_b32 s41, s68
	s_and_b32 s34, s34, s52
	s_or_b32 s68, s0, s1
	s_or_b32 s4, s6, s8
	s_and_not1_b32 s0, s65, exec_lo
	s_and_b32 s1, s33, exec_lo
	s_and_not1_b32 s6, s64, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_mov_b32 s57, s2
	s_mov_b32 s49, s99
	v_readlane_b32 s2, v185, 22
	v_readlane_b32 s99, v185, 24
	v_readlane_b32 s40, v185, 23
	s_or_b32 s65, s0, s1
	s_or_b32 s64, s6, s8
	s_and_not1_b32 s0, s100, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s3, s52, exec_lo
	s_and_b32 s6, s34, exec_lo
	s_mov_b32 s42, s39
	s_mov_b32 s50, s91
	s_mov_b32 s53, s80
	s_or_b32 s63, s0, s1
	s_or_b32 s52, s3, s6
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v35, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	v_readlane_b32 s16, v185, 1
	v_readlane_b32 s24, v185, 6
	v_readlane_b32 s25, v185, 7
	v_readlane_b32 s26, v185, 5
	v_readlane_b32 s17, v185, 2
	v_readlane_b32 s18, v185, 3
	v_readlane_b32 s19, v185, 4
.LBB0_13:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v67
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s26, s25
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s42, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s24, s1
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v25 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v35
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp75:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp112:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp116:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_mov_b32 v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp130:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v64, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp134:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
.Ltmp140:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	v_and_b32_e32 v4, 0xe0, v65
	v_and_b32_e32 v1, 28, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v3
	s_waitcnt lgkmcnt(0)
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v3, 0, v4
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v50
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s17, s17, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp141:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 186
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 186
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12444
; TotalNumSgprs: 107
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 186
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 36
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
